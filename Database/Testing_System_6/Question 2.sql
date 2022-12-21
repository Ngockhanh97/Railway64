USE quanlybaithi;
DROP PROCEDURE IF EXISTS print_account;
DELIMITER $$
CREATE PROCEDURE print_account (IN in_groupname NVARCHAR(50))
BEGIN
SELECT G.GroupID, G.GroupName, count(GA.AccountID) FROM groupaccount GA
JOIN groupp G ON GA.GroupID = G.GroupID
WHERE G.GroupName = in_groupname
GROUP BY GA.GroupID;
END$$
DELIMITER ;
Call print_account('Hasse Thelenella Lichen');