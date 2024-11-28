CREATE TABLE EQUIPAGGI( 
Codice CHAR(10), 
Nome VARCHAR(30) NOT NULL, 
Cognome VARCHAR(30) NOT NULL, 
Ruolo VARCHAR(30) NOT NULL, 
CONSTRAINT PK_EQUIPAGGI PRIMARY KEY(Codice) 
);

CREATE TABLE MISSIONI( 
Codice CHAR(10), 
Data_inizio DATE NOT NULL, 
Data_fine DATE, 
Stato VARCHAR(11) NOT NULL, 
Tipologia VARCHAR(22) NOT NULL, 
CONSTRAINT PK_MISSIONI PRIMARY KEY(Codice), 
CONSTRAINT CK_STATO_MISSIONI CHECK(Stato='Pianificata' OR Stato='In Corso' OR Stato='Completata' OR Stato='Annullata'), 
CONSTRAINT CK_TIPOLOGIA_MISSIONI CHECK(Tipologia='Mappatura Geologica' OR Tipologia='Rilevamento di Risorse') 
);

CREATE TABLE ROBOT( 
ID NUMBER, 
Tipologia VARCHAR(20) NOT NULL, 
CONSTRAINT PK_ROBOT PRIMARY KEY(ID) 
);

CREATE TABLE SENSORI( 
ID NUMBER, 
Tipologia VARCHAR(11) NOT NULL, 
Data_last_check DATE NOT NULL, 
Data_installazione DATE NOT NULL, 
Stato VARCHAR(14) NOT NULL, 
Latitudine VARCHAR(20) NOT NULL, 
Longitudine VARCHAR(20) NOT NULL, 
Altitudine VARCHAR(20) NOT NULL, 
CONSTRAINT PK_SENSORI PRIMARY KEY(ID), 
CONSTRAINT CK_TIPOLOGIA_SENSORI CHECK(Tipologia='Temperatura' OR Tipologia='Pressione' OR Tipologia='Gas' OR Tipologia='Radiazioni' OR Tipologia='Geologia'), 
CONSTRAINT CK_STATO_SENSORI CHECK(Stato='Attivo' OR Stato='Stand-By' OR Stato='Manutenzione' OR Stato='Malfunzionante') 
);

CREATE TABLE RILEVAZIONI( 
Codice NUMBER, 
Data_ora DATE NOT NULL, 
Valore NUMBER NOT NULL, 
Sensore NUMBER NOT NULL, 
CONSTRAINT PK_RIVELAZIONI PRIMARY KEY(Codice) 
);

CREATE TABLE ANOMALIE( 
Codice NUMBER, 
Data_ora DATE NOT NULL, 
Priorita VARCHAR(7) NOT NULL, 
Causa CLOB NOT NULL, 
Sensore NUMBER NOT NULL, 
CONSTRAINT PK_ANOMALIE PRIMARY KEY(Codice), 
CONSTRAINT CK_PRIORITA CHECK(Priorita='Bassa' OR Priorita='Media' OR Priorita='Alta' OR Priorita='Critica') 
);

CREATE TABLE INTERVENTI( 
Codice NUMBER, 
Descrizione VARCHAR(100) NOT NULL, 
Data_esecuzione DATE NOT NULL, 
Esito VARCHAR(30), 
Anomalia NUMBER NOT NULL, 
CONSTRAINT PK_INTERVENTI PRIMARY KEY(Codice) 
);

CREATE TABLE REPORT( 
Codice VARCHAR(10), 
Titolo VARCHAR(15) NOT NULL, 
Descrizione CLOB NOT NULL, 
Data_ora DATE NOT NULL, 
Equipaggio CHAR(10) NOT NULL, 
Missione CHAR(10) NOT NULL, 
CONSTRAINT PK_REPORT PRIMARY KEY(Codice) 
);

CREATE TABLE EQUIPAGGIMISSIONI( 
Equipaggio CHAR(10), 
Missione CHAR(10), 
CONSTRAINT PK_EQUIPAGGIMISSIONI PRIMARY KEY(Equipaggio, Missione) 
);

CREATE TABLE ROBOTMISSIONI( 
Robot NUMBER, 
Missione CHAR(10), 
CONSTRAINT PK_ROBOTMISSIONI PRIMARY KEY(Robot, Missione) 
);

CREATE TABLE SENSORIMISSIONI( 
Sensore NUMBER, 
Missione CHAR(10), 
CONSTRAINT PK_SENSORIMISSIONI PRIMARY KEY(Sensore, Missione) 
);

CREATE TABLE EQUIPAGGIINTERVENTI( 
Equipaggio CHAR(10), 
Intervento NUMBER, 
CONSTRAINT PK_EQUIPAGGIINTERVENTI PRIMARY KEY(Equipaggio, Intervento) 
);

