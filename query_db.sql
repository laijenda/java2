create database KIEMTRA_JAVA 
use KIEMTRA_JAVA
go	

create table student
(
	id int not null IDENTITY(1,1) primary key ,
	name nvarchar(100) null,
	age int,
);
create table class
(
	id int IDENTITY(1,1) primary key,
	class_name nvarchar(100) null,

);
create table student_class(
	 id_student int,
	 id_class int,
	 CONSTRAINT FK_student_class_student FOREIGN key (id_student) REFERENCES student(id),
	 CONSTRAINT FK_student_class_class   FOREIGN key (id_class) REFERENCES class(id),		
);

create table dayoff(
	id int IDENTITY(1,1) primary key,
	id_student int ,
	dayoff date not null,
	CONSTRAINT Fk_dayoff_student FOREIGN key (id_student) REFERENCES student(id),
);

Insert into student(name,age)
values('Hồ Chí Minh','19')
Insert into student(name,age)
values('Nguyễn Văn Thoại','19')
Insert into student(name,age)
values('Điện Biên Phủ','19')

Insert into class(class_name)
values('17T1')
Insert into class(class_name)
values('17T2')
Insert into class(class_name)
values('17T3')
Insert into class(class_name)
values('17T4')


Insert into dayoff(id_student,dayoff)
values('1','1999-09-30')
Insert into dayoff(id_student,dayoff)
values('1','1899-12-12')
Insert into dayoff(id_student,dayoff)
values('2','1998-09-20')
Insert into dayoff(id_student,dayoff)
values('2','2013-11-12')
Insert into dayoff(id_student,dayoff)
values('3','2003-12-10')
Insert into dayoff(id_student,dayoff)
values('3','2020-23-11')


Select name as [Tên],class_name [Lớp],age [Tuổi], dayoff [Ngày Nghỉ]
from student,class,dayoff
where (class_name = '17T1' or class_name='17T2') and (dayoff='2019-12-20' or dayoff= '2019-12-12');    


Select name as [Tên],class_name [Lớp],age [Tuổi], dayoff [Ngày Nghỉ]
from student,class,dayoff
where (class_name = '17T4' or class_name = '17T3') and  (dayoff='2019-12-10' or dayoff= '2019-12-11');


