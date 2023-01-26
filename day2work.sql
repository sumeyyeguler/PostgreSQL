create table personel(
personel_id serial,
personel_isim varchar(30),
personel_soyisim varchar(20),
personel_sehir varchar(14),
personel_yas int);

select * from personel;

--personel ekleme
begin;
insert into personel values('101', 'sumeyye','guler','istanbul',27);
insert into personel values ('102','furkan','guler','istanbul',28);
savepoint x;
insert into personel values ('103','melih furkan','cam','istanbul',10);
insert into personel values ('104','sule','guler','istanbul',15);
rollback to x;
commit;
insert into personel values ('105','seda','gul','istanbul',19);
--personel çıkarma
delete from personel where personel_id=101;
delete from personel where personel_yas>15;
delete from personel where personel yas>10 or personel_isim='melih furkan';
delete from personel where personel personel_isim='melih furkan';

truncate personel ;

--sütun ekleme
alter table personel add cinsiyet varchar(5), add boy int;

--değiştirme
alter table personel rename column personel_isim to personel_ad;
alter table personel rename column personel_soyisim to personel_soyad;

alter table personel rename to personeller;


select * from personeller;

drop table personel;

