USE quanlybaithi;
DROP PROCEDURE IF EXISTS id_typequestion;
DELIMITER $$
CREATE PROCEDURE id_typequestion ()
BEGIN
SELECT TypeID FROM (
                     SELECT TP.TypeID, count(Q.QuestionID) as SL FROM question Q 
					 JOIN typequestion TP ON Q.TypeID = Tp.TypeID
					 GROUP BY Q.TypeID
					 HAVING count(Q.QuestionID) = 
													(SELECT max(SL) from (
																			SELECT count(Q.QuestionID) as SL FROM question Q 
																			JOIN typequestion TP ON Q.TypeID = Tp.TypeID 
																			GROUP BY Q.TypeID
																		  ) as maxquestion
													)
                   ) as TypeID_SLMAX;
END$$
DELIMITER ;
Call id_typequestion();
