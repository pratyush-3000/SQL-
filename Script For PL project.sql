/****************************************************************************************************************************
This project creates a database containing college type data. 
Developer: Pratyush Lahane
********************************************/

USE [PLProject]
GO

/****** Object:  Table [dbo].[TblStudent]    Script Date: 3/1/2020 1:29:45 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
/****************************************************************************************************************************
************************************************* create tables**************************************************************
*****************************************************************************************************************************/

CREATE TABLE [dbo].[TblStudent](
	[Sid] [int] IDENTITY(1000,1000) NOT NULL,
	[Sname] [nvarchar](50) NOT NULL,
	[Sex] [varchar](10) NOT NULL,
	[Age] [int] NOT NULL,
	[Year] [int] NULL,
	[GPA] [decimal](16,8) NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[TblDept](
	[Dname] [nvarchar](50)  NOT NULL,
	[Numphds] [int] NULL,
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Tblprof](
	[Pname] [varchar] (50) NOT NULL,
	[Dname] [nvarchar](50) NOT NULL,
) ON [PRIMARY] 
GO

CREATE TABLE [dbo].[TblCourse](
	[Cno] [int] NOT NULL,
	[Cname] [varchar](50) NOT NULL,
	[Dname] [varchar](50) NOT NULL,
) ON [PRIMARY] 
GO
CREATE TABLE [dbo].[TblMajor](
	[Dname] [varchar](50) NOT NULL,
	[Sid] [int] NOT NULL,
) ON [PRIMARY] 
GO 
CREATE TABLE [dbo].[TblSection](
	[Dname] [varchar](50) NOT NULL,
	[Cno] [int] NOT NULL,
	[Sectno] [int] NOT NULL,
	[Pname] [varchar](50) NOT NULL,
) ON [PRIMARY]
GO 
CREATE TABLE [dbo].[TblEnroll](
	[Sid] [int] NOT NULL,
	[Grade] [varchar](50) NOT NULL,
	[Dname] [varchar](50) NOT NULL,
	[Cno] [int] NOT NULL,
	[Sectno] [int] NOT NULL,
) ON [PRIMARY]
GO 









/****************************************************************************************************************************
************************************************* insert into tables**************************************************************
*****************************************************************************************************************************/


/************************************************* insert into tblStudent**************************************************************
*****************************************************************************************************************************/




INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Jacobs, T.','m',29,5 ,3.599999905)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Pierson, E.','m',32,5 ,3.5)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Zeene, Ben N.','m',21,5 ,3.900000095)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Sulfate, Barry M.','m',19,2 ,2.799999952)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Form, Clara O.','f',18,1 ,3.299999952)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Scott, Kim J.','m',20,1 ,3.799999952)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Sather, Roberto B.','m',22,4 ,2.200000048)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Stanley, Leotha T.','m',21,3 ,3.599999905)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Smith, Joyce A.','f',21,4 ,2)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Jones, David S.','m',19,2 ,3.5)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Paul, Mary W.','f',23,5 ,3.599999905)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Soong, V.','f',24,5 ,3.5)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Kellerman, S.','f',21,3 ,2.900000095)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Cheong, R.','m',25,4 ,3)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Borchart, Sandra L.','f',26,5 ,3.900000095)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Alsberg, David J.','m',25,5 ,3.5)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Thorton, James Q.','m',28,4 ,2.700000048)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Gooch','m',26,1 ,1.399999976)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Smith, L.','m',43,4 ,0.699999988)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Korpel, E.','f',19,3 ,3.5)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Surk, K.','m',23,2 ,2.5)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Emile, R.','m',18,1 ,2)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Bomber, C.','f',22,4 ,3.200000048)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Carter, Jimmy','m',56,5 ,3.5)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Kissinger, Henry','m',58,5 ,3.400000095)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Ford, Gerald','m',60,5 ,3.5)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Anderson, P.','f',18,1 ,3.200000048)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Austin, G.','m',25,5 ,3.5)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Hamilton, S.','m',21,3 ,2.799999952)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Baker, C.','f',18,1 ,3.5)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Andrews, R.','m',19,2 ,2.799999952)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Liu, Huihusan','m',29,5 ,3.900000095)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Chao, Tsechih','f',23,5 ,3.599999905)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Kasten, Norman L.','m',23,2 ,2.5)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Mathews, John W.','m',29,5 ,3.599999905)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Burroughs, Susan S.','f',18,1 ,3)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Dunbar, D.','m',30,5 ,3.400000095)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Auen, B.','m',21,3 ,2.700000048)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Shoemaker, A.','f',22,4 ,3.5)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Rosemeyer, S.','f',21,3 ,2.900000095)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Fisher, C.','f',22,4 ,3.5)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Trude, T.','m',19,2 ,2.900000095)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Ksar, J.','m',20,3 ,3.400000095)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Moeri, S.','f',20,4 ,3.200000048)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('June, Granson','f',18,1 ,3.099999905)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Micheal, Zadicki T.','m',22,2 ,2.700000048)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Roger, Blotter N.','m',21,3 ,1.899999976)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Natividad, A.','f',25,5 ,4)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Villa-lobos, M.','m',47,5 ,3.700000048)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Moomchi, B.','m',32,5 ,3.5)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Jetplane, Leaving O.','m',30,1 ,0)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Fy, Clara I.','f',18,2 ,2)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Atny, Mary H.','f',26,5 ,3.799999952)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Maximillian','m',98,5 ,3)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Glitch, R.','m',19,1 ,2.799999952)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Starry, J.','f',22,4 ,3.299999952)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Hiemerschmitz, A.','f',19,1 ,2.700000048)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Marshmallton','m',20,3 ,3)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Ziebart, F.','m',22,4 ,1.799999952)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Calcmity, J.','f',23,3 ,2.599999905)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Kennedy, Ed','m',55,3 ,2.299999952)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Moses, A.','m',18,1 ,3.200000048)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Kool, Joseph F.','m',35,5 ,3.700000048)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Fred, Edwin B.','m',80,5 ,4)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Ripper, Jack T.','m',18,1 ,0.5)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Altenhaus, Stuart','m',21,4 ,2.799999952)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Altenhaus, Gloria','f',22,5 ,4)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Crist, J.','m',23,4 ,3)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Heilskov, G.','m',23,4 ,2.5)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Caucutt, B.','m',24,5 ,3)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Mark, B.','m',24,4 ,3.599999905)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Barnes, J.','m',45,5 ,2.299999952)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Quarnty, G.','f',20,2 ,4)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Andrus, J.','f',21,3 ,3.700000048)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Jones, A.','f',23,5 ,3.200000048)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Zorhoff, C.','m',20,3 ,3)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Paull, Thomas H.','m',23,4 ,2.599999905)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Cool, J.','m',18,2 ,2.599999905)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Evert, Chris','f',21,4 ,3.900000095)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Connors, Jimmy','m',25,1 ,0.200000003)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Smith, Ike Z.','m',33,1 ,1.100000024)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('News, Nightly','m',15,1 ,1.899999976)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Jones, Ivan L.','m',55,5 ,3.5)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Smith, R.','m',19,3 ,2.700000048)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Mayer, N.','f',21,5 ,3.5)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Gonring, J.','m',21,4 ,3.700000048)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Mueller, D.','m',20,3 ,3.299999952)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Bates, M.','m',22,4 ,3.299999952)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Longlastname, A.','f',99,5 ,4)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Zappa, F.','m',16,4 ,4)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Ghandi, I.','f',78,1 ,3.5)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Kirk, J.','m',34,5 ,2.200000048)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Andermanthenol, K.','m',26,5 ,3.700000048)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Uoiea, Z.','f',19,2 ,3.299999952)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Grzlbltz, Q.','m',43,5 ,2.5)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Birch, M.','f',23,5 ,3.5)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Morgan, D.','m',18,1 ,3.5)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Taylor, R.','m',20,3 ,2.799999952)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Jones, J.','f',21,1 ,1.100000024)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Gringo, C.','m',25,5 ,2.900000095)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Davis, Scott P.','m',19,3 ,3.700000048)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Bates, Michael L.','m',22,4 ,3.400000095)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Kaisler, Janet M.','f',21,4 ,3.5)
INSERT INTO dbo.TblStudent (Sname ,Sex,Age,Year,GPA) VALUES ('Baskett, Wayse T.','m',23,3 ,2.099999905)


