create table kitaplistesi(
kitapno int, kitapisim varchar(40),
yazarisim varchar(40), sayfa int, fiyat int);

select * from kitaplistesi;

create table sefiller
AS
select kitapisim, 
yazarisim
from kitaplistesi;

select * from sefiller;

create table serenad
as
select kitapno
from kitaplistesi;

select * from serenad;