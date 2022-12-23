USE quanlybaithi;
DROP PROCEDURE IF EXISTS MaxQuest;
DELIMITER $$
CREATE PROCEDURE MaxQuest( IN essay_or_multi VARCHAR(50))
BEGIN
DECLARE ID INT ;
SET ID = (SELECT tq.TypeID FROM typequestion tq WHERE tq.TypeName = essay_or_multi);
IF essay_or_multi = 'Essay' THEN
WITH CTE_LengContent AS(
						SELECT length(q.Content) AS leng FROM question q
						WHERE TypeID = ID
                        )
SELECT * FROM question q
WHERE TypeID = ID
AND length(q.Content) = (SELECT MAX(leng) FROM CTE_LengContent);

ELSEIF essay_or_multi = 'Multiple-Choice' THEN
SELECT * FROM question q
WHERE TypeID = ID
AND length(q.Content) = (SELECT MAX(leng) FROM CTE_LengContent);
END IF;
END$$
DELIMITER ;

CALL MaxQuest('Essay');