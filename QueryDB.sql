-- Query N.1 Selezione di tutte le missioni con i dettagli di Robot e Sensori
SELECT M.Codice, M.Data_inizio, M.Stato, M.Tipologia, 
       R.ID AS RobotID, R.Tipologia AS RobotType, 
       S.ID AS SensoreID, S.Tipologia AS SensoreType, S.Stato AS SensoreStatus
FROM MISSIONI M
JOIN ROBOTMISSIONI RM ON M.Codice = RM.Missione
JOIN ROBOT R ON RM.Robot = R.ID
JOIN SENSORIMISSIONI SM ON M.Codice = SM.Missione
JOIN SENSORI S ON SM.Sensore = S.ID
WHERE M.Stato = 'In Corso'
ORDER BY M.Codice;

-- Query N.2 Selezione di tutti gli ID dei sensori e delle rispettive anomalie, interventi e membri dell'equipaggio intervenuti
SELECT S.ID AS SensoreID, A.Codice AS AnomaliaID, A.Data_ora, A.Priorita, A.Causa, 
       I.Codice AS InterventoID, I.Descrizione, I.Data_esecuzione, I.Esito, 
       E.Codice AS EquipaggioID, E.Nome, E.Cognome, E.Ruolo
FROM SENSORI S
JOIN ANOMALIE A ON S.ID=A.Sensore
JOIN INTERVENTI I ON A.Codice = I.Anomalia
JOIN EQUIPAGGIINTERVENTI EI ON I.Codice = EI.Intervento
JOIN EQUIPAGGI E ON EI.Equipaggio = E.Codice
ORDER BY S.ID;

-- Query N.3 Selezione di tutti i membri dell'equipaggio e tutte le missioni cui ognuno di loro ha partecipato
SELECT E.Codice AS EquipaggioID, E.Nome, E.Cognome, E.Ruolo, 
       M.Codice AS MissioneID, M.Data_inizio, M.Data_fine, M.Stato, M.Tipologia
FROM EQUIPAGGI E
JOIN EQUIPAGGIMISSIONI EM ON E.Codice = EM.Equipaggio
JOIN MISSIONI M ON EM.Missione = M.Codice
ORDER BY E.Codice;

-- Query N.4 Ricerca del sensore che ha effettuato più rilevazioni
SELECT S.ID AS SensoreID, COUNT(R1.Sensore) AS NumRilevamenti
FROM SENSORI S
JOIN RILEVAZIONI R1 ON S.ID=R1.Sensore
GROUP BY S.ID
HAVING COUNT(R1.Sensore) = (
    SELECT MAX(NumRilevamenti)
    FROM (
    	SELECT COUNT(R.Sensore) as NumRilevamenti
    	FROM RILEVAZIONI R
    	GROUP BY R.Sensore
    )
);

-- Query N.5 Selezione del numero di tutte le anomalie riscontrate nell'ultimo anno, divise per priorità
SELECT S.ID, A.Priorita, COUNT(A.Codice) AS Num_Anomalie
FROM SENSORI S
JOIN ANOMALIE A ON S.ID=A.Sensore
WHERE A.Data_ora > SYSDATE - INTERVAL '1' YEAR
GROUP BY S.ID, A.Priorita
ORDER BY COUNT(A.Codice) DESC;