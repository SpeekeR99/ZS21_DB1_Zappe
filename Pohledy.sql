/* ----- Prihlasene deti na konkretni rozvrhove akci ------------------------ */

/* Prirozene spojeni

CREATE OR REPLACE VIEW v_prihlasene_deti_na_konkretni_rozvrhove_akce AS
    SELECT
        d.jmeno,
        d.prijmeni,
        k.nazev,
        ra.den,
        ra.cas_od,
        ra.cas_do
    FROM
        dite d,
        prihlaska p,
        rozvrhova_akce ra,
        krouzek k
    WHERE
        d.dite_id = p.dite_id AND
        k.krouzek_id = ra.krouzek_id AND
        ra.rozvrhova_akce_id = p.rozvrhova_akce_id
    ORDER BY d.jmeno, d.prijmeni;
*/

CREATE OR REPLACE VIEW v_prihlasene_deti_na_konkretni_rozvrhove_akce AS
    SELECT
        d.jmeno,
        d.prijmeni,
        k.nazev,
        ra.den,
        ra.cas_od,
        ra.cas_do
    FROM
        dite d
        INNER JOIN prihlaska p
            ON d.dite_id = p.dite_id
        INNER JOIN rozvrhova_akce ra
            ON ra.rozvrhova_akce_id = p.rozvrhova_akce_id
        INNER JOIN krouzek k
            ON k.krouzek_id = ra.krouzek_id
    ORDER BY d.jmeno, d.prijmeni;

/* ----- Konkretni vedouci a jejich konkretni krouzky ----------------------- */

/* Prirozene spojeni

CREATE OR REPLACE VIEW v_ktere_krouzky_vede_konkretni_vedouci AS
    SELECT
        v.jmeno,
        v.prijmeni,
        k.nazev,
        ra.den,
        ra.cas_od,
        ra.cas_do
    FROM
        vedouci v,
        rozvrhova_akce ra,
        krouzek k
    WHERE
        v.vedouci_id = ra.vedouci_id AND
        ra.krouzek_id = k.krouzek_id
    ORDER BY v.jmeno, v.prijmeni;
*/

CREATE OR REPLACE VIEW v_ktere_krouzky_vede_konkretni_vedouci AS
    SELECT
        v.jmeno,
        v.prijmeni,
        k.nazev,
        ra.den,
        ra.cas_od,
        ra.cas_do
    FROM
        vedouci v
        INNER JOIN rozvrhova_akce ra
            ON v.vedouci_id = ra.vedouci_id
        INNER JOIN krouzek k
            ON k.krouzek_id = ra.krouzek_id
    ORDER BY v.jmeno, v.prijmeni;

/* ----- Pocet deti z danych mest, zkouska agregace ------------------------- */

CREATE OR REPLACE VIEW v_pocet_deti_z_konkretniho_mesta AS
    SELECT
        d.mesto,
        COUNT(d.mesto) AS pocet_deti_ze_mesta
    FROM
        dite d
    GROUP BY d.mesto
    ORDER BY COUNT(d.mesto) DESC;