ALTER TABLE RILEVAZIONI ADD CONSTRAINT FK_RILEVAZIONI_SENSORI FOREIGN KEY(Sensore) REFERENCES Sensori(ID);

ALTER TABLE ANOMALIE ADD CONSTRAINT FK_ANOMALIE_SENSORI FOREIGN KEY(Sensore) REFERENCES Sensori(ID);

ALTER TABLE INTERVENTI ADD CONSTRAINT FK_INTERVENTI_ANOMALIE FOREIGN KEY(Anomalia) REFERENCES Anomalie(Codice);

ALTER TABLE REPORT ADD CONSTRAINT FK_REPORT_EQUIPAGGI FOREIGN KEY(Equipaggio) REFERENCES Equipaggi(Codice);

ALTER TABLE REPORT ADD CONSTRAINT FK_REPORT_MISSIONI FOREIGN KEY(Missione) REFERENCES Missioni(Codice);

ALTER TABLE EQUIPAGGIMISSIONI ADD CONSTRAINT FK_EQUIPAGGIMISSIONI_EQUIPAGGI FOREIGN KEY(Equipaggio) REFERENCES Equipaggi(Codice);

ALTER TABLE EQUIPAGGIMISSIONI ADD CONSTRAINT FK_EQUIPAGGIMISSIONI_MISSIONI FOREIGN KEY(Missione) REFERENCES Missioni(Codice);

ALTER TABLE ROBOTMISSIONI ADD CONSTRAINT FK_ROBOTMISSIONI_ROBOT FOREIGN KEY(Robot) REFERENCES Robot(ID);

ALTER TABLE ROBOTMISSIONI ADD CONSTRAINT FK_ROBOTMISSIONI_MISSIONI FOREIGN KEY(Missione) REFERENCES Missioni(Codice);

ALTER TABLE SENSORIMISSIONI ADD CONSTRAINT FK_SENSORIMISSIONI_SENSORI FOREIGN KEY(Sensore) REFERENCES Sensori(ID);

ALTER TABLE SENSORIMISSIONI ADD CONSTRAINT FK_SENSORIMISSIONI_MISSIONI FOREIGN KEY(Missione) REFERENCES Missioni(Codice);

ALTER TABLE EQUIPAGGIINTERVENTI ADD CONSTRAINT FK_EQUIPAGGIINTERVENTI_EQUIPAGGI FOREIGN KEY(Equipaggio) REFERENCES Equipaggi(Codice);

ALTER TABLE EQUIPAGGIINTERVENTI ADD CONSTRAINT FK_EQUIPAGGIINTERVENTI_INTERVENTI FOREIGN KEY(Intervento) REFERENCES Interventi(Codice);

INSERT INTO EQUIPAGGI (Codice, Nome, Cognome, Ruolo) VALUES ('E0001', 'Mario', 'Rossi', 'Pilota');

INSERT INTO EQUIPAGGI (Codice, Nome, Cognome, Ruolo) VALUES ('E0002', 'Luca', 'Bianchi', 'Ingegnere');

INSERT INTO EQUIPAGGI (Codice, Nome, Cognome, Ruolo) VALUES ('E0003', 'Sara', 'Verdi', 'Scienziato');

INSERT INTO EQUIPAGGI (Codice, Nome, Cognome, Ruolo) VALUES ('E0004', 'Anna', 'Neri', 'Medico');

INSERT INTO EQUIPAGGI (Codice, Nome, Cognome, Ruolo) VALUES ('E0005', 'Paolo', 'Gialli', 'Operatore');

INSERT INTO MISSIONI (Codice, Data_inizio, Data_fine, Stato, Tipologia) VALUES ('M0001', TO_DATE('2023-01-01', 'YYYY-MM-DD'), NULL, 'Pianificata', 'Mappatura Geologica');

INSERT INTO MISSIONI (Codice, Data_inizio, Data_fine, Stato, Tipologia) VALUES ('M0002', TO_DATE('2023-02-01', 'YYYY-MM-DD'), TO_DATE('2023-03-01', 'YYYY-MM-DD'), 'Completata', 'Rilevamento di Risorse');

INSERT INTO MISSIONI (Codice, Data_inizio, Data_fine, Stato, Tipologia) VALUES ('M0003', TO_DATE('2023-03-05', 'YYYY-MM-DD'), NULL, 'In Corso', 'Mappatura Geologica');

INSERT INTO MISSIONI (Codice, Data_inizio, Data_fine, Stato, Tipologia) VALUES ('M0004', TO_DATE('2023-04-01', 'YYYY-MM-DD'), TO_DATE('2023-04-15', 'YYYY-MM-DD'), 'Completata', 'Rilevamento di Risorse');

INSERT INTO MISSIONI (Codice, Data_inizio, Data_fine, Stato, Tipologia) VALUES ('M0005', TO_DATE('2023-05-01', 'YYYY-MM-DD'), NULL, 'Annullata', 'Mappatura Geologica');

