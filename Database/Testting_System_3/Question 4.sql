SELECT * FROM quanlybaithi.accounts
where length(Fullname) = (select max(length(Fullname)) from quanlybaithi.accounts)

