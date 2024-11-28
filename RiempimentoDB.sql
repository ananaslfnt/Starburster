-- Riempimento tabella EQUIPAGGI
INSERT INTO EQUIPAGGI (Codice, Nome, Cognome, Ruolo) VALUES ('E0001', 'Mario', 'Rossi', 'Pilota');
INSERT INTO EQUIPAGGI (Codice, Nome, Cognome, Ruolo) VALUES ('E0002', 'Luca', 'Bianchi', 'Ingegnere');
INSERT INTO EQUIPAGGI (Codice, Nome, Cognome, Ruolo) VALUES ('E0003', 'Sara', 'Verdi', 'Scienziato');
INSERT INTO EQUIPAGGI (Codice, Nome, Cognome, Ruolo) VALUES ('E0004', 'Anna', 'Neri', 'Medico');
INSERT INTO EQUIPAGGI (Codice, Nome, Cognome, Ruolo) VALUES ('E0005', 'Paolo', 'Gialli', 'Operatore');

-- Riempimento tabella MISSIONI
INSERT INTO MISSIONI (Codice, Data_inizio, Data_fine, Stato, Tipologia) VALUES ('M0001', TO_DATE('2023-01-01', 'YYYY-MM-DD'), NULL, 'Pianificata', 'Mappatura Geologica');
INSERT INTO MISSIONI (Codice, Data_inizio, Data_fine, Stato, Tipologia) VALUES ('M0002', TO_DATE('2023-02-01', 'YYYY-MM-DD'), TO_DATE('2023-03-01', 'YYYY-MM-DD'), 'Completata', 'Rilevamento di Risorse');
INSERT INTO MISSIONI (Codice, Data_inizio, Data_fine, Stato, Tipologia) VALUES ('M0003', TO_DATE('2023-03-05', 'YYYY-MM-DD'), NULL, 'In Corso', 'Mappatura Geologica');
INSERT INTO MISSIONI (Codice, Data_inizio, Data_fine, Stato, Tipologia) VALUES ('M0004', TO_DATE('2023-04-01', 'YYYY-MM-DD'), TO_DATE('2023-04-15', 'YYYY-MM-DD'), 'Completata', 'Rilevamento di Risorse');
INSERT INTO MISSIONI (Codice, Data_inizio, Data_fine, Stato, Tipologia) VALUES ('M0005', TO_DATE('2023-05-01', 'YYYY-MM-DD'), NULL, 'Annullata', 'Mappatura Geologica');

-- Riempimento tabella ROBOT
INSERT INTO ROBOT (ID, Tipologia) VALUES (1, 'Esplorazione');
INSERT INTO ROBOT (ID, Tipologia) VALUES (2, 'Analisi Chimica');
INSERT INTO ROBOT (ID, Tipologia) VALUES (3, 'Campionamento');
INSERT INTO ROBOT (ID, Tipologia) VALUES (4, 'Fotografia');
INSERT INTO ROBOT (ID, Tipologia) VALUES (5, 'Rilevamento Gas');

-- Riempimento tabella SENSORI
INSERT INTO SENSORI (ID, Tipologia, Data_last_check, Data_installazione, Stato, Latitudine, Longitudine, Altitudine) VALUES (1, 'Temperatura', TO_DATE('2023-06-01', 'YYYY-MM-DD'), TO_DATE('2023-01-01', 'YYYY-MM-DD'), 'Attivo', '40.7128N', '74.0060W', '10m');
INSERT INTO SENSORI (ID, Tipologia, Data_last_check, Data_installazione, Stato, Latitudine, Longitudine, Altitudine) VALUES (2, 'Pressione', TO_DATE('2023-06-01', 'YYYY-MM-DD'), TO_DATE('2023-01-05', 'YYYY-MM-DD'), 'Stand-By', '41.9028N', '12.4964E', '12m');
INSERT INTO SENSORI (ID, Tipologia, Data_last_check, Data_installazione, Stato, Latitudine, Longitudine, Altitudine) VALUES (3, 'Gas', TO_DATE('2023-06-01', 'YYYY-MM-DD'), TO_DATE('2023-01-10', 'YYYY-MM-DD'), 'Manutenzione', '48.8566N', '2.3522E', '15m');
INSERT INTO SENSORI (ID, Tipologia, Data_last_check, Data_installazione, Stato, Latitudine, Longitudine, Altitudine) VALUES (4, 'Radiazioni', TO_DATE('2023-06-01', 'YYYY-MM-DD'), TO_DATE('2023-01-15', 'YYYY-MM-DD'), 'Malfunzionante', '34.0522N', '118.2437W', '5m');
INSERT INTO SENSORI (ID, Tipologia, Data_last_check, Data_installazione, Stato, Latitudine, Longitudine, Altitudine) VALUES (5, 'Geologia', TO_DATE('2023-06-01', 'YYYY-MM-DD'), TO_DATE('2023-01-20', 'YYYY-MM-DD'), 'Attivo', '35.6895N', '139.6917E', '8m');

