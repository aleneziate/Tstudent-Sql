create database Final

select *
from Tstudents



update dbo.Tstudents
set email='exm@gmail.com'

Delete from course
Where Tstudents=1 and CourseID = 1

Alter Table dbo.Tstudents
Add  Gender nvarchar(50)
go
update dbo.Tstudents set Gender = 'M'

select * from dbo.Tstudents where Name = 'M%'

select UPPER
(Name)
from dbo.Tstudents

select lower 
(CourseName)
from course


SELECT dbo.Tstudents name, COUNT (dbo.course.CourseID) AS CourseCount
FROM dbo.course
INNER JOIN dbo.Tstudents ON  dbo.course. StudentID = dbo.Tstudents.id
GROUP BY dbo.Tstudents. id, dbo.Tstudents. name;

select *
from dbo.Tstudents
Where studentID= (select ID from dbo.Tstudents where name = 'ali' );




 Insert into dbo.Tstudent (Name, Age, Gender )
 values ('osama', 22 ,'M')


select studentID Name Age Gender 
From dbo.Tstudents
order by Age ASC
limit 1 

select dbo.course 
From CourseName  
order by Name Asc 

create proc dbo.sp_DisplayStudentsid
@StudentID INT
AS
SELECT dbo.Tstudents name, dbo.Course. CourseName
FROM dbo.Course INNER JOIN
Coded. Student ON Coded. Courses. StudentID = dbo.Tstudents. id
WHERE students.id= @StudentID
EXEC Coded. sp_DisplayStudentsid @StudentID=3




--bonus
CREATE TABLE Coded. Enrollment
EnrollmentID INT PRIMARY KEY IDENTITY (1,1) NOT NULL, StudentID INT NOT NULL, CourseID INT NOT NULL,
FOREIGN KEY (StudentID) REFERENCES Coded. Student (id),
FOREIGN KEY (CourseID) REFERENCES Coded. Courses (dbo.CourseID)
)