INSERT INTO ROBOT (ID, Tipologia) VALUES (1, 'Esplorazione');

INSERT INTO ROBOT (ID, Tipologia) VALUES (2, 'Analisi Chimica');

INSERT INTO ROBOT (ID, Tipologia) VALUES (3, 'Campionamento');

INSERT INTO ROBOT (ID, Tipologia) VALUES (4, 'Fotografia');

INSERT INTO ROBOT (ID, Tipologia) VALUES (5, 'Rilevamento Gas');

INSERT INTO SENSORI (ID, Tipologia, Data_last_check, Data_installazione, Stato, Latitudine, Longitudine, Altitudine) VALUES (1, 'Temperatura', TO_DATE('2023-06-01', 'YYYY-MM-DD'), TO_DATE('2023-01-01', 'YYYY-MM-DD'), 'Attivo', '40.7128N', '74.0060W', '10m');

INSERT INTO SENSORI (ID, Tipologia, Data_last_check, Data_installazione, Stato, Latitudine, Longitudine, Altitudine) VALUES (2, 'Pressione', TO_DATE('2023-06-01', 'YYYY-MM-DD'), TO_DATE('2023-01-05', 'YYYY-MM-DD'), 'Stand-By', '41.9028N', '12.4964E', '12m');

INSERT INTO SENSORI (ID, Tipologia, Data_last_check, Data_installazione, Stato, Latitudine, Longitudine, Altitudine) VALUES (3, 'Gas', TO_DATE('2023-06-01', 'YYYY-MM-DD'), TO_DATE('2023-01-10', 'YYYY-MM-DD'), 'Manutenzione', '48.8566N', '2.3522E', '15m');

INSERT INTO SENSORI (ID, Tipologia, Data_last_check, Data_installazione, Stato, Latitudine, Longitudine, Altitudine) VALUES (4, 'Radiazioni', TO_DATE('2023-06-01', 'YYYY-MM-DD'), TO_DATE('2023-01-15', 'YYYY-MM-DD'), 'Malfunzionante', '34.0522N', '118.2437W', '5m');

INSERT INTO SENSORI (ID, Tipologia, Data_last_check, Data_installazione, Stato, Latitudine, Longitudine, Altitudine) VALUES (5, 'Geologia', TO_DATE('2023-06-01', 'YYYY-MM-DD'), TO_DATE('2023-01-20', 'YYYY-MM-DD'), 'Attivo', '35.6895N', '139.6917E', '8m');

INSERT INTO RILEVAZIONI (Codice, Data_ora, Valore, Sensore) VALUES (1, TO_DATE('2023-07-01 12:00:00', 'YYYY-MM-DD HH24:MI:SS'), 25.5, 1);

