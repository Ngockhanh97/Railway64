USE quanlybaithi;
DROP PROCEDURE IF EXISTS print_department;
DELIMITER $$
CREATE PROCEDURE inphongban(IN department_name VARCHAR(50))
BEGIN
SELECT A.AccountID, A.FullName, D.DepartmentName FROM accounts A
JOIN department D ON D.DepartmentID = A.DepartmentID
WHERE D.DepartmentName = department_name;
END$$
DELIMITER ;
Call print_department('Sale');