/************************************************* insert into tblCourse**************************************************************
*****************************************************************************************************************************/

INSERT INTO TblCourse (Cno,Cname ,Dname) VALUES (302 ,'Intro to Programming' ,'Computer Sciences')
INSERT INTO TblCourse (Cno,Cname ,Dname) VALUES (310 ,'Thermodynamics' ,'Chemical Engineering')
INSERT INTO TblCourse (Cno,Cname ,Dname) VALUES (310 ,'Intro to Garbage' ,'Sanitary Engineering')
INSERT INTO TblCourse (Cno,Cname ,Dname) VALUES (365 ,'City Planning' ,'Civil Engineering')
INSERT INTO TblCourse (Cno,Cname ,Dname) VALUES (375 ,'Highway Engineering' ,'Civil Engineering')
INSERT INTO TblCourse (Cno,Cname ,Dname) VALUES (461 ,'College Geometry 1' ,'Mathematics')
INSERT INTO TblCourse (Cno,Cname ,Dname) VALUES (462 ,'College Geometry 2' ,'Mathematics')
INSERT INTO TblCourse (Cno,Cname ,Dname) VALUES (467 ,'Intro to Data Structures' ,'Computer Sciences')
INSERT INTO TblCourse (Cno,Cname ,Dname) VALUES (514 ,'Manpower Utilization' ,'Industrial Engineering')
INSERT INTO TblCourse (Cno,Cname ,Dname) VALUES (561 ,'Advanced City Planning' ,'Civil Engineering')
INSERT INTO TblCourse (Cno,Cname ,Dname) VALUES (561 ,'Advanced Garbage Collection' ,'Sanitary Engineering')
INSERT INTO TblCourse (Cno,Cname ,Dname) VALUES (701 ,'Compiler Construction' ,'Computer Sciences')
INSERT INTO TblCourse (Cno,Cname ,Dname) VALUES (726 ,'Nonlinear Programming' ,'Computer Sciences')

