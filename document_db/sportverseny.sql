CREATE DATABASE sportverseny
	CHARACTER SET utf8
	COLLATE utf8_hungarian_ci;


INSERT races
  (id, raceName,raceDateFrom,raceDateUpTo,institution)
  VALUES
  (1,'Legnagyobb Verseny','2012.03.25','2012.03.26','Karcagi Szakk�pz�si Centrum Nagy L�szl� Gimn�zium');

INSERT teams
  (id, RaceId, temamName, Institution)
  VALUES
  (1,1,'Ewengers','Szolnoki M�szaki Szakk�pz�si Centrum R�zsa Imre K�z�piskol�ja �s Koll�giuma'),(2,1,'MRK fi�k','Mez�t�ri Reform�tus Koll�gium, Gimn�zium, Szakk�z�piskola, �ltal�nos Iskola �s �voda'),
  (3,1,'Kinizsi fi�k','Kinizsi P�l Gimn�zium �s Szakk�z�piskola'),(4,1,'Csavarkulcs','Szolnoki M�szaki Szakk�pz�si Centrum Jendrassik Gy�rgy G�pipari Szakk�z�piskol�ja'),
  (5,1,'Mag�ra b�zom','Hajn�czy J�zsef Gimn�zium, Hum�n Szakk�z�piskola �s Koll�gium'),(6,1,'Fah�j','Szolnoki M�szaki Szakk�pz�si Centrum Pet�fi S�ndor �p�t�szeti �s Faipari Szakk�pz� Iskol�ja'),
  (7,1,'M�snaposok','Szolnoki M�szaki Szakk�pz�si Centrum Baross G�bor G�pipari, K�zleked�si Szakk�pz� Iskol�ja'),(8,1,'Konok-kunok','Karcagi Szakk�pz�si Centrum Nagy L�szl� Gimn�zium');

#INSERT competitionnumbers
 # (id,raceNumber,weighting,moreIsBetter,type,userId)

INSERT users
  (id,firstName,lastName,gender,userName,email,password,number)
  VALUES
  (1,'Marton','Elek','F�rfi','elekMarton','elekMarton@gmail.com','marton_elek',11),
  (2,'F�tty','Mih�ly','F�rfi','mihalyFutty','mihalyFutty@gmail.com','futty_mihaly',22),
  (3,'Bak�','Judit','N�','juditBako','juditBako@gmail.com','bako_judit',33),
  (4,'Szab�','Tam�s','F�rfi','tamasSzabo','tamasSzabo@gmail.com','szabo_tamas',44),
  (5,'Korom','D�niel','F�rfi','danielKorom','danielKorom@gmail.com','korom_daniel',55),
  (6,'Katona','Maria','N�','mariaKatona','mariaKatona@gmail.com','katona_maria',66);


INSERT competitionnumbers
  (id,raceNumber,weighting,type,userId)
  VALUES
  (1,'L�v�szet',0.7,'tal�lat',1),
  (2,'Akad�lyp�lya',1.5,'perc:mp',2),
  (3,'Gr�n�tdob�s',0.7,'tal�lat',3),
  (4,'Fegyverszerel�s',1,'mp',4),
  (5,'Els�seg�ly',1,'pont',5),
  (6,'Katonai alapismeretek',1.5,'pont',6);



SELECT * FROM teams;
SELECT * FROM teamrace;
SELECT * from races;
SELECT * FROM competitionnumbers;
SELECT * FROM users;

#h�ny sportverseny van?
select COUNT(*) db from competitionnumbers; 


  #h�ny csapat van?

    select count(*) from teams
      WHERE RaceId = 1;

INSERT into teamrace
  (teamId,competitionNumberId,resultNumber)
  VALUES
  (1,1,50);

delete from teamrace;



CALL csvGenerator();
