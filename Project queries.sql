Select * FROM StudentInfo


--All for STUDENT INFO
Alter table StudentInfo Alter column First_name char(50) NOT NULL
Alter table StudentInfo Alter column Last_name char(50) NOT NULL
Alter table StudentInfo Alter column SHU_ID nvarchar(50) NOT NULL 
Alter table StudentInfo Alter column Department char(50) NOT NULL
Alter table StudentInfo Alter column Age int NOT NULL
Alter table StudentInfo Alter column Gender char(50) NOT NULL
Alter table StudentInfo Alter column Email_Address nvarchar(50) NULL
Alter table StudentInfo Alter column Residential_District nvarchar(50) NOT NULL
Alter table StudentInfo Alter column Contact_number nvarchar(11) NOT NULL

Alter table StudentInfo with nocheck
Add Constraint email_Check CHECK(Email_Address like '%_@_%._%')

Alter table StudentInfo with nocheck
Add Constraint number_check CHECK (Contact_Number like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]')

/Alter table StudentInfo
DROP Constraint  number_check 



--All for SKill
Alter table Skills Alter column Skill_ID int Not Null
Alter table Skills Alter column Skills char(50) Not Null

--All for StudentSkills
Alter table StudentSkill Alter column SHU_ID nvarchar(50) Not Null
Alter table StudentSkill Alter column Skill_ID int Not Null

--All for Programming
Alter table Coding Alter column SHU_ID nvarchar(50) Not Null
Alter table Coding Alter column Skill_ID int Not Null
Alter table Coding Alter column Coding_Level char(50) Not Null

--All for Vlogging
Alter table Vlogging Alter column SHU_ID nvarchar(50) Not Null
Alter table Vlogging Alter column Skills char(50) Not Null
Alter table Vlogging Alter column Experience int Null
Alter table Vlogging Alter column Skill_ID int Not Null
Alter table Vlogging Alter column Audience_Size nvarchar(50) Null
Alter table Vlogging Alter column Types nvarchar(50) Not Null

--All for Debating
Alter table Debating Alter column SHU_ID nvarchar(50) Not Null
Alter table Debating Alter column Skills char(50) Not Null
Alter table Debating Alter column Skill_ID int Not Null
Alter table Debating Alter column Experience int Null
Alter table Debating Alter column Language char(50) Not Null

--All for Art
Alter table Art Alter column SHU_ID nvarchar(50) Not Null
Alter table Art Alter column Skills char(50) Not Null
Alter table Art Alter column Skill_ID int Not Null
Alter table Art Alter column Experience int Null
Alter table Art Alter column Art_Major char(50) not null
Alter table Art Alter column Type_of_sketching nvarchar(50) null
Alter table Art Alter column Type_of_Painting nvarchar(50) null

--All for Poetry
Alter table Poetry Alter column SHU_ID nvarchar(50) Not Null
Alter table Poetry Alter column Skills char(50) Not Null
Alter table Poetry Alter column Skill_ID int Not Null
Alter table Poetry Alter column Language char(50) Not Null
Alter table Poetry Alter column Type_of_poetry nvarchar(50) Not Null

--All for Singing
Alter table Singing Alter column SHU_ID nvarchar(50) Not Null
Alter table Singing Alter column Skills char(50) Not Null
Alter table Singing Alter column Skill_ID int Not Null
Alter table Singing Alter column Language char(50) Not Null
Alter table Singing Alter column Can_you_play_an_instrument_If_yes nvarchar(50) Null

--All for contentwriting
Alter table ContentWriting Alter column SHU_ID nvarchar(50) Not Null
Alter table ContentWriting Alter column Skills char(50) Not Null
Alter table ContentWriting Alter column Skill_ID int Not Null
Alter table ContentWriting Alter column Experience int Null
Alter table ContentWriting Alter column Domain nvarchar(50) Not null

--All for video editing
Alter table VideoEditing Alter column SHU_ID nvarchar(50) Not Null
Alter table VideoEditing Alter column Skills char(50) Not Null
Alter table VideoEditing Alter column Skill_ID int Not Null
Alter table VideoEditing Alter column Experience int Null
Alter table VideoEditing Alter column Preferred_Application nvarchar(50) Not Null
Alter table VideoEditing Alter column Specialty nvarchar(50) Not Null

