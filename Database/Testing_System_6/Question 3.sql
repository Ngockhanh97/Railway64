USE quanlybaithi;
DROP PROCEDURE IF EXISTS typeques_month;
DELIMITER $$
CREATE PROCEDURE typeques_month()
BEGIN
SELECT TP.TypeName, count(QuestionID) FROM question Q
JOIN typequestion TP ON Q.TypeID = Tp.TypeID
WHERE month(q.CreateDate) = month(now()) AND year(q.CreateDate) = year(now())
GROUP BY Q.TypeID;
END$$
DELIMITER ;
Call typeques_month();