INSERT INTO petEvent( petName, eventdate, eventtype, remark) VALUES 
    ('Fluffy', '2020-10-15', 'vet', 'antibiotics');

INSERT INTO petPet( petName, owner, species, gender, birth, death) VALUES 
    ('Hammy', 'Diane', 'hamster', 'M', '2010-10-30', NULL);

INSERT INTO petEvent( petName, eventdate, eventtype, remark) VALUES 
    ('Hammy', '2020-10-15', 'vet', 'antibiotics');

UPDATE petEvent
    SET remark = '5 kittens: 2 males, 3 females', eventdate = '1997-08-03'
    WHERE petName = 'Fluffy';

UPDATE petEvent
    SET petName = 'Claws'
    WHERE eventdate = '1997-08-03' AND remark = 'broken rib';

UPDATE petPet
    SET death = '2020-09-01'
    WHERE petName = 'Puffball';

DELETE FROM petEvent WHERE petName = 'Buffy';
DELETE FROM petPet WHERE petName = 'Buffy';

