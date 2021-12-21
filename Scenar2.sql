/* -------------------------------- Scenar 2 -------------------------------- */

/* Martinu Hezkou už nebaví angliètina a chtìla by uèit dìti nìmecky
   Proto zakládá nový kroužek - Nìmèina pro zaèáteèníky
   Petrovi Starému se to líbí a hodí, a tak se pøihlásí do tohoto kroužku
   Petr do kroužku nalákal i své dva kamarády ze mìsta, kteøí jsou v DDM noví */

/* Novy kroužek */
INSERT INTO krouzek (krouzek_id, nazev)
    VALUES (8, 'Nìmèina pro zaèáteèníky');

/* Pøíslušná nová RA */
INSERT INTO rozvrhova_akce 
    (rozvrhova_akce_id, den, cas_od, cas_do, kapacita,
    krouzek_id, mistnost_id, vedouci_id)
VALUES (12, 'PÁ', '17:00', '18:00', 25, 8, 4, 1);

/* Petrovo pøihlášení */
INSERT INTO prihlaska (prihlaska_id, datum_podani, dite_id, rozvrhova_akce_id)
    VALUES(22, TO_DATE('20.10.2021', 'DD.MM.YYYY'), 2, 12);

/* Pøihlášení Petrovo dvou kamarádù */
INSERT INTO dite
    (dite_id, jmeno, prijmeni, rodne_cislo,
    ulice, cislo_popisne, mesto, psc, telefon_domu)
VALUES (6, 'Martin', 'Dobrý', 9812121212,
    'Špagátovka', 89, 'Kaznìjov', 33151, 111000111);

INSERT INTO prihlaska (prihlaska_id, datum_podani, dite_id, rozvrhova_akce_id)
    VALUES(23, TO_DATE('22.10.2021', 'DD.MM.YYYY'), 6, 12);

INSERT INTO dite
    (dite_id, jmeno, prijmeni, rodne_cislo,
    ulice, cislo_popisne, mesto, psc, telefon_domu)
VALUES (7, 'Matìj', 'Èech', 0522102548,
    'Špièatá', 88, 'Kaznìjov', 33151, 222111000);

INSERT INTO prihlaska (prihlaska_id, datum_podani, dite_id, rozvrhova_akce_id)
    VALUES(24, TO_DATE('22.10.2021', 'DD.MM.YYYY'), 7, 12);