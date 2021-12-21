/* -------------------------------- Scenar 3 -------------------------------- */

/* Tento scénáø má otestovat funkènost návrhu, tedy zavést nepovolené hodnoty
   a pokusit se vyvolat nekonzistenci */

/* Nejprve se pokusíme zavést do databáze tøeba dítì beze jména */

INSERT INTO dite
    (dite_id, prijmeni, rodne_cislo,
    ulice, cislo_popisne, mesto, psc, telefon_domu)
VALUES (8, '', 123123123,
    'Test', 1, 'Test', 11111, 123456789);

/* Nyní zkusíme zavést dítì se stringovým PSÈ */ 

INSERT INTO dite
    (dite_id, jmeno, prijmeni, rodne_cislo,
    ulice, cislo_popisne, mesto, psc, telefon_domu)
VALUES (9, 'Test', 'Test', 123123123,
    'Test', 1, 'Test', 'Test', 123456789);

/* Zkouška integritního omezení proti prázdnému øetìzci */

INSERT INTO dite
    (dite_id, jmeno, prijmeni, rodne_cislo,
    ulice, cislo_popisne, mesto, psc, telefon_domu)
VALUES (9, '', 'Test', 123123123,
    'Test', 1, 'Test', '11111', 123456789);

INSERT INTO krouzek (krouzek_id, nazev) VALUES (9, '');

/* Zkouška integritniho omezeni proti telefonním èíslùm, která nemají 9 míst */

INSERT INTO dite
    (dite_id, jmeno, prijmeni, rodne_cislo,
    ulice, cislo_popisne, mesto, psc, telefon_domu)
VALUES (9, 'Test', 'Test', 123123123,
    'Test', 1, 'Test', '11111', 123);

UPDATE vedouci
    SET telefon = 123
    WHERE vedouci_id = 1;

/* Zkouška integritniho omezeni pro dny v týdnu */

UPDATE rozvrhova_akce
    SET den = 'SO'
    WHERE rozvrhova_akce_id = 1;

UPDATE rozvrhova_akce
    SET den = 'Pondìlí'
    WHERE rozvrhova_akce_id = 1;

/* Pro vyvolani nekonzistence zkusime odebrat dite,
   ktere je prihlaseno na vice krouzku */

DELETE FROM dite
    WHERE dite_id = 1;