-- Riempimento tabella RILEVAZIONI
INSERT INTO RILEVAZIONI (Codice, Data_ora, Valore, Sensore) VALUES (1, TO_DATE('2023-07-01 12:00:00', 'YYYY-MM-DD HH24:MI:SS'), 25.5, 1);
INSERT INTO RILEVAZIONI (Codice, Data_ora, Valore, Sensore) VALUES (2, TO_DATE('2023-07-01 13:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1013, 2);
INSERT INTO RILEVAZIONI (Codice, Data_ora, Valore, Sensore) VALUES (3, TO_DATE('2023-07-01 14:00:00', 'YYYY-MM-DD HH24:MI:SS'), 0.05, 3);
INSERT INTO RILEVAZIONI (Codice, Data_ora, Valore, Sensore) VALUES (4, TO_DATE('2023-07-01 15:00:00', 'YYYY-MM-DD HH24:MI:SS'), 0.12, 4);
INSERT INTO RILEVAZIONI (Codice, Data_ora, Valore, Sensore) VALUES (5, TO_DATE('2023-07-01 16:00:00', 'YYYY-MM-DD HH24:MI:SS'), 7.8, 5);

-- Riempimento tabella ANOMALIE
INSERT INTO ANOMALIE (Codice, Data_ora, Priorita, Causa, Sensore) VALUES (1, TO_DATE('2023-07-01 12:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Alta', 'Sovratemperatura rilevata', 1);
INSERT INTO ANOMALIE (Codice, Data_ora, Priorita, Causa, Sensore) VALUES (2, TO_DATE('2023-07-01 13:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Critica', 'Perdita di pressione', 2);
INSERT INTO ANOMALIE (Codice, Data_ora, Priorita, Causa, Sensore) VALUES (3, TO_DATE('2023-07-01 14:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Media', 'Fuga di gas rilevata', 3);
INSERT INTO ANOMALIE (Codice, Data_ora, Priorita, Causa, Sensore) VALUES (4, TO_DATE('2023-07-01 15:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Bassa', 'Radiazioni anomale', 4);
INSERT INTO ANOMALIE (Codice, Data_ora, Priorita, Causa, Sensore) VALUES (5, TO_DATE('2023-07-01 16:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Media', 'Anomalia geologica', 5);

-- Riempimento tabella INTERVENTI
INSERT INTO INTERVENTI (Codice, Descrizione, Data_esecuzione, Esito, Anomalia) VALUES (1, 'Riparazione sensore di temperatura', TO_DATE('2023-07-02', 'YYYY-MM-DD'), 'Successo', 1);
INSERT INTO INTERVENTI (Codice, Descrizione, Data_esecuzione, Esito, Anomalia) VALUES (2, 'Sostituzione sensore di pressione', TO_DATE('2023-07-02', 'YYYY-MM-DD'), 'Successo', 2);
INSERT INTO INTERVENTI (Codice, Descrizione, Data_esecuzione, Esito, Anomalia) VALUES (3, 'Controllo sensore di gas', TO_DATE('2023-07-02', 'YYYY-MM-DD'), 'In corso', 3);
INSERT INTO INTERVENTI (Codice, Descrizione, Data_esecuzione, Esito, Anomalia) VALUES (4, 'Verifica sensore di radiazioni', TO_DATE('2023-07-02', 'YYYY-MM-DD'), 'Fallito', 4);
INSERT INTO INTERVENTI (Codice, Descrizione, Data_esecuzione, Esito, Anomalia) VALUES (5, 'Manutenzione sensore di geologia', TO_DATE('2023-07-02', 'YYYY-MM-DD'), 'In attesa', 5);

-- Riempimento tabella REPORT
INSERT INTO REPORT (Codice, Titolo, Descrizione, Data_ora, Equipaggio, Missione) VALUES ('R0001', 'Report 1', 'Descrizione del report 1', TO_DATE('2023-07-01 17:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'E0001', 'M0001');
INSERT INTO REPORT (Codice, Titolo, Descrizione, Data_ora, Equipaggio, Missione) VALUES ('R0002', 'Report 2', 'Descrizione del report 2', TO_DATE('2023-07-01 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'E0002', 'M0002');
INSERT INTO REPORT (Codice, Titolo, Descrizione, Data_ora, Equipaggio, Missione) VALUES ('R0003', 'Report 3', 'Descrizione del report 3', TO_DATE('2023-07-01 19:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'E0003', 'M0003');
INSERT INTO REPORT (Codice, Titolo, Descrizione, Data_ora, Equipaggio, Missione) VALUES ('R0004', 'Report 4', 'Descrizione del report 4', TO_DATE('2023-07-01 20:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'E0004', 'M0004');
INSERT INTO REPORT (Codice, Titolo, Descrizione, Data_ora, Equipaggio, Missione) VALUES ('R0005', 'Report 5', 'Descrizione del report 5', TO_DATE('2023-07-01 21:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'E0005', 'M0005');

-- Riempimento tabella EQUIPAGGIMISSIONI
INSERT INTO EQUIPAGGIMISSIONI (Equipaggio, Missione) VALUES ('E0001', 'M0001');
INSERT INTO EQUIPAGGIMISSIONI (Equipaggio, Missione) VALUES ('E0002', 'M0002');
INSERT INTO EQUIPAGGIMISSIONI (Equipaggio, Missione) VALUES ('E0003', 'M0003');
INSERT INTO EQUIPAGGIMISSIONI (Equipaggio, Missione) VALUES ('E0004', 'M0004');
INSERT INTO EQUIPAGGIMISSIONI (Equipaggio, Missione) VALUES ('E0005', 'M0005');

-- Riempimento tabella ROBOTMISSIONI
INSERT INTO ROBOTMISSIONI (Robot, Missione) VALUES (1, 'M0001');
INSERT INTO ROBOTMISSIONI (Robot, Missione) VALUES (2, 'M0002');
INSERT INTO ROBOTMISSIONI (Robot, Missione) VALUES (3, 'M0003');
INSERT INTO ROBOTMISSIONI (Robot, Missione) VALUES (4, 'M0004');
INSERT INTO ROBOTMISSIONI (Robot, Missione) VALUES (5, 'M0005');

-- Riempimento tabella SENSORIMISSIONI
INSERT INTO SENSORIMISSIONI (Sensore, Missione) VALUES (1, 'M0001');
INSERT INTO SENSORIMISSIONI (Sensore, Missione) VALUES (2, 'M0002');
INSERT INTO SENSORIMISSIONI (Sensore, Missione) VALUES (3, 'M0003');
INSERT INTO SENSORIMISSIONI (Sensore, Missione) VALUES (4, 'M0004');
INSERT INTO SENSORIMISSIONI (Sensore, Missione) VALUES (5, 'M0005');

-- Riempimento tabella EQUIPAGGIINTERVENTI
INSERT INTO EQUIPAGGIINTERVENTI (Equipaggio, Intervento) VALUES ('E0001', 1);
INSERT INTO EQUIPAGGIINTERVENTI (Equipaggio, Intervento) VALUES ('E0002', 2);
INSERT INTO EQUIPAGGIINTERVENTI (Equipaggio, Intervento) VALUES ('E0003', 3);
INSERT INTO EQUIPAGGIINTERVENTI (Equipaggio, Intervento) VALUES ('E0004', 4);
INSERT INTO EQUIPAGGIINTERVENTI (Equipaggio, Intervento) VALUES ('E0005', 5);
