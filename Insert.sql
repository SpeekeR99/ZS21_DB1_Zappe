/* ---------------------------- DITE ---------------------------------------- */

INSERT INTO dite
    (dite_id, jmeno, prijmeni, rodne_cislo,
    ulice, cislo_popisne, mesto, psc, telefon_domu)
VALUES (1, 'Josef', 'Novák', 0522102548,
    'Horní Dolní', 123, 'Plasy', 33101, 123456789);
    
INSERT INTO dite
    (dite_id, jmeno, prijmeni, rodne_cislo,
    ulice, cislo_popisne, mesto, psc, telefon_domu)
VALUES (2, 'Petr', 'Starý', 0710051234,
    'Bøízská', 1, 'Kaznìjov', 33151, 123123123);

INSERT INTO dite
    (dite_id, jmeno, prijmeni, rodne_cislo,
    ulice, cislo_popisne, mesto, psc, telefon_domu)
VALUES (3, 'Josef', 'Jiný', 0612125252,
    'Americká', 8, 'Plzeò', 30101, 151515158);

INSERT INTO dite
    (dite_id, jmeno, prijmeni, rodne_cislo,
    ulice, cislo_popisne, mesto, psc, telefon_domu)
VALUES (4, 'Anna', 'Müllerová', 0712564545,
    'Školni', 95, 'Plasy', 33101, 987654321);

INSERT INTO dite
    (dite_id, jmeno, prijmeni, rodne_cislo,
    ulice, cislo_popisne, mesto, psc, telefon_domu)
VALUES (5, 'Jan', 'Novák', 0211015656,
    'Poštovní', 5, 'Obora', 33151, 456123456);

/* ---------------------------- VEDOUCI ------------------------------------- */

INSERT INTO vedouci
    (vedouci_id, jmeno, prijmeni, rodne_cislo,
    ulice, cislo_popisne, mesto, psc, email, telefon)
VALUES (1, 'Martina', 'Hezká', 8805541234,
    'Pražská', 45, 'Plasy', 33101, 'martina.hezka@seznam.cz', 123412345);

INSERT INTO vedouci
    (vedouci_id, jmeno, prijmeni, rodne_cislo,
    ulice, cislo_popisne, mesto, psc, email)
VALUES (2, 'Dominik', 'Zappe', 9910131111,
    'Horní', 326, 'Kaznìjov', 33151, 'dominikzappe1999@seznam.cz');

INSERT INTO vedouci
    (vedouci_id, jmeno, prijmeni, rodne_cislo,
    ulice, cislo_popisne, mesto, psc, telefon)
VALUES (3, 'Petr', 'Klíè', 8912120212,
    'U Slimáka', 1, 'Plzeò', 30101, 123123546);

INSERT INTO vedouci
    (vedouci_id, jmeno, prijmeni, rodne_cislo,
    ulice, cislo_popisne, mesto, psc)
VALUES (4, 'Alena', 'Nová', 7705541245,
    'Øíèní', 3, 'Obora', 33151);

/* ---------------------------- KROUZEK ------------------------------------- */

INSERT INTO krouzek (krouzek_id, nazev)
    VALUES (1, 'Angliètina pro zaèáteèníky');

INSERT INTO krouzek (krouzek_id, nazev)
    VALUES (2, 'Angliètina pro pokroèilé');

INSERT INTO krouzek (krouzek_id, nazev)
    VALUES (3, 'Keramika');

INSERT INTO krouzek (krouzek_id, nazev)
    VALUES (4, 'Míèové hry');

INSERT INTO krouzek (krouzek_id, nazev)
    VALUES (5, 'Poèítaèová grafika');

INSERT INTO krouzek (krouzek_id, nazev)
    VALUES (6, 'Java pro zaèáteèníky');

INSERT INTO krouzek (krouzek_id, nazev)
    VALUES (7, 'HTML pro zaèáteèníky');

/* ---------------------------- MISTNOST ------------------------------------ */

INSERT INTO mistnost (mistnost_id, kapacita, oznaceni)
    VALUES (1, 30, 'A1');

INSERT INTO mistnost (mistnost_id, kapacita, oznaceni)
    VALUES (2, 25, 'A2');

