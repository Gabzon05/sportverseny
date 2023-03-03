CREATE DATABASE sportverseny
	CHARACTER SET utf8
	COLLATE utf8_hungarian_ci;


INSERT races
  (id, raceName,raceDateFrom,raceDateUpTo,institution)
  VALUES
  (1,'Legnagyobb Verseny','2012.03.25','2012.03.26','Karcagi Szakképzési Centrum Nagy László Gimnázium');

INSERT teams
  (id, RaceId, temamName, Institution)
  VALUES
  (1,1,'Ewengers','Szolnoki Mûszaki Szakképzési Centrum Rózsa Imre Középiskolája és Kollégiuma'),(2,1,'MRK fiúk','Mezõtúri Református Kollégium, Gimnázium, Szakközépiskola, Általános Iskola és Óvoda'),
  (3,1,'Kinizsi fiúk','Kinizsi Pál Gimnázium és Szakközépiskola'),(4,1,'Csavarkulcs','Szolnoki Mûszaki Szakképzési Centrum Jendrassik György Gépipari Szakközépiskolája'),
  (5,1,'Magára bízom','Hajnóczy József Gimnázium, Humán Szakközépiskola és Kollégium'),(6,1,'Fahéj','Szolnoki Mûszaki Szakképzési Centrum Petõfi Sándor Építészeti és Faipari Szakképzõ Iskolája'),
  (7,1,'Másnaposok','Szolnoki Mûszaki Szakképzési Centrum Baross Gábor Gépipari, Közlekedési Szakképzõ Iskolája'),(8,1,'Konok-kunok','Karcagi Szakképzési Centrum Nagy László Gimnázium');

#INSERT competitionnumbers
 # (id,raceNumber,weighting,moreIsBetter,type,userId)

INSERT users
  (id,firstName,lastName,gender,userName,email,password,number)
  VALUES
  (1,'Marton','Elek','Férfi','elekMarton','elekMarton@gmail.com','marton_elek',11),
  (2,'Fütty','Mihály','Férfi','mihalyFutty','mihalyFutty@gmail.com','futty_mihaly',22),
  (3,'Bakó','Judit','Nõ','juditBako','juditBako@gmail.com','bako_judit',33),
  (4,'Szabó','Tamás','Férfi','tamasSzabo','tamasSzabo@gmail.com','szabo_tamas',44),
  (5,'Korom','Dániel','Férfi','danielKorom','danielKorom@gmail.com','korom_daniel',55),
  (6,'Katona','Maria','Nõ','mariaKatona','mariaKatona@gmail.com','katona_maria',66);


INSERT competitionnumbers
  (id,raceNumber,weighting,type,userId)
  VALUES
  (1,'Lövészet',0.7,'találat',1),
  (2,'Akadálypálya',1.5,'perc:mp',2),
  (3,'Gránátdobás',0.7,'találat',3),
  (4,'Fegyverszerelés',1,'mp',4),
  (5,'Elsõsegély',1,'pont',5),
  (6,'Katonai alapismeretek',1.5,'pont',6);



SELECT * FROM teams;
SELECT * FROM teamrace;
SELECT * from races;
SELECT * FROM competitionnumbers;
SELECT * FROM users;

#hány sportverseny van?
select COUNT(*) db from competitionnumbers; 


  #hány csapat van?

    select count(*) from teams
      WHERE RaceId = 1;

INSERT into teamrace
  (teamId,competitionNumberId,resultNumber)
  VALUES
  (1,1,50);

delete from teamrace;



CALL csvGenerator();
