-- Riempimento tabella EQUIPAGGI
INSERT INTO EQUIPAGGI (Codice, Nome, Cognome, Ruolo) VALUES ('E0001', 'Mario', 'Rossi', 'Pilota');
INSERT INTO EQUIPAGGI (Codice, Nome, Cognome, Ruolo) VALUES ('E0002', 'Luca', 'Bianchi', 'Ingegnere');
INSERT INTO EQUIPAGGI (Codice, Nome, Cognome, Ruolo) VALUES ('E0003', 'Sara', 'Verdi', 'Scienziato');
INSERT INTO EQUIPAGGI (Codice, Nome, Cognome, Ruolo) VALUES ('E0004', 'Anna', 'Neri', 'Medico');
INSERT INTO EQUIPAGGI (Codice, Nome, Cognome, Ruolo) VALUES ('E0005', 'Paolo', 'Gialli', 'Operatore');
INSERT INTO EQUIPAGGI (Codice, Nome, Cognome, Ruolo) VALUES ('E0006', 'Francesca', 'Blu', 'Tecnico');
INSERT INTO EQUIPAGGI (Codice, Nome, Cognome, Ruolo) VALUES ('E0007', 'Giorgio', 'Viola', 'Pilota');
INSERT INTO EQUIPAGGI (Codice, Nome, Cognome, Ruolo) VALUES ('E0008', 'Martina', 'Marroni', 'Ingegnere');
INSERT INTO EQUIPAGGI (Codice, Nome, Cognome, Ruolo) VALUES ('E0009', 'Simone', 'Rossi', 'Scienziato');
INSERT INTO EQUIPAGGI (Codice, Nome, Cognome, Ruolo) VALUES ('E0010', 'Giulia', 'Bianchi', 'Medico');
INSERT INTO EQUIPAGGI (Codice, Nome, Cognome, Ruolo) VALUES ('E0011', 'Federico', 'Verdi', 'Operatore');
INSERT INTO EQUIPAGGI (Codice, Nome, Cognome, Ruolo) VALUES ('E0012', 'Chiara', 'Neri', 'Tecnico');
INSERT INTO EQUIPAGGI (Codice, Nome, Cognome, Ruolo) VALUES ('E0013', 'Alessandro', 'Gialli', 'Pilota');
INSERT INTO EQUIPAGGI (Codice, Nome, Cognome, Ruolo) VALUES ('E0014', 'Elena', 'Blu', 'Ingegnere');
INSERT INTO EQUIPAGGI (Codice, Nome, Cognome, Ruolo) VALUES ('E0015', 'Stefano', 'Viola', 'Scienziato');
INSERT INTO EQUIPAGGI (Codice, Nome, Cognome, Ruolo) VALUES ('E0016', 'Valentina', 'Marroni', 'Medico');
INSERT INTO EQUIPAGGI (Codice, Nome, Cognome, Ruolo) VALUES ('E0017', 'Fabio', 'Rossi', 'Operatore');
INSERT INTO EQUIPAGGI (Codice, Nome, Cognome, Ruolo) VALUES ('E0018', 'Laura', 'Bianchi', 'Tecnico');
INSERT INTO EQUIPAGGI (Codice, Nome, Cognome, Ruolo) VALUES ('E0019', 'Massimo', 'Verdi', 'Pilota');
INSERT INTO EQUIPAGGI (Codice, Nome, Cognome, Ruolo) VALUES ('E0020', 'Ilaria', 'Neri', 'Ingegnere');

