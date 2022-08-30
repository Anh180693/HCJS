create table Department(
	DepartId int primary key identity(1,1),
	DepartName varchar(50) not null,
	Descripion varchar(100) not null
);

drop table Department;

create table Employss(
	EmpCode char(6) primary key,
	FirstName varchar(30) not null,
	LastName varchar(30) not null,
	Brithday smalldatetime not null,
	Gender bit default 1,
	Address varchar(100),
	DepartId int not null foreign key references Department(DepartId),
	Salary money 
);

drop table Employss;
--- 1 :

insert into Department values (N'Ke Toan',N'Thu Tien');
insert into Department values (N'Kiem Toan',N'Kiem Tra');
insert into Department values (N'Hanh Chinh',N'Lam Viec');
insert into Department values (N'Nhan Su',N'Tuyen Nhan Su');


select * from Department;


insert into Employss values ('A1',N'Le',N'Anh','19931119',1,N'Ha Noi',1,300);
insert into Employss values ('A2',N'Hoang',N'Hiep','19911220',0,N'Hai Phong',2,300);
insert into Employss values ('A3',N'Doan',N'Giang','19900107',1,N'Hue',3,300);
insert into Employss values ('A4',N'Nguyen',N'Dong','19950729',0,N'Ho Chi Minh',4,300);

select * from Employss;

--- 2:
update Employss set Salary = Salary*1.1;

--- 3:
alter table Employss add constraint ckeck_salary check (salary >0);

--- 4:
create trigger tg_chkBirthday
on Employss
after insert
as
begin
	if exists (select * from inserted where Brithday < 22)
	begin
		print 'Employee’s age is greater than 22';
		rollback transaction;
	end
end
--- 5:
create index IX_DepartmentName on Department(DepartName);
---6:

---7: 
create procedure sp_getAllEmp @departmentId int as
select * from Employss where DepartId = @departmentId;