--All for graphic designing
Alter table GraphicDesigning Alter column SHU_ID nvarchar(50) Not Null
Alter table GraphicDesigning Alter column Skills char(50) Not Null
Alter table GraphicDesigning Alter column Skill_ID int Not Null
Alter table GraphicDesigning Alter column Experience int Null
Alter table GraphicDesigning Alter column Preferred_Application nvarchar(50) Not Null
Alter table GraphicDesigning Alter column Domain nvarchar(50) Not null

--All for photography
Alter table Photography Alter column SHU_ID nvarchar(50) Not Null
Alter table Photography Alter column Skills char(50) Not Null
Alter table Photography Alter column Skill_ID int Not Null
Alter table Photography Alter column Experience int Null
Alter table Photography Alter column Device nvarchar(50) not Null
Alter table Photography Alter column Domain nvarchar(50) not Null

--Removing Constraints
ALTER TABLE Art
DROP Constraint Fk_Art

ALTER TABLE Coding
DROP Constraint Fk_Code

ALTER TABLE ContentWriting
DROP Constraint Fk_ContentWriting

ALTER TABLE Debating
DROP Constraint Fk_Debating

ALTER TABLE GraphicDesigning
DROP Constraint Fk_GraphicDesigning

ALTER TABLE Photography
DROP Constraint Fk_Photography

ALTER TABLE Poetry
DROP Constraint Fk_Poetry

ALTER TABLE Singing
DROP Constraint Fk_Singing

ALTER TABLE Vlogging
DROP Constraint Fk_Vlogging

ALTER TABLE VideoEditing
DROP Constraint Fk_VideoEditing

--Applying Unique
ALTER TABLE Art
ADD CONSTRAINT Fk_ART UNIQUE (SHU_ID);

Alter table Coding
Add Constraint Fk_Code UNIQUE (SHU_ID)

Alter table ContentWriting
Add Constraint Fk_ContentWriting UNIQUE (SHU_ID)

Alter table Debating
Add Constraint Fk_Debating UNIQUE (SHU_ID)

Alter table GraphicDesigning
Add Constraint Fk_GraphicDesigning UNIQUE (SHU_ID)

Alter table Photography
Add Constraint Fk_Photography UNIQUE (SHU_ID)

Alter table Poetry
Add Constraint Fk_Poetry UNIQUE (SHU_ID)


Alter table Singing
Add Constraint Fk_Singing UNIQUE (SHU_ID)


Alter table Vlogging
Add Constraint Fk_Vlogging UNIQUE (SHU_ID)


Alter table VideoEditing
Add Constraint Fk_VideoEditing UNIQUE (SHU_ID)

















--foreign key
/*Alter table Art
Add Constraint Fk_Art
FOREIGN KEY (SHU_ID) References Skills (SHU_ID)

Alter table Coding
Add Constraint Fk_Code
FOREIGN KEY (SHU_ID) References Skills (SHU_ID)

Alter table ContentWriting
Add Constraint Fk_ContentWriting
FOREIGN KEY (SHU_ID) References Skills (SHU_ID)

Alter table Debating
Add Constraint Fk_Debating
FOREIGN KEY (SHU_ID) References Skills (SHU_ID)

Alter table GraphicDesigning
Add Constraint Fk_GraphicDesigning
FOREIGN KEY (SHU_ID) References Skills (SHU_ID)

Alter table Photography
Add Constraint Fk_Photography
FOREIGN KEY (SHU_ID) References Skills (SHU_ID)

Alter table Poetry
Add Constraint Fk_Poetry


Alter table Singing
Add Constraint Fk_Singing


Alter table Vlogging
Add Constraint Fk_Vlogging


Alter table VideoEditing
Add Constraint Fk_VideoEditing

*/
--Foreign key 
--select * from StudentSkill A where SHU_ID IS NULL or not exists (select 1 from StudentInfo S where S.SHU_ID = A.SHU_ID) -- you very good






--PROCEDURES

--Students that have Photography talent
select SELECT StudentSkill.SHU_ID, StudentInfo.First_Name, StudentInfo.Last_Name, StudentSkill.Skill_ID, StudentInfo.Department
FROM StudentSkill
INNER JOIN StudentInfo ON StudentSkill.SHU_ID=StudentInfo.SHU_ID where Skill_ID=1


