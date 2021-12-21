/* -------------------------------- Scenar 2 -------------------------------- */

/* Martinu Hezkou u� nebav� angli�tina a cht�la by u�it d�ti n�mecky
   Proto zakl�d� nov� krou�ek - N�m�ina pro za��te�n�ky
   Petrovi Star�mu se to l�b� a hod�, a tak se p�ihl�s� do tohoto krou�ku
   Petr do krou�ku nal�kal i sv� dva kamar�dy ze m�sta, kte�� jsou v DDM nov� */

/* Novy krou�ek */
INSERT INTO krouzek (krouzek_id, nazev)
    VALUES (8, 'N�m�ina pro za��te�n�ky');

/* P��slu�n� nov� RA */
INSERT INTO rozvrhova_akce 
    (rozvrhova_akce_id, den, cas_od, cas_do, kapacita,
    krouzek_id, mistnost_id, vedouci_id)
VALUES (12, 'P�', '17:00', '18:00', 25, 8, 4, 1);

/* Petrovo p�ihl�en� */
INSERT INTO prihlaska (prihlaska_id, datum_podani, dite_id, rozvrhova_akce_id)
    VALUES(22, TO_DATE('20.10.2021', 'DD.MM.YYYY'), 2, 12);

/* P�ihl�en� Petrovo dvou kamar�d� */
INSERT INTO dite
    (dite_id, jmeno, prijmeni, rodne_cislo,
    ulice, cislo_popisne, mesto, psc, telefon_domu)
VALUES (6, 'Martin', 'Dobr�', 9812121212,
    '�pag�tovka', 89, 'Kazn�jov', 33151, 111000111);

INSERT INTO prihlaska (prihlaska_id, datum_podani, dite_id, rozvrhova_akce_id)
    VALUES(23, TO_DATE('22.10.2021', 'DD.MM.YYYY'), 6, 12);

INSERT INTO dite
    (dite_id, jmeno, prijmeni, rodne_cislo,
    ulice, cislo_popisne, mesto, psc, telefon_domu)
VALUES (7, 'Mat�j', '�ech', 0522102548,
    '�pi�at�', 88, 'Kazn�jov', 33151, 222111000);

INSERT INTO prihlaska (prihlaska_id, datum_podani, dite_id, rozvrhova_akce_id)
    VALUES(24, TO_DATE('22.10.2021', 'DD.MM.YYYY'), 7, 12);