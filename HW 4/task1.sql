DROP DATABASE IF EXISTS pet_database;
CREATE DATABASE pet_database;
USE pet_database;

DROP TABLE IF EXISTS petPet, petEvent;

CREATE TABLE petPet (
  petname VARCHAR(40),
  owner VARCHAR(40),
  species VARCHAR(45),
  gender VARCHAR(1),
  birth DATE, 
  death DATE, 
  PRIMARY KEY (petname)
);

CREATE TABLE petEvent (
  petname VARCHAR(40),
  eventdate DATE,
  eventtype VARCHAR(255),
  remark VARCHAR(40),
  FOREIGN KEY (petname) REFERENCES petPet(petname)
);