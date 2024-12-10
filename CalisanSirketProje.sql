--create database ProjeCalisansirket
create table Calisan
(
CalisanID int not null primary key,
CalisanAdi varchar not null,
CalisanPozisyonu varchar not null,
CalisanTelno varchar not null,
CalisanMail varchar not null
);

create table Sirket 
(
SirketID int not null primary key,
SirketAdi varchar not null,
SirketTelno varchar not null,
SirketMaili varchar not null,
);

create table Proje(
ProjeID int not null primary key,
ProjeAdi varchar not null,
ProjeBaslangicTarihi varchar not null,
ProjeBitisTarihi  varchar not null,
ProjeButce varchar not null,
CalisanID int not null foreign key references Calisan(CalisanID),
SirketID int not null foreign key references Sirket(SirketID)
);