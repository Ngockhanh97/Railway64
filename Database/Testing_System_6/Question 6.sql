USE quanlybaithi;

DROP PROCEDURE IF EXISTS get_AccName_Or_GroupName;
DELIMITER $$
CREATE PROCEDURE get_AccName_Or_GroupName ( IN a_string VARCHAR(50) )
BEGIN
SELECT g.GroupName as Group_Or_Name FROM groupp g 
WHERE g.GroupName LIKE concat("%",a_string,"%")
UNION
SELECT a.UserName FROM accounts a
WHERE a.UserName LIKE concat ("%",a_string,"%");
END$$
DELIMITER ;

CALL get_AccName_Or_GroupName ('s');


