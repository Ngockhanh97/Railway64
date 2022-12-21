use quanlybaithi;

create view dsnv_sale as
select a.*, d.DepartmentName from
accounts a join department d on a.DepartmentID = d.DepartmentID 
where d.DepartmentName = 'Sale'