-- Riempimento tabella MISSIONI
INSERT INTO MISSIONI (Codice, Data_inizio, Data_fine, Stato, Tipologia) VALUES ('M0001', TO_DATE('2023-01-01', 'YYYY-MM-DD'), NULL, 'Pianificata', 'Mappatura Geologica');
INSERT INTO MISSIONI (Codice, Data_inizio, Data_fine, Stato, Tipologia) VALUES ('M0002', TO_DATE('2023-02-01', 'YYYY-MM-DD'), TO_DATE('2023-03-01', 'YYYY-MM-DD'), 'Completata', 'Rilevamento di Risorse');
INSERT INTO MISSIONI (Codice, Data_inizio, Data_fine, Stato, Tipologia) VALUES ('M0003', TO_DATE('2023-03-05', 'YYYY-MM-DD'), NULL, 'In Corso', 'Mappatura Geologica');
INSERT INTO MISSIONI (Codice, Data_inizio, Data_fine, Stato, Tipologia) VALUES ('M0004', TO_DATE('2023-04-01', 'YYYY-MM-DD'), TO_DATE('2023-04-15', 'YYYY-MM-DD'), 'Completata', 'Rilevamento di Risorse');
INSERT INTO MISSIONI (Codice, Data_inizio, Data_fine, Stato, Tipologia) VALUES ('M0005', TO_DATE('2023-05-01', 'YYYY-MM-DD'), NULL, 'Annullata', 'Mappatura Geologica');
INSERT INTO MISSIONI (Codice, Data_inizio, Data_fine, Stato, Tipologia) VALUES ('M0006', TO_DATE('2023-06-01', 'YYYY-MM-DD'), NULL, 'Pianificata', 'Rilevamento di Risorse');
INSERT INTO MISSIONI (Codice, Data_inizio, Data_fine, Stato, Tipologia) VALUES ('M0007', TO_DATE('2023-07-01', 'YYYY-MM-DD'), NULL, 'In Corso', 'Mappatura Geologica');
INSERT INTO MISSIONI (Codice, Data_inizio, Data_fine, Stato, Tipologia) VALUES ('M0008', TO_DATE('2023-08-01', 'YYYY-MM-DD'), TO_DATE('2023-09-01', 'YYYY-MM-DD'), 'Completata', 'Rilevamento di Risorse');
INSERT INTO MISSIONI (Codice, Data_inizio, Data_fine, Stato, Tipologia) VALUES ('M0009', TO_DATE('2023-09-05', 'YYYY-MM-DD'), NULL, 'In Corso', 'Mappatura Geologica');
INSERT INTO MISSIONI (Codice, Data_inizio, Data_fine, Stato, Tipologia) VALUES ('M0010', TO_DATE('2023-10-01', 'YYYY-MM-DD'), NULL, 'Pianificata', 'Rilevamento di Risorse');
INSERT INTO MISSIONI (Codice, Data_inizio, Data_fine, Stato, Tipologia) VALUES ('M0011', TO_DATE('2023-11-01', 'YYYY-MM-DD'), TO_DATE('2023-12-01', 'YYYY-MM-DD'), 'Completata', 'Mappatura Geologica');
INSERT INTO MISSIONI (Codice, Data_inizio, Data_fine, Stato, Tipologia) VALUES ('M0012', TO_DATE('2023-12-01', 'YYYY-MM-DD'), NULL, 'In Corso', 'Rilevamento di Risorse');
INSERT INTO MISSIONI (Codice, Data_inizio, Data_fine, Stato, Tipologia) VALUES ('M0013', TO_DATE('2024-01-01', 'YYYY-MM-DD'), NULL, 'Pianificata', 'Mappatura Geologica');
INSERT INTO MISSIONI (Codice, Data_inizio, Data_fine, Stato, Tipologia) VALUES ('M0014', TO_DATE('2024-02-01', 'YYYY-MM-DD'), TO_DATE('2024-03-01', 'YYYY-MM-DD'), 'Completata', 'Rilevamento di Risorse');
INSERT INTO MISSIONI (Codice, Data_inizio, Data_fine, Stato, Tipologia) VALUES ('M0015', TO_DATE('2024-03-05', 'YYYY-MM-DD'), NULL, 'In Corso', 'Mappatura Geologica');
INSERT INTO MISSIONI (Codice, Data_inizio, Data_fine, Stato, Tipologia) VALUES ('M0016', TO_DATE('2024-04-01', 'YYYY-MM-DD'), NULL, 'Pianificata', 'Rilevamento di Risorse');
INSERT INTO MISSIONI (Codice, Data_inizio, Data_fine, Stato, Tipologia) VALUES ('M0017', TO_DATE('2024-05-01', 'YYYY-MM-DD'), NULL, 'In Corso', 'Mappatura Geologica');
INSERT INTO MISSIONI (Codice, Data_inizio, Data_fine, Stato, Tipologia) VALUES ('M0018', TO_DATE('2024-06-01', 'YYYY-MM-DD'), TO_DATE('2024-07-01', 'YYYY-MM-DD'), 'Completata', 'Rilevamento di Risorse');
INSERT INTO MISSIONI (Codice, Data_inizio, Data_fine, Stato, Tipologia) VALUES ('M0019', TO_DATE('2024-07-05', 'YYYY-MM-DD'), NULL, 'In Corso', 'Mappatura Geologica');
INSERT INTO MISSIONI (Codice, Data_inizio, Data_fine, Stato, Tipologia) VALUES ('M0020', TO_DATE('2024-08-01', 'YYYY-MM-DD'), NULL, 'Pianificata', 'Rilevamento di Risorse');

