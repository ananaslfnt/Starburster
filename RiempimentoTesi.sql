INSERT INTO EQUIPAGGI (Codice, Nome, Cognome, Ruolo) VALUES
('E0001', 'Giovanni', 'Rossi', 'Tecnico'),
('E0002', 'Mario', 'Bianchi', 'Ingegnere'),
('E0003', 'Luigi', 'Verdi', 'Pilota'),
('E0004', 'Anna', 'Gialli', 'Geologa'),
('E0005', 'Marco', 'Neri', 'Tecnico');

INSERT INTO MISSIONE (Codice, Data_Inizio, Data_Fine, Stato, Tipologia) VALUES
('MSE01', TO_DATE('2024-03-10', 'YYYY-MM-DD'), TO_DATE('2024-03-18', 'YYYY-MM-DD'), 'In Corso', 'Mappatura Geologica'),
('MSE02', TO_DATE('2024-03-15', 'YYYY-MM-DD'), TO_DATE('2024-03-28', 'YYYY-MM-DD'), 'Pianificata', 'Rilevamento di Risorse'),
('MSE03', TO_DATE('2024-03-01', 'YYYY-MM-DD'), TO_DATE('2024-03-16', 'YYYY-MM-DD'), 'Completata', 'Mappatura Geologica'),
('MSE04', TO_DATE('2024-07-01', 'YYYY-MM-DD'), TO_DATE('2024-07-15', 'YYYY-MM-DD'), 'Annullata', 'Rilevamento di Risorse');

INSERT INTO ROBOT (ID, Tipologia) VALUES
(1, 'Drone'),
(2, 'Rover'),
(3, 'Robot Subacqueo'),
(4, 'Drone');

INSERT INTO SENSORI (ID, Tipologia, Data_last_check, Data_Installazione, Stato, Latitudine, Longitudine, Altitudine) VALUES
(1, 'Temperatura', TO_DATE('2024-01-10', 'YYYY-MM-DD'), TO_DATE('2023-12-01', 'YYYY-MM-DD'), 'Attivo', '40.7128', '74.0060', '15'),
(2, 'Pressione', TO_DATE('2024-03-05', 'YYYY-MM-DD'), TO_DATE('2023-11-15', 'YYYY-MM-DD'), 'Attivo', '34.0522', '118.2437', '28'),
(3, 'Radiazioni', TO_DATE('2024-02-02', 'YYYY-MM-DD'), TO_DATE('2023-12-15', 'YYYY-MM-DD'), 'Malfunzionante', '48.8566', '2.3522', '40'),
(4, 'Geologico', TO_DATE('2024-03-01', 'YYYY-MM-DD'), TO_DATE('2023-10-10', 'YYYY-MM-DD'), 'Attivo', '41.8896', '12.4964', '32'),
(5, 'Radiazioni', TO_DATE('2024-06-01', 'YYYY-MM-DD'), TO_DATE('2023-08-19', 'YYYY-MM-DD'), 'Attivo', '41.8896', '12.4964', '30');

INSERT INTO ANOMALIE (Codice, Data, Ora, Priorita, Causa, Sensore) VALUES
(1, TO_DATE('2024-03-04', 'YYYY-MM-DD HH24:MI:SS'), 'Alta', 'Sensore di gas danneggiato', 3),
(2, TO_DATE('2024-02-14', 'YYYY-MM-DD HH24:MI:SS'), 'Media', 'Malfunzionamento del sensore di geologia', 4),
(3, TO_DATE('2024-06-10', 'YYYY-MM-DD HH24:MI:SS'), 'Critica', 'Rilevazione di radiazioni non corretta', 5);

INSERT INTO INTERVENTI (Codice, Descrizione, Data, Stato, Anomalia) VALUES
(1, 'Riparazione sensore di gas', TO_DATE('2024-03-06', 'YYYY-MM-DD'), 'Completato', 1),
(2, 'Sostituzione sensore geologico', TO_DATE('2024-02-20', 'YYYY-MM-DD'), 'Completato', 2),
(3, 'Verifica sensore di radiazioni', TO_DATE('2024-06-14', 'YYYY-MM-DD'), 'In corso', 3);

INSERT INTO REPORT (Codice, Titolo, Descrizione, Data_Ora, Equipaggio, Missione) VALUES
('RPE01', 'Analisi Iniziale', 'Relazione sulla missione di mappatura geologica', TO_DATE('2024-01-15', 'YYYY-MM-DD'), 'E0001', 'MSE01'),
('RPE02', 'Verifica Finale', 'Report sul completamento della missione di rilevamento risorse', TO_DATE('2024-03-25', 'YYYY-MM-DD'), 'E0002', 'MSE02');

INSERT INTO EQUIPAGGIMISSIONI (Equipaggio, Missione) VALUES
('E0001', 'MSE01'),
('E0002', 'MSE02'),
('E0003', 'MSE03'),
('E0004', 'MSE04');

INSERT INTO ROBOTMISSIONI (Robot, Missione) VALUES
(1, 'MSE01'),
(2, 'MSE02'),
(3, 'MSE03');

INSERT INTO SENSORIMISSIONI (Sensore, Missione) VALUES
(1, 'MSE01'),
(2, 'MSE02'),
(3, 'MSE03'),
(4, 'MSE03');

INSERT INTO EQUIPAGGIINTERVENTI (Equipaggio, Intervento) VALUES
('E0001', 1),
('E0002', 2),
('E0003', 3);
