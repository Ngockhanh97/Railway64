use quanlybaithi;

select D.*, count(A.DepartmentID) as SL from Department D join accounts A
on D.DepartmentID = A.DepartmentID
group by A.DepartmentID
having SL > 3;