-- Riempimento tabella ROBOT
INSERT INTO ROBOT (ID, Tipologia) VALUES (1, 'Esplorazione');
INSERT INTO ROBOT (ID, Tipologia) VALUES (2, 'Analisi Chimica');
INSERT INTO ROBOT (ID, Tipologia) VALUES (3, 'Campionamento');
INSERT INTO ROBOT (ID, Tipologia) VALUES (4, 'Fotografia');
INSERT INTO ROBOT (ID, Tipologia) VALUES (5, 'Rilevamento Gas');
INSERT INTO ROBOT (ID, Tipologia) VALUES (6, 'Esplorazione');
INSERT INTO ROBOT (ID, Tipologia) VALUES (7, 'Analisi Chimica');
INSERT INTO ROBOT (ID, Tipologia) VALUES (8, 'Campionamento');
INSERT INTO ROBOT (ID, Tipologia) VALUES (9, 'Fotografia');
INSERT INTO ROBOT (ID, Tipologia) VALUES (10, 'Rilevamento Gas');
INSERT INTO ROBOT (ID, Tipologia) VALUES (11, 'Esplorazione');
INSERT INTO ROBOT (ID, Tipologia) VALUES (12, 'Analisi Chimica');
INSERT INTO ROBOT (ID, Tipologia) VALUES (13, 'Campionamento');
INSERT INTO ROBOT (ID, Tipologia) VALUES (14, 'Fotografia');
INSERT INTO ROBOT (ID, Tipologia) VALUES (15, 'Rilevamento Gas');
INSERT INTO ROBOT (ID, Tipologia) VALUES (16, 'Esplorazione');
INSERT INTO ROBOT (ID, Tipologia) VALUES (17, 'Analisi Chimica');
INSERT INTO ROBOT (ID, Tipologia) VALUES (18, 'Campionamento');
INSERT INTO ROBOT (ID, Tipologia) VALUES (19, 'Fotografia');
INSERT INTO ROBOT (ID, Tipologia) VALUES (20, 'Rilevamento Gas');

