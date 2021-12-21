/* -------------------------------- Scenar 3 -------------------------------- */

/* Tento sc�n�� m� otestovat funk�nost n�vrhu, tedy zav�st nepovolen� hodnoty
   a pokusit se vyvolat nekonzistenci */

/* Nejprve se pokus�me zav�st do datab�ze t�eba d�t� beze jm�na */

INSERT INTO dite
    (dite_id, prijmeni, rodne_cislo,
    ulice, cislo_popisne, mesto, psc, telefon_domu)
VALUES (8, '', 123123123,
    'Test', 1, 'Test', 11111, 123456789);

/* Nyn� zkus�me zav�st d�t� se stringov�m PS� */ 

INSERT INTO dite
    (dite_id, jmeno, prijmeni, rodne_cislo,
    ulice, cislo_popisne, mesto, psc, telefon_domu)
VALUES (9, 'Test', 'Test', 123123123,
    'Test', 1, 'Test', 'Test', 123456789);

/* Zkou�ka integritn�ho omezen� proti pr�zdn�mu �et�zci */

INSERT INTO dite
    (dite_id, jmeno, prijmeni, rodne_cislo,
    ulice, cislo_popisne, mesto, psc, telefon_domu)
VALUES (9, '', 'Test', 123123123,
    'Test', 1, 'Test', '11111', 123456789);

INSERT INTO krouzek (krouzek_id, nazev) VALUES (9, '');

/* Zkou�ka integritniho omezeni proti telefonn�m ��sl�m, kter� nemaj� 9 m�st */

INSERT INTO dite
    (dite_id, jmeno, prijmeni, rodne_cislo,
    ulice, cislo_popisne, mesto, psc, telefon_domu)
VALUES (9, 'Test', 'Test', 123123123,
    'Test', 1, 'Test', '11111', 123);

UPDATE vedouci
    SET telefon = 123
    WHERE vedouci_id = 1;

/* Zkou�ka integritniho omezeni pro dny v t�dnu */

UPDATE rozvrhova_akce
    SET den = 'SO'
    WHERE rozvrhova_akce_id = 1;

UPDATE rozvrhova_akce
    SET den = 'Pond�l�'
    WHERE rozvrhova_akce_id = 1;

/* Pro vyvolani nekonzistence zkusime odebrat dite,
   ktere je prihlaseno na vice krouzku */

DELETE FROM dite
    WHERE dite_id = 1;