--Details of photography skills of students
SELECT StudentSkill.SHU_ID, StudentInfo.First_Name, StudentInfo.Last_Name, StudentInfo.Department,
Photography.Skills as 'Skill', Photography.Device, Photography.Domain, Photography.Experience as 'Experience in years'
FROM StudentSkill
INNER JOIN Photography ON Photography.SHU_ID=StudentSkill.SHU_ID 
INNER JOIN StudentInfo ON StudentSkill.SHU_ID=StudentInfo.SHU_ID 
where StudentSkill.Skill_ID=1


--Creating procedure to extract photography details
CREATE Procedure GetPhotographyDetails
As
Begin
SELECT StudentSkill.SHU_ID, StudentInfo.First_Name, StudentInfo.Last_Name, StudentInfo.Department,
Photography.Skills as 'Skill', Photography.Device, Photography.Domain, Photography.Experience as 'Experience in years'
FROM StudentSkill
INNER JOIN Photography ON Photography.SHU_ID=StudentSkill.SHU_ID 
INNER JOIN StudentInfo ON StudentSkill.SHU_ID=StudentInfo.SHU_ID 
where StudentSkill.Skill_ID=1
End

GetPhotographyDetails




--Creating procedure to extract Graphic Designing skills of students

CREATE Procedure GetgraphicDesDetails
As
Begin
SELECT StudentSkill.SHU_ID, StudentInfo.First_Name, StudentInfo.Last_Name, StudentInfo.Department, StudentSkill.Skill_ID,
GraphicDesigning.Skills as 'Skill', GraphicDesigning.Preferred_Application, GraphicDesigning.Domain, GraphicDesigning.Experience as 'Experience in years'
FROM StudentSkill
INNER JOIN GraphicDesigning ON GraphicDesigning.SHU_ID=StudentSkill.SHU_ID 
INNER JOIN StudentInfo ON StudentSkill.SHU_ID=StudentInfo.SHU_ID 
where StudentSkill.Skill_ID=2
End

GetgraphicDesDetails




--Procedure for total number of Students in art
CREATE Procedure gettotalArt
As
Begin
Select count(SHU_ID) from Art
End

gettotalArt



Create Procedure GuitarPlayers
As
Begin
select  Singing.SHU_ID, StudentInfo.First_Name, StudentInfo.Last_Name, StudentInfo.Department , Singing.Can_you_play_an_instrument_If_yes as 'Instrument'
FROM Singing
INNER JOIN StudentInfo ON Singing.SHU_ID=StudentInfo.SHU_ID where Can_you_play_an_instrument_If_yes='Guitar'
End

GuitarPlayers









-- INDEX


--Index for skills
CREATE INDEX idx_skill
ON skills (Skill_ID);

--Index for Student IDs
CREATE INDEX idx_studentinfo
ON StudentInfo (SHU_ID);

--Index for Students skills
CREATE INDEX idx_studentskills
ON StudentSkill (Skill_ID);

--Index for art experience
CREATE INDEX idx_expArt
ON Art (Experience);
--View for all information about graphic designing
Create View graphics
As
SELECT StudentSkill.SHU_ID, StudentInfo.First_Name, StudentInfo.Last_Name, StudentInfo.Department, StudentSkill.Skill_ID,
GraphicDesigning.Skills as 'Skill', GraphicDesigning.Preferred_Application, GraphicDesigning.Domain, GraphicDesigning.Experience as 'Experience in years'
FROM StudentSkill
INNER JOIN GraphicDesigning ON GraphicDesigning.SHU_ID=StudentSkill.SHU_ID 
INNER JOIN StudentInfo ON StudentSkill.SHU_ID=StudentInfo.SHU_ID 
where StudentSkill.Skill_ID=2

select * from graphics

--View for all information about students in CS department
Create view csInfo
as
select * from StudentInfo where Department='Computer Science'

--view for students only
create view studentview
as
select First_Name, Last_Name, SHU_ID, Department from StudentInfo 


--Trigger to display all info when new value is inserted
CREATE TRIGGER display
ON StudentInfo
FOR INSERT
AS
BEGIN
	select * from StudentInfo
End

