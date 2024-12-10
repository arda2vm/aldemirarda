--create database MusteriUrunTedarikci
create table Musteri
(
MusteriID int not null primary key,
MusteriAdi varchar not null,
MusteriTel int not null
);

create table Tedarikci
(
TedarikciID int not null primary key,
TedarikciAdi varchar not null,
TedarikciTel int not null,
TedarikciMail varchar not null
);

create table Urun 
(
UrunID int not null primary key,
UrunAdi varchar not null,
UrunFiyat int not null,
UrunMiktari varchar not null,
TedarikciID int not null foreign key references Tedarikci(TedarikciID)
);

create table SatinAlma
(
SatisID int not null primary key,
OdemeDurumu varchar not null,
SatinAlmaTarihi datetime not null,
UrunID int not null foreign key references Urun(UrunID),
Adet int not null,
SatisFiyati int not null,
MusteriID int not null foreign key references Musteri(MusteriID)
);