-- Riempimento tabella SENSORI
INSERT INTO SENSORI (ID, Tipologia, Data_last_check, Data_installazione, Stato, Latitudine, Longitudine, Altitudine) VALUES (1, 'Temperatura', TO_DATE('2023-06-01', 'YYYY-MM-DD'), TO_DATE('2023-01-01', 'YYYY-MM-DD'), 'Attivo', '40.7128N', '74.0060W', '10m');
INSERT INTO SENSORI (ID, Tipologia, Data_last_check, Data_installazione, Stato, Latitudine, Longitudine, Altitudine) VALUES (2, 'Pressione', TO_DATE('2023-06-01', 'YYYY-MM-DD'), TO_DATE('2023-01-05', 'YYYY-MM-DD'), 'Stand-By', '41.9028N', '12.4964E', '12m');
INSERT INTO SENSORI (ID, Tipologia, Data_last_check, Data_installazione, Stato, Latitudine, Longitudine, Altitudine) VALUES (3, 'Gas', TO_DATE('2023-06-01', 'YYYY-MM-DD'), TO_DATE('2023-01-10', 'YYYY-MM-DD'), 'Manutenzione', '48.8566N', '2.3522E', '15m');
INSERT INTO SENSORI (ID, Tipologia, Data_last_check, Data_installazione, Stato, Latitudine, Longitudine, Altitudine) VALUES (4, 'Radiazioni', TO_DATE('2023-06-01', 'YYYY-MM-DD'), TO_DATE('2023-01-15', 'YYYY-MM-DD'), 'Malfunzionante', '34.0522N', '118.2437W', '5m');
INSERT INTO SENSORI (ID, Tipologia, Data_last_check, Data_installazione, Stato, Latitudine, Longitudine, Altitudine) VALUES (5, 'Geologia', TO_DATE('2023-06-01', 'YYYY-MM-DD'), TO_DATE('2023-01-20', 'YYYY-MM-DD'), 'Attivo', '35.6895N', '139.6917E', '8m');
INSERT INTO SENSORI (ID, Tipologia, Data_last_check, Data_installazione, Stato, Latitudine, Longitudine, Altitudine) VALUES (6, 'Temperatura', TO_DATE('2023-06-01', 'YYYY-MM-DD'), TO_DATE('2023-01-25', 'YYYY-MM-DD'), 'Attivo', '37.7749N', '122.4194W', '9m');
INSERT INTO SENSORI (ID, Tipologia, Data_last_check, Data_installazione, Stato, Latitudine, Longitudine, Altitudine) VALUES (7, 'Pressione', TO_DATE('2023-06-01', 'YYYY-MM-DD'), TO_DATE('2023-02-01', 'YYYY-MM-DD'), 'Stand-By', '51.5074N', '0.1278W', '11m');
INSERT INTO SENSORI (ID, Tipologia, Data_last_check, Data_installazione, Stato, Latitudine, Longitudine, Altitudine) VALUES (8, 'Gas', TO_DATE('2023-06-01', 'YYYY-MM-DD'), TO_DATE('2023-02-05', 'YYYY-MM-DD'), 'Manutenzione', '52.5200N', '13.4050E', '10m');
INSERT INTO SENSORI (ID, Tipologia, Data_last_check, Data_installazione, Stato, Latitudine, Longitudine, Altitudine) VALUES (9, 'Radiazioni', TO_DATE('2023-06-01', 'YYYY-MM-DD'), TO_DATE('2023-02-10', 'YYYY-MM-DD'), 'Malfunzionante', '55.7558N', '37.6173E', '7m');
INSERT INTO SENSORI (ID, Tipologia, Data_last_check, Data_installazione, Stato, Latitudine, Longitudine, Altitudine) VALUES (10, 'Geologia', TO_DATE('2023-06-01', 'YYYY-MM-DD'), TO_DATE('2023-02-15', 'YYYY-MM-DD'), 'Attivo', '39.9042N', '116.4074E', '6m');
INSERT INTO SENSORI (ID, Tipologia, Data_last_check, Data_installazione, Stato, Latitudine, Longitudine, Altitudine) VALUES (11, 'Temperatura', TO_DATE('2023-06-01', 'YYYY-MM-DD'), TO_DATE('2023-02-20', 'YYYY-MM-DD'), 'Attivo', '35.6895N', '139.6917E', '5m');
INSERT INTO SENSORI (ID, Tipologia, Data_last_check, Data_installazione, Stato, Latitudine, Longitudine, Altitudine) VALUES (12, 'Pressione', TO_DATE('2023-06-01', 'YYYY-MM-DD'), TO_DATE('2023-02-25', 'YYYY-MM-DD'), 'Stand-By', '41.9028N', '12.4964E', '8m');
INSERT INTO SENSORI (ID, Tipologia, Data_last_check, Data_installazione, Stato, Latitudine, Longitudine, Altitudine) VALUES (13, 'Gas', TO_DATE('2023-06-01', 'YYYY-MM-DD'), TO_DATE('2023-03-01', 'YYYY-MM-DD'), 'Manutenzione', '48.8566N', '2.3522E', '10m');
INSERT INTO SENSORI (ID, Tipologia, Data_last_check, Data_installazione, Stato, Latitudine, Longitudine, Altitudine) VALUES (14, 'Radiazioni', TO_DATE('2023-06-01', 'YYYY-MM-DD'), TO_DATE('2023-03-05', 'YYYY-MM-DD'), 'Malfunzionante', '34.0522N', '118.2437W', '15m');
INSERT INTO SENSORI (ID, Tipologia, Data_last_check, Data_installazione, Stato, Latitudine, Longitudine, Altitudine) VALUES (15, 'Geologia', TO_DATE('2023-06-01', 'YYYY-MM-DD'), TO_DATE('2023-03-10', 'YYYY-MM-DD'), 'Attivo', '37.7749N', '122.4194W', '9m');
INSERT INTO SENSORI (ID, Tipologia, Data_last_check, Data_installazione, Stato, Latitudine, Longitudine, Altitudine) VALUES (16, 'Temperatura', TO_DATE('2023-06-01', 'YYYY-MM-DD'), TO_DATE('2023-03-15', 'YYYY-MM-DD'), 'Attivo', '51.5074N', '0.1278W', '7m');
INSERT INTO SENSORI (ID, Tipologia, Data_last_check, Data_installazione, Stato, Latitudine, Longitudine, Altitudine) VALUES (17, 'Pressione', TO_DATE('2023-06-01', 'YYYY-MM-DD'), TO_DATE('2023-03-20', 'YYYY-MM-DD'), 'Stand-By', '52.5200N', '13.4050E', '12m');