INSERT INTO mistnost (mistnost_id, kapacita, oznaceni)
    VALUES (3, 20, 'B1');

INSERT INTO mistnost (mistnost_id, kapacita, oznaceni)
    VALUES (4, 25, 'B2');

INSERT INTO mistnost (mistnost_id, kapacita, oznaceni)
    VALUES (5, 30, 'C1');

INSERT INTO mistnost (mistnost_id, kapacita, oznaceni)
    VALUES (6, 25, 'C2');

INSERT INTO mistnost (mistnost_id, kapacita, oznaceni)
    VALUES (7, 20, 'D1');

INSERT INTO mistnost (mistnost_id, kapacita, oznaceni)
    VALUES (8, 10, 'D2');

/* ---------------------------- ROZVRHOVA AKCE ------------------------------ */

INSERT INTO rozvrhova_akce 
    (rozvrhova_akce_id, den, cas_od, cas_do, kapacita,
    krouzek_id, mistnost_id, vedouci_id)
VALUES (1, 'PO', '15:00', '16:00', 30, 1, 1, 1);

INSERT INTO rozvrhova_akce 
    (rozvrhova_akce_id, den, cas_od, cas_do, kapacita,
    krouzek_id, mistnost_id, vedouci_id)
VALUES (2, 'PO', '16:00', '17:00', 25, 2, 2, 1);

INSERT INTO rozvrhova_akce 
    (rozvrhova_akce_id, den, cas_od, cas_do, kapacita,
    krouzek_id, mistnost_id, vedouci_id)
VALUES (3, 'PO', '15:00', '16:00', 10, 3, 8, 4);

INSERT INTO rozvrhova_akce 
    (rozvrhova_akce_id, den, cas_od, cas_do, kapacita,
    krouzek_id, mistnost_id, vedouci_id)
VALUES (4, 'PO', '17:00', '18:00', 10, 3, 8, 4);

INSERT INTO rozvrhova_akce 
    (rozvrhova_akce_id, den, cas_od, cas_do, kapacita,
    krouzek_id, mistnost_id, vedouci_id)
VALUES (5, 'ÚT', '15:00', '16:30', 30, 6, 5, 2);

INSERT INTO rozvrhova_akce 
    (rozvrhova_akce_id, den, cas_od, cas_do, kapacita,
    krouzek_id, mistnost_id, vedouci_id)
VALUES (6, 'ÚT', '16:30', '18:00', 30, 7, 5, 2);

INSERT INTO rozvrhova_akce 
    (rozvrhova_akce_id, den, cas_od, cas_do, kapacita,
    krouzek_id, mistnost_id, vedouci_id)
VALUES (7, 'ST', '15:00', '17:00', 30, 4, 3, 3);

INSERT INTO rozvrhova_akce 
    (rozvrhova_akce_id, den, cas_od, cas_do, kapacita,
    krouzek_id, mistnost_id, vedouci_id)
VALUES (8, 'ST', '16:00', '17:00', 25, 2, 2, 1);

INSERT INTO rozvrhova_akce 
    (rozvrhova_akce_id, den, cas_od, cas_do, kapacita,
    krouzek_id, mistnost_id, vedouci_id)
VALUES (9, 'ÈT', '15:00', '16:00', 30, 5, 5, 2);

INSERT INTO rozvrhova_akce 
    (rozvrhova_akce_id, den, cas_od, cas_do, kapacita,
    krouzek_id, mistnost_id, vedouci_id)
VALUES (10, 'ÈT', '17:00', '18:00', 25, 3, 6, 4);

INSERT INTO rozvrhova_akce 
    (rozvrhova_akce_id, den, cas_od, cas_do, kapacita,
    krouzek_id, mistnost_id, vedouci_id)
VALUES (11, 'PÁ', '15:00', '16:00', 20, 5, 7, 3);

/* ---------------------------- PRIHLASKA ----------------------------------- */

INSERT INTO prihlaska (prihlaska_id, datum_podani, dite_id, rozvrhova_akce_id)
    VALUES(1, TO_DATE('01.09.2021', 'DD.MM.YYYY'), 1, 1);

