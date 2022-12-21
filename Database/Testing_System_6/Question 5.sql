USE quanlybaithi;

SET @id = (Call id_typequestion());
SELECT * FROM typequestion WHERE TypeID = @id;

