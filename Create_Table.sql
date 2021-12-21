/* ---------------------------- DITE ---------------------------------------- */

CREATE TABLE dite (
    dite_id INTEGER NOT NULL,
    jmeno VARCHAR2(50 CHAR) NOT NULL CHECK (jmeno <> ''),
    prijmeni VARCHAR2(50 CHAR) NOT NULL CHECK (prijmeni <> ''),
    rodne_cislo INTEGER NOT NULL,
    ulice VARCHAR2(50 CHAR) NOT NULL,
    cislo_popisne INTEGER NOT NULL,
    mesto VARCHAR2(50 CHAR) NOT NULL,
    psc INTEGER NOT NULL,
    telefon_domu INTEGER NOT NULL
);

/* PRIMARY KEY */

ALTER TABLE dite
    ADD CONSTRAINT dite_pk PRIMARY KEY(dite_id);

/* Deviti mistne telefonni cislo */

ALTER TABLE dite
    ADD CONSTRAINT telefon_domu_range CHECK (
        telefon_domu BETWEEN 100000000 AND 999999999
    );

/* ---------------------------- VEDOUCI ------------------------------------- */

CREATE TABLE vedouci (
    vedouci_id INTEGER NOT NULL,
    jmeno VARCHAR2(50 CHAR) NOT NULL CHECK (jmeno <> ''),
    prijmeni VARCHAR2(50 CHAR) NOT NULL CHECK (prijmeni <> ''),
    rodne_cislo INTEGER NOT NULL,
    ulice VARCHAR2(50 CHAR) NOT NULL,
    cislo_popisne INTEGER NOT NULL,
    mesto VARCHAR2(50 CHAR) NOT NULL,
    psc INTEGER NOT NULL,
    email VARCHAR2(50 CHAR),
    telefon INTEGER
);

/* PRIMARY KEY */

ALTER TABLE vedouci
    ADD CONSTRAINT vedouci_pk PRIMARY KEY(vedouci_id);

/* Deviti mistne telefonni cislo */

ALTER TABLE vedouci
    ADD CONSTRAINT telefon_range CHECK (
        telefon BETWEEN 100000000 AND 999999999
    );

/* ---------------------------- KROUZEK ------------------------------------- */

CREATE TABLE krouzek (
    krouzek_id INTEGER NOT NULL,
    nazev VARCHAR2(50 CHAR) NOT NULL CHECK (nazev <> '')
);

/* PRIMARY KEY */

ALTER TABLE krouzek
    ADD CONSTRAINT krouzek_pk PRIMARY KEY(krouzek_id);

/* ---------------------------- MISTNOST ------------------------------------ */

CREATE TABLE mistnost (
    mistnost_id INTEGER NOT NULL,
    kapacita SMALLINT NOT NULL,
    oznaceni VARCHAR2(20 CHAR) NOT NULL CHECK (oznaceni <> '')
);

/* PRIMARY KEY */

ALTER TABLE mistnost
    ADD CONSTRAINT mistnost_pk PRIMARY KEY(mistnost_id);

/* ---------------------------- ROZVRHOVA AKCE ------------------------------ */

CREATE TABLE rozvrhova_akce (
    rozvrhova_akce_id INTEGER NOT NULL,
    den VARCHAR2(2 CHAR) NOT NULL,
    cas_od VARCHAR2(5 CHAR) NOT NULL,
    cas_do VARCHAR2(5 CHAR) NOT NULL,
    kapacita SMALLINT NOT NULL,
    krouzek_id INTEGER NOT NULL,
    mistnost_id INTEGER NOT NULL,
    vedouci_id INTEGER NOT NULL
);

/* PRIMARY KEY */

ALTER TABLE rozvrhova_akce
    ADD CONSTRAINT rozvrhova_akce_pk PRIMARY KEY(rozvrhova_akce_id);

/* FOREIGN KEY */

ALTER TABLE rozvrhova_akce
    ADD CONSTRAINT rozvrhova_akce_krouzek_fk FOREIGN KEY(krouzek_id)
        REFERENCES krouzek(krouzek_id);

ALTER TABLE rozvrhova_akce
    ADD CONSTRAINT rozvrhova_akce_mistnost_fk FOREIGN KEY(mistnost_id)
        REFERENCES mistnost(mistnost_id);

ALTER TABLE rozvrhova_akce
    ADD CONSTRAINT rozvrhova_akce_vedouci_fk FOREIGN KEY(vedouci_id)
        REFERENCES vedouci(vedouci_id);

/* Den */

ALTER TABLE rozvrhova_akce
    ADD CONSTRAINT mozne_dny CHECK (
        den = 'PO' OR
        den = 'ÚT' OR
        den = 'ST' OR
        den = 'ÈT' OR
        den = 'PÁ'
    );

/* ---------------------------- PRIHLASKA ----------------------------------- */

CREATE TABLE prihlaska (
    prihlaska_id INTEGER NOT NULL,
    datum_podani DATE NOT NULL,
    dite_id INTEGER NOT NULL,
    rozvrhova_akce_id INTEGER NOT NULL
);

/* PRIMARY KEY */

ALTER TABLE prihlaska
    ADD CONSTRAINT prihlaska_pk PRIMARY KEY(prihlaska_id);

/* FOREIGN KEY */

ALTER TABLE prihlaska
    ADD CONSTRAINT prihlaska_dite_fk FOREIGN KEY(dite_id)
        REFERENCES dite(dite_id);

ALTER TABLE prihlaska
    ADD CONSTRAINT prihlaska_rozvrhova_akce_fk FOREIGN KEY(rozvrhova_akce_id)
        REFERENCES rozvrhova_akce(rozvrhova_akce_id);