INSERT INTO prihlaska (prihlaska_id, datum_podani, dite_id, rozvrhova_akce_id)
    VALUES(2, TO_DATE('01.09.2021', 'DD.MM.YYYY'), 1, 5);

INSERT INTO prihlaska (prihlaska_id, datum_podani, dite_id, rozvrhova_akce_id)
    VALUES(3, TO_DATE('01.09.2021', 'DD.MM.YYYY'), 1, 11);

INSERT INTO prihlaska (prihlaska_id, datum_podani, dite_id, rozvrhova_akce_id)
    VALUES(4, TO_DATE('01.09.2021', 'DD.MM.YYYY'), 2, 2);

INSERT INTO prihlaska (prihlaska_id, datum_podani, dite_id, rozvrhova_akce_id)
    VALUES(5, TO_DATE('05.09.2021', 'DD.MM.YYYY'), 2, 3);
    
INSERT INTO prihlaska (prihlaska_id, datum_podani, dite_id, rozvrhova_akce_id)
    VALUES(6, TO_DATE('05.09.2021', 'DD.MM.YYYY'), 2, 5);
    
INSERT INTO prihlaska (prihlaska_id, datum_podani, dite_id, rozvrhova_akce_id)
    VALUES(7, TO_DATE('02.10.2021', 'DD.MM.YYYY'), 2, 10);
    
INSERT INTO prihlaska (prihlaska_id, datum_podani, dite_id, rozvrhova_akce_id)
    VALUES(8, TO_DATE('01.09.2021', 'DD.MM.YYYY'), 3, 4);
    
INSERT INTO prihlaska (prihlaska_id, datum_podani, dite_id, rozvrhova_akce_id)
    VALUES(9, TO_DATE('07.09.2021', 'DD.MM.YYYY'), 3, 6);
    
INSERT INTO prihlaska (prihlaska_id, datum_podani, dite_id, rozvrhova_akce_id)
    VALUES(10, TO_DATE('07.09.2021', 'DD.MM.YYYY'), 3, 7);
    
INSERT INTO prihlaska (prihlaska_id, datum_podani, dite_id, rozvrhova_akce_id)
    VALUES(11, TO_DATE('07.09.2021', 'DD.MM.YYYY'), 4, 1);

INSERT INTO prihlaska (prihlaska_id, datum_podani, dite_id, rozvrhova_akce_id)
    VALUES(12, TO_DATE('02.09.2021', 'DD.MM.YYYY'), 4, 3);
    
INSERT INTO prihlaska (prihlaska_id, datum_podani, dite_id, rozvrhova_akce_id)
    VALUES(13, TO_DATE('03.09.2021', 'DD.MM.YYYY'), 4, 9);
    
INSERT INTO prihlaska (prihlaska_id, datum_podani, dite_id, rozvrhova_akce_id)
    VALUES(14, TO_DATE('03.09.2021', 'DD.MM.YYYY'), 4, 11);
    
INSERT INTO prihlaska (prihlaska_id, datum_podani, dite_id, rozvrhova_akce_id)
    VALUES(15, TO_DATE('03.09.2021', 'DD.MM.YYYY'), 5, 2);
    
INSERT INTO prihlaska (prihlaska_id, datum_podani, dite_id, rozvrhova_akce_id)
    VALUES(16, TO_DATE('04.09.2021', 'DD.MM.YYYY'), 5, 3);
    
INSERT INTO prihlaska (prihlaska_id, datum_podani, dite_id, rozvrhova_akce_id)
    VALUES(17, TO_DATE('04.09.2021', 'DD.MM.YYYY'), 5, 8);
    
INSERT INTO prihlaska (prihlaska_id, datum_podani, dite_id, rozvrhova_akce_id)
    VALUES(18, TO_DATE('04.09.2021', 'DD.MM.YYYY'), 5, 9);
    
INSERT INTO prihlaska (prihlaska_id, datum_podani, dite_id, rozvrhova_akce_id)
    VALUES(19, TO_DATE('07.09.2021', 'DD.MM.YYYY'), 5, 10);
    
INSERT INTO prihlaska (prihlaska_id, datum_podani, dite_id, rozvrhova_akce_id)
    VALUES(20, TO_DATE('10.10.2021', 'DD.MM.YYYY'), 5, 1);
