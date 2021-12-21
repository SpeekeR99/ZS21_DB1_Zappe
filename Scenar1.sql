/* -------------------------------- Scenar 1 -------------------------------- */

/* Jan Nov�k si chce odhl�sit �tvrte�n� Keramiku od 17:00
   Nav�c chce za��t s Josefem chodit na �tern� Javu od 15:00
   Aby toho nebylo m�lo, jeho maminka zm�nila telefonn� ��slo na 666666666 */

/* Odhl�en� kermaiky */
DELETE FROM prihlaska
    WHERE dite_id = 5 AND rozvrhova_akce_id = 10;

/* P�ihl�en� Javy */
INSERT INTO prihlaska (prihlaska_id, datum_podani, dite_id, rozvrhova_akce_id)
    VALUES(21, TO_DATE('15.10.2021', 'DD.MM.YYYY'), 5, 5);

/* Zm�na tel. ��sla */
UPDATE dite
    SET telefon_domu = 666666666
    WHERE dite_id = 5;