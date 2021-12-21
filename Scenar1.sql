/* -------------------------------- Scenar 1 -------------------------------- */

/* Jan Novák si chce odhlásit ètvrteèní Keramiku od 17:00
   Navíc chce zaèít s Josefem chodit na úterní Javu od 15:00
   Aby toho nebylo málo, jeho maminka zmìnila telefonní èíslo na 666666666 */

/* Odhlášení kermaiky */
DELETE FROM prihlaska
    WHERE dite_id = 5 AND rozvrhova_akce_id = 10;

/* Pøihlášení Javy */
INSERT INTO prihlaska (prihlaska_id, datum_podani, dite_id, rozvrhova_akce_id)
    VALUES(21, TO_DATE('15.10.2021', 'DD.MM.YYYY'), 5, 5);

/* Zmìna tel. èísla */
UPDATE dite
    SET telefon_domu = 666666666
    WHERE dite_id = 5;