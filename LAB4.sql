--------Vi?t ch��ng tr?nh xem x�t t�ng l��ng cho nh�n vi�n---------
select iif(luong>=ltb,'Khong tang luong','tang luong')
as thuong,tennv,luong,ltb
from
(select tennv,luong,ltb from NHANVIEN,
(select phg,avg(luong) as 'ltb' from NHANVIEN group by phg) as temp
where NHANVIEN.PHG=temp.PHG) as abc
select * from NHANVIEN
select phg,avg(luong) as 'ltb' from NHANVIEN group by phg


-----------Vi?t ch��ng tr?nh ph�n lo?i nh�n vi�n d?a v�o m?c l��ng----------------
select iif(luong>=ltb,'truong phong','nhan vien')
as chucvu,tennv,luong
from
(select tennv,luong,ltb from NHANVIEN,
(select phg,avg(luong) as 'ltb' from NHANVIEN group by phg) as temp
where NHANVIEN.PHG=temp.PHG) as abc
select * from NHANVIEN
select phg,avg(luong) as 'ltb' from NHANVIEN group by phg