/************************************************* insert into tblDept**************************************************************
*****************************************************************************************************************************/

INSERT INTO TblDept(Dname,Numphds) VALUES ('Computer Sciences',47)
INSERT INTO TblDept(Dname,Numphds) VALUES ('Chemical Engineering',32)
INSERT INTO TblDept(Dname,Numphds) VALUES ('Civil Engineering',88)
INSERT INTO TblDept(Dname,Numphds) VALUES ('Industrial Engineering',41)
INSERT INTO TblDept(Dname,Numphds) VALUES ('Mathematics',129)
INSERT INTO TblDept(Dname,Numphds) VALUES ('Sanitary Engineering',3)



/************************************************* insert into tblEnroll**************************************************************
*****************************************************************************************************************************/

INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (1000, 3 ,'Chemical Engineering' ,310 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (2000, 3 ,'Computer Sciences' ,302 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (3000, 3.5 ,'Civil Engineering' ,375 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (4000, 4 ,'Mathematics' ,461 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (5000, 3 ,'Industrial Engineering' ,514 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (6000, 3.5 ,'Computer Sciences' ,302 ,2)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (7000, 4 ,'Computer Sciences' ,302 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (8000, 4 ,'Computer Sciences' ,302 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (9000, 3 ,'Civil Engineering' ,375 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (10000, 2 ,'Computer Sciences' ,302 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (11000, 3 ,'Computer Sciences' ,302 ,2)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (12000, 2.5 ,'Computer Sciences' ,302 ,2)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (13000, 2.5 ,'Computer Sciences' ,302 ,2)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (14000, 2.5 ,'Mathematics' ,462 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (15000, 3 ,'Chemical Engineering' ,310 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (16000, 3 ,'Computer Sciences' ,467 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (17000, 3 ,'Computer Sciences' ,701 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (18000, 3 ,'Mathematics' ,461 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (19000, 2 ,'Civil Engineering' ,375 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (20000, 3.5 ,'Mathematics' ,461 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (21000, 3.5 ,'Mathematics' ,461 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (22000, 2.5 ,'Computer Sciences' ,302 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (23000, 3 ,'Computer Sciences' ,467 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (24000, 3.5 ,'Industrial Engineering' ,514 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (25000, 3 ,'Computer Sciences' ,302 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (26000, 3 ,'Computer Sciences' ,467 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (27000, 4 ,'Civil Engineering' ,561 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (28000, 4 ,'Computer Sciences' ,302 ,2)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (29000, 3.5 ,'Computer Sciences' ,302 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (30000, 3.5 ,'Mathematics' ,462 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (31000, 2.5 ,'Industrial Engineering' ,514 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (32000, 3 ,'Mathematics' ,461 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (33000, 3 ,'Civil Engineering' ,365 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (34000, 3 ,'Civil Engineering' ,375 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (35000, 3 ,'Civil Engineering' ,561 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (36000, 4 ,'Computer Sciences' ,467 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (37000, 3.5 ,'Computer Sciences' ,302 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (38000, 2 ,'Civil Engineering' ,561 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (39000, 2 ,'Civil Engineering' ,365 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (40000, 3 ,'Computer Sciences' ,726 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (41000, 1 ,'Civil Engineering' ,561 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (42000, 3 ,'Mathematics' ,461 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (43000, 3 ,'Civil Engineering' ,375 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (44000, 3 ,'Mathematics' ,462 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (45000, 3 ,'Computer Sciences' ,302 ,2)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (46000, 3 ,'Computer Sciences' ,302 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (47000, 3.5 ,'Mathematics' ,462 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (48000, 3 ,'Computer Sciences' ,701 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (49000, 3.5 ,'Computer Sciences' ,701 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (50000, 2.5 ,'Computer Sciences' ,467 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (51000, 4 ,'Computer Sciences' ,726 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (52000, 3 ,'Chemical Engineering' ,310 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (53000, 4 ,'Computer Sciences' ,726 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (54000, 0 ,'Civil Engineering' ,561 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (55000, 1 ,'Civil Engineering' ,365 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (56000, 1.5 ,'Civil Engineering' ,561 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (57000, 3.5 ,'Chemical Engineering' ,310 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (58000, 3.5 ,'Industrial Engineering' ,514 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (59000, 4 ,'Industrial Engineering' ,514 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (60000, 3 ,'Computer Sciences' ,726 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (61000, 1 ,'Computer Sciences' ,302 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (62000, 4 ,'Computer Sciences' ,467 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (63000, 4 ,'Mathematics' ,462 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (64000, 3 ,'Civil Engineering' ,375 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (65000, 2.5 ,'Mathematics' ,461 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (66000, 2.5 ,'Chemical Engineering' ,310 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (67000, 3.5 ,'Computer Sciences' ,467 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (68000, 2 ,'Industrial Engineering' ,514 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (69000, 3.5 ,'Mathematics' ,462 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (70000, 2.5 ,'Civil Engineering' ,561 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (71000, 2 ,'Computer Sciences' ,726 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (72000, 3.5 ,'Civil Engineering' ,561 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (73000, 2.5 ,'Computer Sciences' ,726 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (74000, 2.5 ,'Computer Sciences' ,701 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (75000, 3.5 ,'Computer Sciences' ,726 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (76000, 4 ,'Civil Engineering' ,561 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (77000, 1.5 ,'Civil Engineering' ,365 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (78000, 4 ,'Civil Engineering' ,375 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (79000, 3.5 ,'Computer Sciences' ,467 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (80000, 4 ,'Computer Sciences' ,701 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (81000, 3.5 ,'Computer Sciences' ,726 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (82000, 2 ,'Computer Sciences' ,467 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (83000, 3.5 ,'Computer Sciences' ,302 ,2)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (84000, 3.5 ,'Civil Engineering' ,561 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (85000, 2.5 ,'Computer Sciences' ,701 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (86000, 3.5 ,'Computer Sciences' ,726 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (87000, 3 ,'Civil Engineering' ,375 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (88000, 2.5 ,'Civil Engineering' ,365 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (89000, 3 ,'Computer Sciences' ,726 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (90000, 3.5 ,'Civil Engineering' ,365 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (91000, 2 ,'Computer Sciences' ,701 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (92000, 3 ,'Industrial Engineering' ,514 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (93000, 4 ,'Civil Engineering' ,365 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (94000, 4 ,'Computer Sciences' ,726 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (95000, 2.5 ,'Civil Engineering' ,561 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (96000, 3.5 ,'Computer Sciences' ,726 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (97000, 3 ,'Computer Sciences' ,726 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (98000, 3 ,'Computer Sciences' ,726 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (99000, 3.5 ,'Civil Engineering' ,375 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (100000, 2.5 ,'Computer Sciences' ,467 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (101000, 3 ,'Computer Sciences' ,701 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (102000, 4 ,'Computer Sciences' ,701 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (103000, 2 ,'Chemical Engineering' ,310 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (104000, 3.5 ,'Computer Sciences' ,701 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (105000, 3.5 ,'Computer Sciences' ,726 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (106000, 3.5 ,'Mathematics' ,462 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (107000, 4 ,'Mathematics' ,462 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (108000, 4 ,'Computer Sciences' ,726 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (109000, 4 ,'Chemical Engineering' ,310 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (110000, 2 ,'Mathematics' ,461 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (111000, 3 ,'Civil Engineering' ,561 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (112000, 4 ,'Civil Engineering' ,365 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (113000, 3 ,'Industrial Engineering' ,514 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (114000, 4 ,'Industrial Engineering' ,514 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (115000, 3.5 ,'Computer Sciences' ,701 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (116000, 2 ,'Computer Sciences' ,726 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (117000, 4 ,'Mathematics' ,462 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (118000, 3.5 ,'Mathematics' ,461 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (119000, 4 ,'Computer Sciences' ,701 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (120000, 2.599999905 ,'Sanitary Engineering' ,561 ,1)
INSERT INTO TblEnroll(Sid, Grade,Dname,Cno,Sectno) VALUES (121000, 2.799999952 ,'Computer Sciences' ,302 ,2)


/************************************************* insert into TblMajor**************************************************************
*****************************************************************************************************************************/

INSERT INTO TblMajor (Dname ,Sid) VALUES ('Computer Sciences',1000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Computer Sciences',2000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Computer Sciences',3000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Computer Sciences',4000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Computer Sciences',5000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Computer Sciences',6000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Computer Sciences',7000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Computer Sciences',8000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Computer Sciences',9000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Computer Sciences',10000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Computer Sciences',11000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Computer Sciences',12000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Computer Sciences',13000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Computer Sciences',14000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Computer Sciences',15000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Computer Sciences',16000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Computer Sciences',17000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Computer Sciences',18000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Computer Sciences',19000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Computer Sciences',20000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Computer Sciences',21000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Computer Sciences',22000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Computer Sciences',23000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Computer Sciences',24000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Chemical Engineering',25000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Chemical Engineering',26000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Chemical Engineering',27000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Chemical Engineering',28000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Chemical Engineering',29000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Chemical Engineering',30000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Chemical Engineering',31000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Chemical Engineering',32000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Chemical Engineering',33000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Chemical Engineering',34000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Chemical Engineering',35000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Civil Engineering',36000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Civil Engineering',37000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Civil Engineering',38000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Civil Engineering',39000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Civil Engineering',40000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Civil Engineering',41000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Civil Engineering',42000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Civil Engineering',43000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Civil Engineering',44000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Civil Engineering',45000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Civil Engineering',46000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Civil Engineering',47000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Civil Engineering',48000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Civil Engineering',49000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Civil Engineering',50000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Civil Engineering',51000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Civil Engineering',52000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Civil Engineering',53000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Civil Engineering',54000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Civil Engineering',55000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Civil Engineering',56000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Civil Engineering',57000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Civil Engineering',58000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Civil Engineering',59000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Civil Engineering',60000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Civil Engineering',61000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Civil Engineering',62000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Civil Engineering',63000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Industrial Engineering',64000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Industrial Engineering',65000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Industrial Engineering',66000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Industrial Engineering',67000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Industrial Engineering',68000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Industrial Engineering',69000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Industrial Engineering',70000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Industrial Engineering',71000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Industrial Engineering',72000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Industrial Engineering',73000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Industrial Engineering',74000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Industrial Engineering',75000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Industrial Engineering',76000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Industrial Engineering',77000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Industrial Engineering',78000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Industrial Engineering',79000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Industrial Engineering',80000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Industrial Engineering',81000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Industrial Engineering',82000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Industrial Engineering',83000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Mathematics',84000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Mathematics',85000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Mathematics',86000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Mathematics',87000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Mathematics',88000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Mathematics',89000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Mathematics',90000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Mathematics',91000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Mathematics',92000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Mathematics',93000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Mathematics',94000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Mathematics',95000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Mathematics',96000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Mathematics',97000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Mathematics',98000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Mathematics',99000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Mathematics',100000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Mathematics',101000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Mathematics',102000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Mathematics',103000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Sanitary Engineering',104000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Mathematics',1000)
INSERT INTO TblMajor (Dname ,Sid) VALUES ('Mathematics',2000)






/************************************************* insert into TblProf**************************************************************
*****************************************************************************************************************************/

INSERT INTO TblProf (Pname ,Dname) VALUES ('Jones, J.','Computer Sciences')
INSERT INTO TblProf (Pname ,Dname) VALUES ('Smith, S.','Industrial Engineering')
INSERT INTO TblProf (Pname ,Dname) VALUES ('Brown, S.','Civil Engineering')
INSERT INTO TblProf (Pname ,Dname) VALUES ('Brian, C.','Computer Sciences')
INSERT INTO TblProf (Pname ,Dname) VALUES ('Edison, L.','Chemical Engineering')
INSERT INTO TblProf (Pname ,Dname) VALUES ('Bucket, T.','Sanitary Engineering')
INSERT INTO TblProf (Pname ,Dname) VALUES ('Robinson, T.','Mathematics')
INSERT INTO TblProf (Pname ,Dname) VALUES ('Clark, E.','Civil Engineering')
INSERT INTO TblProf (Pname ,Dname) VALUES ('Walter, A.','Industrial Engineering')
INSERT INTO TblProf (Pname ,Dname) VALUES ('Randolph, B.','Civil Engineering')





/************************************************* insert into TblSection**************************************************************
*****************************************************************************************************************************/
INSERT INTO TblSection (Dname ,Cno,Sectno,Pname) VALUES ('Chemical Engineering',310,1,'Edison, L.')
INSERT INTO TblSection (Dname ,Cno,Sectno,Pname) VALUES ('Civil Engineering',365,1,'Randolph, B.')
INSERT INTO TblSection (Dname ,Cno,Sectno,Pname) VALUES ('Civil Engineering',375,1,'Brown, S.')
INSERT INTO TblSection (Dname ,Cno,Sectno,Pname) VALUES ('Civil Engineering',561,1,'Randolph, B.')
INSERT INTO TblSection (Dname ,Cno,Sectno,Pname) VALUES ('Computer Sciences',302,1,'Jones, J.')
INSERT INTO TblSection (Dname ,Cno,Sectno,Pname) VALUES ('Computer Sciences',302,2,'Smith, S.')
INSERT INTO TblSection (Dname ,Cno,Sectno,Pname) VALUES ('Computer Sciences',467,1,'Jones, J.')
INSERT INTO TblSection (Dname ,Cno,Sectno,Pname) VALUES ('Computer Sciences',701,1,'Clark, E.')
INSERT INTO TblSection (Dname ,Cno,Sectno,Pname) VALUES ('Computer Sciences',726,1,'Brian, C.')
INSERT INTO TblSection (Dname ,Cno,Sectno,Pname) VALUES ('Industrial Engineering',514,1,'Walter, A.')
INSERT INTO TblSection (Dname ,Cno,Sectno,Pname) VALUES ('Mathematics',461,1,'Robinson, T.')
INSERT INTO TblSection (Dname ,Cno,Sectno,Pname) VALUES ('Mathematics',462,1,'Robinson, T.')
INSERT INTO TblSection (Dname ,Cno,Sectno,Pname) VALUES ('Sanitary Engineering',561,1,'Bucket, T.')

GO