-- Riempimento tabella RILEVAZIONI
INSERT INTO RILEVAZIONI (Codice, Data_ora, Valore, Sensore) VALUES (1, TO_DATE('2023-07-01 12:00:00', 'YYYY-MM-DD HH24:MI:SS'), 25.5, 1);
INSERT INTO RILEVAZIONI (Codice, Data_ora, Valore, Sensore) VALUES (2, TO_DATE('2023-07-01 13:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1013, 2);
INSERT INTO RILEVAZIONI (Codice, Data_ora, Valore, Sensore) VALUES (3, TO_DATE('2023-07-01 14:00:00', 'YYYY-MM-DD HH24:MI:SS'), 0.05, 3);
INSERT INTO RILEVAZIONI (Codice, Data_ora, Valore, Sensore) VALUES (4, TO_DATE('2023-07-01 15:00:00', 'YYYY-MM-DD HH24:MI:SS'), 0.12, 4);
INSERT INTO RILEVAZIONI (Codice, Data_ora, Valore, Sensore) VALUES (5, TO_DATE('2023-07-01 16:00:00', 'YYYY-MM-DD HH24:MI:SS'), 7.8, 5);
INSERT INTO RILEVAZIONI (Codice, Data_ora, Valore, Sensore) VALUES (6, TO_DATE('2023-07-02 12:00:00', 'YYYY-MM-DD HH24:MI:SS'), 26.0, 1);
INSERT INTO RILEVAZIONI (Codice, Data_ora, Valore, Sensore) VALUES (7, TO_DATE('2023-07-02 13:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1012, 2);
INSERT INTO RILEVAZIONI (Codice, Data_ora, Valore, Sensore) VALUES (8, TO_DATE('2023-07-02 14:00:00', 'YYYY-MM-DD HH24:MI:SS'), 0.07, 3);
INSERT INTO RILEVAZIONI (Codice, Data_ora, Valore, Sensore) VALUES (9, TO_DATE('2023-07-02 15:00:00', 'YYYY-MM-DD HH24:MI:SS'), 0.15, 4);
INSERT INTO RILEVAZIONI (Codice, Data_ora, Valore, Sensore) VALUES (10, TO_DATE('2023-07-02 16:00:00', 'YYYY-MM-DD HH24:MI:SS'), 7.5, 5);
INSERT INTO RILEVAZIONI (Codice, Data_ora, Valore, Sensore) VALUES (11, TO_DATE('2023-07-03 12:00:00', 'YYYY-MM-DD HH24:MI:SS'), 25.2, 1);
INSERT INTO RILEVAZIONI (Codice, Data_ora, Valore, Sensore) VALUES (12, TO_DATE('2023-07-03 13:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1015, 2);
INSERT INTO RILEVAZIONI (Codice, Data_ora, Valore, Sensore) VALUES (13, TO_DATE('2023-07-03 14:00:00', 'YYYY-MM-DD HH24:MI:SS'), 0.08, 3);
INSERT INTO RILEVAZIONI (Codice, Data_ora, Valore, Sensore) VALUES (14, TO_DATE('2023-07-03 15:00:00', 'YYYY-MM-DD HH24:MI:SS'), 0.18, 4);
INSERT INTO RILEVAZIONI (Codice, Data_ora, Valore, Sensore) VALUES (15, TO_DATE('2023-07-03 16:00:00', 'YYYY-MM-DD HH24:MI:SS'), 7.9, 5);
INSERT INTO RILEVAZIONI (Codice, Data_ora, Valore, Sensore) VALUES (16, TO_DATE('2023-07-04 12:00:00', 'YYYY-MM-DD HH24:MI:SS'), 25.6, 1);
INSERT INTO RILEVAZIONI (Codice, Data_ora, Valore, Sensore) VALUES (17, TO_DATE('2023-07-04 13:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1011, 2);
INSERT INTO RILEVAZIONI (Codice, Data_ora, Valore, Sensore) VALUES (18, TO_DATE('2023-07-04 14:00:00', 'YYYY-MM-DD HH24:MI:SS'), 0.06, 3);
INSERT INTO RILEVAZIONI (Codice, Data_ora, Valore, Sensore) VALUES (19, TO_DATE('2023-07-04 15:00:00', 'YYYY-MM-DD HH24:MI:SS'), 0.14, 4);
INSERT INTO RILEVAZIONI (Codice, Data_ora, Valore, Sensore) VALUES (20, TO_DATE('2023-07-04 16:00:00', 'YYYY-MM-DD HH24:MI:SS'), 7.3, 5);

-- Riempimento tabella ANOMALIE
INSERT INTO ANOMALIE (Codice, Data_ora, Priorita, Causa, Sensore) VALUES (1, TO_DATE('2023-07-01 12:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Alta', 'Sovratemperatura rilevata', 1);
INSERT INTO ANOMALIE (Codice, Data_ora, Priorita, Causa, Sensore) VALUES (2, TO_DATE('2023-07-01 13:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Critica', 'Perdita di pressione', 2);
INSERT INTO ANOMALIE (Codice, Data_ora, Priorita, Causa, Sensore) VALUES (3, TO_DATE('2023-07-01 14:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Media', 'Fuga di gas rilevata', 3);
INSERT INTO ANOMALIE (Codice, Data_ora, Priorita, Causa, Sensore) VALUES (4, TO_DATE('2023-07-01 15:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Bassa', 'Radiazioni anomale', 4);
INSERT INTO ANOMALIE (Codice, Data_ora, Priorita, Causa, Sensore) VALUES (5, TO_DATE('2023-07-01 16:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Media', 'Anomalia geologica', 5);
INSERT INTO ANOMALIE (Codice, Data_ora, Priorita, Causa, Sensore) VALUES (6, TO_DATE('2023-07-02 12:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Alta', 'Surriscaldamento', 6);
INSERT INTO ANOMALIE (Codice, Data_ora, Priorita, Causa, Sensore) VALUES (7, TO_DATE('2023-07-02 13:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Critica', 'Perdita di tenuta', 7);
INSERT INTO ANOMALIE (Codice, Data_ora, Priorita, Causa, Sensore) VALUES (8, TO_DATE('2023-07-02 14:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Media', 'Emissione di gas', 8);
INSERT INTO ANOMALIE (Codice, Data_ora, Priorita, Causa, Sensore) VALUES (9, TO_DATE('2023-07-02 15:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Bassa', 'Radiazioni elevate', 9);
INSERT INTO ANOMALIE (Codice, Data_ora, Priorita, Causa, Sensore) VALUES (10, TO_DATE('2023-07-02 16:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Media', 'Anomalia del suolo', 10);
INSERT INTO ANOMALIE (Codice, Data_ora, Priorita, Causa, Sensore) VALUES (11, TO_DATE('2023-07-03 12:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Alta', 'Sovratemperatura critica', 11);

-- Riempimento tabella INTERVENTI
INSERT INTO INTERVENTI (Codice, Descrizione, Data_esecuzione, Esito, Anomalia) VALUES (1, 'Riparazione sensore di temperatura', TO_DATE('2023-07-02', 'YYYY-MM-DD'), 'Successo', 1);
INSERT INTO INTERVENTI (Codice, Descrizione, Data_esecuzione, Esito, Anomalia) VALUES (2, 'Sostituzione sensore di pressione', TO_DATE('2023-07-02', 'YYYY-MM-DD'), 'Successo', 2);
INSERT INTO INTERVENTI (Codice, Descrizione, Data_esecuzione, Esito, Anomalia) VALUES (3, 'Controllo sensore di gas', TO_DATE('2023-07-02', 'YYYY-MM-DD'), 'In corso', 3);
INSERT INTO INTERVENTI (Codice, Descrizione, Data_esecuzione, Esito, Anomalia) VALUES (4, 'Verifica sensore di radiazioni', TO_DATE('2023-07-02', 'YYYY-MM-DD'), 'Fallito', 4);
INSERT INTO INTERVENTI (Codice, Descrizione, Data_esecuzione, Esito, Anomalia) VALUES (5, 'Manutenzione sensore di geologia', TO_DATE('2023-07-02', 'YYYY-MM-DD'), 'In attesa', 5);
INSERT INTO INTERVENTI (Codice, Descrizione, Data_esecuzione, Esito, Anomalia) VALUES (6, 'Riparazione modulo principale', TO_DATE('2023-07-03', 'YYYY-MM-DD'), 'Successo', 6);
INSERT INTO INTERVENTI (Codice, Descrizione, Data_esecuzione, Esito, Anomalia) VALUES (7, 'Sostituzione componente critico', TO_DATE('2023-07-03', 'YYYY-MM-DD'), 'Successo', 7);
INSERT INTO INTERVENTI (Codice, Descrizione, Data_esecuzione, Esito, Anomalia) VALUES (8, 'Controllo modulo di controllo', TO_DATE('2023-07-03', 'YYYY-MM-DD'), 'In corso', 8);
INSERT INTO INTERVENTI (Codice, Descrizione, Data_esecuzione, Esito, Anomalia) VALUES (9, 'Verifica delle connessioni', TO_DATE('2023-07-03', 'YYYY-MM-DD'), 'Fallito', 9);
INSERT INTO INTERVENTI (Codice, Descrizione, Data_esecuzione, Esito, Anomalia) VALUES (10, 'Manutenzione del sistema', TO_DATE('2023-07-03', 'YYYY-MM-DD'), 'In attesa', 10);

-- Riempimento tabella REPORT
INSERT INTO REPORT (Codice, Titolo, Descrizione, Data_ora, Equipaggio, Missione) VALUES ('R0001', 'Report 1', 'Descrizione del report 1', TO_DATE('2023-07-01 17:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'E0001', 'M0001');
INSERT INTO REPORT (Codice, Titolo, Descrizione, Data_ora, Equipaggio, Missione) VALUES ('R0002', 'Report 2', 'Descrizione del report 2', TO_DATE('2023-07-01 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'E0002', 'M0002');
INSERT INTO REPORT (Codice, Titolo, Descrizione, Data_ora, Equipaggio, Missione) VALUES ('R0003', 'Report 3', 'Descrizione del report 3', TO_DATE('2023-07-01 19:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'E0003', 'M0003');
INSERT INTO REPORT (Codice, Titolo, Descrizione, Data_ora, Equipaggio, Missione) VALUES ('R0004', 'Report 4', 'Descrizione del report 4', TO_DATE('2023-07-01 20:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'E0004', 'M0004');
INSERT INTO REPORT (Codice, Titolo, Descrizione, Data_ora, Equipaggio, Missione) VALUES ('R0005', 'Report 5', 'Descrizione del report 5', TO_DATE('2023-07-01 21:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'E0005', 'M0005');
INSERT INTO REPORT (Codice, Titolo, Descrizione, Data_ora, Equipaggio, Missione) VALUES ('R0006', 'Report 6', 'Descrizione del report 6', TO_DATE('2023-07-02 17:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'E0006', 'M0006');
INSERT INTO REPORT (Codice, Titolo, Descrizione, Data_ora, Equipaggio, Missione) VALUES ('R0007', 'Report 7', 'Descrizione del report 7', TO_DATE('2023-07-02 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'E0007', 'M0007');
INSERT INTO REPORT (Codice, Titolo, Descrizione, Data_ora, Equipaggio, Missione) VALUES ('R0008', 'Report 8', 'Descrizione del report 8', TO_DATE('2023-07-02 19:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'E0008', 'M0008');
INSERT INTO REPORT (Codice, Titolo, Descrizione, Data_ora, Equipaggio, Missione) VALUES ('R0009', 'Report 9', 'Descrizione del report 9', TO_DATE('2023-07-02 20:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'E0009', 'M0009');
INSERT INTO REPORT (Codice, Titolo, Descrizione, Data_ora, Equipaggio, Missione) VALUES ('R0010', 'Report 10', 'Descrizione del report 10', TO_DATE('2023-07-02 21:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'E0010', 'M0010');

-- Riempimento tabella EQUIPAGGIMISSIONI
INSERT INTO EQUIPAGGIMISSIONI (Equipaggio, Missione) VALUES ('E0001', 'M0001');
INSERT INTO EQUIPAGGIMISSIONI (Equipaggio, Missione) VALUES ('E0002', 'M0002');
INSERT INTO EQUIPAGGIMISSIONI (Equipaggio, Missione) VALUES ('E0003', 'M0003');
INSERT INTO EQUIPAGGIMISSIONI (Equipaggio, Missione) VALUES ('E0004', 'M0004');
INSERT INTO EQUIPAGGIMISSIONI (Equipaggio, Missione) VALUES ('E0005', 'M0005');
INSERT INTO EQUIPAGGIMISSIONI (Equipaggio, Missione) VALUES ('E0006', 'M0006');
INSERT INTO EQUIPAGGIMISSIONI (Equipaggio, Missione) VALUES ('E0007', 'M0007');
INSERT INTO EQUIPAGGIMISSIONI (Equipaggio, Missione) VALUES ('E0008', 'M0008');
INSERT INTO EQUIPAGGIMISSIONI (Equipaggio, Missione) VALUES ('E0009', 'M0009');
INSERT INTO EQUIPAGGIMISSIONI (Equipaggio, Missione) VALUES ('E0010', 'M0010');
INSERT INTO EQUIPAGGIMISSIONI (Equipaggio, Missione) VALUES ('E0011', 'M0011');
INSERT INTO EQUIPAGGIMISSIONI (Equipaggio, Missione) VALUES ('E0012', 'M0012');
INSERT INTO EQUIPAGGIMISSIONI (Equipaggio, Missione) VALUES ('E0013', 'M0013');
INSERT INTO EQUIPAGGIMISSIONI (Equipaggio, Missione) VALUES ('E0014', 'M0014');
INSERT INTO EQUIPAGGIMISSIONI (Equipaggio, Missione) VALUES ('E0015', 'M0015');

-- Riempimento tabella ROBOTMISSIONI
INSERT INTO ROBOTMISSIONI (Robot, Missione) VALUES (1, 'M0001');
INSERT INTO ROBOTMISSIONI (Robot, Missione) VALUES (2, 'M0002');
INSERT INTO ROBOTMISSIONI (Robot, Missione) VALUES (3, 'M0003');
INSERT INTO ROBOTMISSIONI (Robot, Missione) VALUES (4, 'M0004');
INSERT INTO ROBOTMISSIONI (Robot, Missione) VALUES (5, 'M0005');
INSERT INTO ROBOTMISSIONI (Robot, Missione) VALUES (6, 'M0006');
INSERT INTO ROBOTMISSIONI (Robot, Missione) VALUES (7, 'M0007');
INSERT INTO ROBOTMISSIONI (Robot, Missione) VALUES (8, 'M0008');
INSERT INTO ROBOTMISSIONI (Robot, Missione) VALUES (9, 'M0009');
INSERT INTO ROBOTMISSIONI (Robot, Missione) VALUES (10, 'M0010');
INSERT INTO ROBOTMISSIONI (Robot, Missione) VALUES (11, 'M0011');
INSERT INTO ROBOTMISSIONI (Robot, Missione) VALUES (12, 'M0012');
INSERT INTO ROBOTMISSIONI (Robot, Missione) VALUES (13, 'M0013');
INSERT INTO ROBOTMISSIONI (Robot, Missione) VALUES (14, 'M0014');
INSERT INTO ROBOTMISSIONI (Robot, Missione) VALUES (15, 'M0015');
INSERT INTO ROBOTMISSIONI (Robot, Missione) VALUES (16, 'M0016');
INSERT INTO ROBOTMISSIONI (Robot, Missione) VALUES (17, 'M0017');
INSERT INTO ROBOTMISSIONI (Robot, Missione) VALUES (18, 'M0018');
INSERT INTO ROBOTMISSIONI (Robot, Missione) VALUES (19, 'M0019');
INSERT INTO ROBOTMISSIONI (Robot, Missione) VALUES (20, 'M0020');

-- Riempimento tabella SENSORIMISSIONI
INSERT INTO SENSORIMISSIONI (Sensore, Missione) VALUES (1, 'M0001');
INSERT INTO SENSORIMISSIONI (Sensore, Missione) VALUES (2, 'M0002');
INSERT INTO SENSORIMISSIONI (Sensore, Missione) VALUES (3, 'M0003');
INSERT INTO SENSORIMISSIONI (Sensore, Missione) VALUES (4, 'M0004');
INSERT INTO SENSORIMISSIONI (Sensore, Missione) VALUES (5, 'M0005');
INSERT INTO SENSORIMISSIONI (Sensore, Missione) VALUES (6, 'M0006');
INSERT INTO SENSORIMISSIONI (Sensore, Missione) VALUES (7, 'M0007');
INSERT INTO SENSORIMISSIONI (Sensore, Missione) VALUES (8, 'M0008');
INSERT INTO SENSORIMISSIONI (Sensore, Missione) VALUES (9, 'M0009');
INSERT INTO SENSORIMISSIONI (Sensore, Missione) VALUES (10, 'M0010');
INSERT INTO SENSORIMISSIONI (Sensore, Missione) VALUES (11, 'M0011');
INSERT INTO SENSORIMISSIONI (Sensore, Missione) VALUES (12, 'M0012');

-- Riempimento tabella EQUIPAGGIINTERVENTI
INSERT INTO EQUIPAGGIINTERVENTI (Equipaggio, Intervento) VALUES ('E0001', 1);
INSERT INTO EQUIPAGGIINTERVENTI (Equipaggio, Intervento) VALUES ('E0002', 2);
INSERT INTO EQUIPAGGIINTERVENTI (Equipaggio, Intervento) VALUES ('E0003', 3);
INSERT INTO EQUIPAGGIINTERVENTI (Equipaggio, Intervento) VALUES ('E0004', 4);
INSERT INTO EQUIPAGGIINTERVENTI (Equipaggio, Intervento) VALUES ('E0005', 5);
INSERT INTO EQUIPAGGIINTERVENTI (Equipaggio, Intervento) VALUES ('E0006', 6);
INSERT INTO EQUIPAGGIINTERVENTI (Equipaggio, Intervento) VALUES ('E0007', 7);
INSERT INTO EQUIPAGGIINTERVENTI (Equipaggio, Intervento) VALUES ('E0008', 8);
INSERT INTO EQUIPAGGIINTERVENTI (Equipaggio, Intervento) VALUES ('E0009', 9);

-- Fine del riempimento delle tabelle