INSERT INTO RILEVAZIONI (Codice, Data_ora, Valore, Sensore) VALUES (2, TO_DATE('2023-07-01 13:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1013, 2);

INSERT INTO RILEVAZIONI (Codice, Data_ora, Valore, Sensore) VALUES (3, TO_DATE('2023-07-01 14:00:00', 'YYYY-MM-DD HH24:MI:SS'), 0.05, 3);

INSERT INTO RILEVAZIONI (Codice, Data_ora, Valore, Sensore) VALUES (4, TO_DATE('2023-07-01 15:00:00', 'YYYY-MM-DD HH24:MI:SS'), 0.12, 4);

INSERT INTO RILEVAZIONI (Codice, Data_ora, Valore, Sensore) VALUES (5, TO_DATE('2023-07-01 16:00:00', 'YYYY-MM-DD HH24:MI:SS'), 7.8, 5);

INSERT INTO ANOMALIE (Codice, Data_ora, Priorita, Causa, Sensore) VALUES (1, TO_DATE('2023-07-01 12:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Alta', 'Sovratemperatura rilevata', 1);

INSERT INTO ANOMALIE (Codice, Data_ora, Priorita, Causa, Sensore) VALUES (2, TO_DATE('2023-07-01 13:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Critica', 'Perdita di pressione', 2);

INSERT INTO ANOMALIE (Codice, Data_ora, Priorita, Causa, Sensore) VALUES (3, TO_DATE('2023-07-01 14:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Media', 'Fuga di gas rilevata', 3);

INSERT INTO ANOMALIE (Codice, Data_ora, Priorita, Causa, Sensore) VALUES (4, TO_DATE('2023-07-01 15:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Bassa', 'Radiazioni anomale', 4);

INSERT INTO ANOMALIE (Codice, Data_ora, Priorita, Causa, Sensore) VALUES (5, TO_DATE('2023-07-01 16:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Media', 'Anomalia geologica', 5);

INSERT INTO INTERVENTI (Codice, Descrizione, Data_esecuzione, Esito, Anomalia) VALUES (1, 'Riparazione sensore di temperatura', TO_DATE('2023-07-02', 'YYYY-MM-DD'), 'Successo', 1);

INSERT INTO INTERVENTI (Codice, Descrizione, Data_esecuzione, Esito, Anomalia) VALUES (2, 'Sostituzione sensore di pressione', TO_DATE('2023-07-02', 'YYYY-MM-DD'), 'Successo', 2);

INSERT INTO INTERVENTI (Codice, Descrizione, Data_esecuzione, Esito, Anomalia) VALUES (3, 'Controllo sensore di gas', TO_DATE('2023-07-02', 'YYYY-MM-DD'), 'In corso', 3);

INSERT INTO INTERVENTI (Codice, Descrizione, Data_esecuzione, Esito, Anomalia) VALUES (4, 'Verifica sensore di radiazioni', TO_DATE('2023-07-02', 'YYYY-MM-DD'), 'Fallito', 4);

INSERT INTO INTERVENTI (Codice, Descrizione, Data_esecuzione, Esito, Anomalia) VALUES (5, 'Manutenzione sensore di geologia', TO_DATE('2023-07-02', 'YYYY-MM-DD'), 'In attesa', 5);

INSERT INTO REPORT (Codice, Titolo, Descrizione, Data_ora, Equipaggio, Missione) VALUES ('R0001', 'Report 1', 'Descrizione del report 1', TO_DATE('2023-07-01 17:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'E0001', 'M0001');

INSERT INTO REPORT (Codice, Titolo, Descrizione, Data_ora, Equipaggio, Missione) VALUES ('R0002', 'Report 2', 'Descrizione del report 2', TO_DATE('2023-07-01 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'E0002', 'M0002');

INSERT INTO REPORT (Codice, Titolo, Descrizione, Data_ora, Equipaggio, Missione) VALUES ('R0003', 'Report 3', 'Descrizione del report 3', TO_DATE('2023-07-01 19:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'E0003', 'M0003');

INSERT INTO REPORT (Codice, Titolo, Descrizione, Data_ora, Equipaggio, Missione) VALUES ('R0004', 'Report 4', 'Descrizione del report 4', TO_DATE('2023-07-01 20:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'E0004', 'M0004');

INSERT INTO REPORT (Codice, Titolo, Descrizione, Data_ora, Equipaggio, Missione) VALUES ('R0005', 'Report 5', 'Descrizione del report 5', TO_DATE('2023-07-01 21:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'E0005', 'M0005');

INSERT INTO EQUIPAGGIMISSIONI (Equipaggio, Missione) VALUES ('E0001', 'M0001');

INSERT INTO EQUIPAGGIMISSIONI (Equipaggio, Missione) VALUES ('E0002', 'M0002');

INSERT INTO EQUIPAGGIMISSIONI (Equipaggio, Missione) VALUES ('E0003', 'M0003');

INSERT INTO EQUIPAGGIMISSIONI (Equipaggio, Missione) VALUES ('E0004', 'M0004');

INSERT INTO EQUIPAGGIMISSIONI (Equipaggio, Missione) VALUES ('E0005', 'M0005');

INSERT INTO ROBOTMISSIONI (Robot, Missione) VALUES (1, 'M0001');

INSERT INTO ROBOTMISSIONI (Robot, Missione) VALUES (2, 'M0002');

INSERT INTO ROBOTMISSIONI (Robot, Missione) VALUES (3, 'M0003');

INSERT INTO ROBOTMISSIONI (Robot, Missione) VALUES (4, 'M0004');

INSERT INTO ROBOTMISSIONI (Robot, Missione) VALUES (5, 'M0005');

INSERT INTO SENSORIMISSIONI (Sensore, Missione) VALUES (1, 'M0001');

INSERT INTO SENSORIMISSIONI (Sensore, Missione) VALUES (2, 'M0002');

INSERT INTO SENSORIMISSIONI (Sensore, Missione) VALUES (3, 'M0003');

INSERT INTO SENSORIMISSIONI (Sensore, Missione) VALUES (4, 'M0004');

INSERT INTO SENSORIMISSIONI (Sensore, Missione) VALUES (5, 'M0005');

INSERT INTO EQUIPAGGIINTERVENTI (Equipaggio, Intervento) VALUES ('E0001', 1);

INSERT INTO EQUIPAGGIINTERVENTI (Equipaggio, Intervento) VALUES ('E0002', 2);

INSERT INTO EQUIPAGGIINTERVENTI (Equipaggio, Intervento) VALUES ('E0003', 3);

INSERT INTO EQUIPAGGIINTERVENTI (Equipaggio, Intervento) VALUES ('E0004', 4);

INSERT INTO EQUIPAGGIINTERVENTI (Equipaggio, Intervento) VALUES ('E0005', 5);

