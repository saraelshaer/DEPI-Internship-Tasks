-- 1
select Dnum, Dname, MGRSSN, concat(Fname,' ',Lname) as'Manager Full name' 
from Departments d inner join Employee e
on d.MGRSSN = e.SSN;
--2
select Dname, Pname from Departments d inner join Project p
on d.Dnum = p.Dnum;
--3
select Dependent_name, d.Sex, d.Bdate, concat(Fname,' ',Lname) as'Employee Full name' from Dependent d inner join Employee e
on d.ESSN = e.SSN; 
--4
select Pnumber, Pname,Plocation from Project
where City = 'Cairo' or City =  'Alex'; 
--5
select * from Project
where Pname like 'a%';
--6
select * from Employee
where Dno = 30 and Salary  between 1000 and 2000;
--7
select  concat(Fname,' ',Lname) as'Manager Full name' from Employee e inner join Works_for w
on e.SSN = w.ESSn 
inner join Project p on w.Pno =p.Pnumber
where e.Dno = 10 and Hours >= 10 and Pname = 'AL Rabwah';
--8
select  e1.Fname, e1.Lname from Employee e1 , Employee e2
where e1.Superssn = e2.SSN and  e2.Fname = 'Kamel' and e2.Lname ='Mohamed';
--9
select  concat(Fname,' ',Lname) as'Emp name',Pname from Employee e inner join Works_for w
on e.SSN = w.ESSn 
inner join Project p on w.Pno =p.Pnumber
order by Pname;
--10
select p.Pnumber, d.Dname, e.Lname, e.Address,e.Bdate from Project p inner join Departments d
on p.Dnum = d.Dnum
inner join Employee e on d.MGRSSN = e.SSN
where p.City ='Cairo';
--11
select e.* from Employee e inner join Departments d
on e.SSN = d.MGRSSN;
--12
select e.* ,d.* from Employee e left join Dependent d
on e.SSN = d.ESSN;

--------------------------------------
--1
insert into Employee
values ('Sara','Nasr',102672,'2002-11-08','cairo','F',3000,112233,30);
--2
insert into Employee(Fname,Lname,SSN,Address,Bdate,Sex,Dno)
values ('Renad','Ali',102660,'cairo','2002-11-08','F',30);

--3
update Employee
set Salary = Salary* 1.2
where SSN =102672;