--1. Print the names of professors who work in departments that have fewer than 50 PhD students. 

SELECT pf.Pname as NameOfprofessor, dt.Numphds as [Number Of PHD]
FROM tblprof pf
JOIN TblDept dt on
 pf.Dname = dt.Dname
 WHERE dt.Numphds < 50
 --------------------------------------------------------------------------------
 --2.Print the name of the students with the lowest Gpa. 
 SELECT S1.Sname as StudentName, S1.GPA as GPA
 FROM TblStudent S1
 WHERE S1.GPA = (
					 SELECT MIN(s.gpa)
					 FROM TblStudent s
					)
 -------------------------------------------------------------------------------
 --3.For each Computer Science class, print the class number, section number, and the average gpa of the students enrolled in the class.
 SELECT AVG(GPA), M.Dname as DepartmentName, se.Cno as ClassName, se.Sectno as SectionName 
 FROM TblMajor M 
 join TblStudent s
  on m.Sid = s.Sid
  JOIN TblSection se
   on m.dname = se.dname
   WHERE m.dname = 'Computer Sciences'
   GROUP BY  m.dname, se.Cno, se.Sectno 
 
 ---------------------------------------------------------------------------
 --4. Print the names and section numbers of all classes with more than six students enrolled in them. 
 Select se.dname as ClassName,se.Cno as ClassNumber, se.Sectno as SectionNumber
 From TblSection se
 WHERE se.Cno in(
				 SELECT  e.Cno 
					FROM TblEnroll e
					GROUP BY  e.Cno
					HAVING count(e.cno)> 6
				)
----------------------------------------------------------------------------------
--5. Print the names and sids of the students enrolled in the most classes.
SELECT MAX(mycount) counts, s.sname,S.sid
FROM (
           SELECT E.SID, COUNT(CNO) mycount 
		   FROM TblEnroll e		   
		    Group by e.sid
	 ) E
			JOIN TblStudent s on e.sid = s.sid
			Group by S.Sname ,S.Sid
---------------------------------------------------------------------------------------
--6. Print the names of students that have one or more majors who are between 18 and 20 years old. 
SELECT s.sname,s.age 
FROM TblStudent s
JOIN
(		SELECT count(*) as s_count, m.sid sid
		FROM TblMajor m 
		GROUP by m.sid
		HAVING count(*) >= 1
) Sub  on sub.sid = s.sid
where s.age between 18 and 20 

--------------------------------------------------------------------------------------------
--7. Print the names and majors of students who are taking one of the College Geomerty courses. 
SELECT s.sname, d.dname, c.cname 
FROM TblCourse c
JOIN TblDept d on d.dname = c.dname
Join TblEnroll e on e.Cno = c.cno
JOIN TblStudent s on s.sid = e.Sid
WHERE c.Cname like '%Geometry%'
----------------------------------------------------------------------------------------------
--8. For those departments that have no major taking a College Geomerty course 
--print the department name and the number of PHD students in the department. 
SELECT  d.dname as DepartmentName, d.Numphds as NumberOfPHDS
FROM TblDept d WHERE d.dname NOT IN 
							( SELECT  c.dname
							 FROM TblCourse c 
							 WHERE c.Cname like '%Geometry%')
-------------------------------------------------------------------------------
--9. Print the names of the students who are taking both Computer Sciences course and a Mathematics course.
SELECT s.sname, d.dname, c.cname 
FROM TblCourse c
JOIN TblDept d on d.dname = c.dname
Join TblEnroll e on e.Cno = c.cno
JOIN TblStudent s on s.sid = e.Sid
WHERE c.dname like '%Geometry%' AND c.dname like '%Computer%'

--------------------------------------------------------------------------------
--10. Print the age difference between the oldest and the youngest Computer Sciences Major.
SELECT c.dname,(MAX(s.age)- MIN(s.age)) as difference
FROM TblCourse c
Join TblEnroll e on e.Cno = c.cno
JOIN TblStudent s on s.sid = e.Sid
WHERE c.dname like'%Computer%'
GROUP BY  c.dname

---------------------------------------------------------------------------------------
--11. For each department that has one or more majors with a GPA under 1.0,
--print the name of the department and the average GPA of its majors. 
SELECT AVG(CAST( e.grade as decimal)) as AverageGPA, e.dname
FROM TblEnroll e 
GROUP BY e.dname 
HAVING  e.Dname in (
					SELECT d.Dname
					FROM TblDept d 
					JOIN TblEnroll e on e.Dname = d.dname
					WHERE e.Grade < 1.0
					)
---------------------------------------------------------------------------------------------
--12. Print the ids, names and GPAs of the students who are currently
--taking all the Civil Engineering courses.J
SELECT s.sid, s.Sname,s.GPA
FROM TblCourse c
Join TblEnroll e on e.Cno = c.cno
JOIN TblStudent s on s.sid = e.Sid

WHERE c.dname like'%Civil%'
