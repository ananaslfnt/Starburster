-- Procedure N.1 Inserimento nella tabella Rilevazioni
CREATE OR REPLACE PROCEDURE InserisciRilevazione (
	p_codice IN NUMBER,
	p_valore IN NUMBER,
	p_sensore IN NUMBER
) IS
BEGIN
	
	-- Inserisci la rilevazione nella tabella RILEVAZIONI
	INSERT INTO RILEVAZIONI (Codice, Valore, Sensore)
	VALUES (p_codice, p_valore, p_sensore);
COMMIT;
END InserisciRilevazione;

-- Procedure N.2 Inserimento nella tabella Anomalie
CREATE OR REPLACE PROCEDURE InserisciAnomalia (
	p_codice IN NUMBER,
	p_priorita IN VARCHAR2,
	p_causa IN CLOB,
	p_sensore IN NUMBER
) IS
BEGIN
	--Inserisci l'anomalia nella tabella ANOMALIE
	INSERT INTO ANOMALIE (Codice, Priorita, Causa, Sensore)
	VALUES (a_codice, a_priorita, a_causa, a_sensore);
COMMIT;
END InserisciAnomalia;


-- Procedure N.3 Inserisce un intervento, per un dato sensore, per la sua anomalia più recente
CREATE OR REPLACE PROCEDURE InserisciIntervento(
	p_sensore IN NUMBER,
	p_intervento IN NUMBER,
	p_descrizione IN VARCHAR2,
	p_data_esecuzione IN VARCHAR2
) IS
	v_anomalia NUMBER;
BEGIN
	-- Ricerca id dell'anomalia più recente
	SELECT Codice INTO v_anomalia
	FROM ANOMALIE
	WHERE Sensore = p_sensore AND Data_ora = (
	SELECT MAX(Data_ora)
	FROM Anomalie
	WHERE Sensore = p_sensore );
	
	-- Inserimento dell'intervento
	INSERT INTO Interventi(Codice, Descrizione, Data_esecuzione, Anomalia)
	VALUES (p_intervento, p_descrizione, TO_DATE(p_data_esecuzione, 'YYYY-MM-DD'), v_anomalia);
COMMIT;
EXCEPTION
	WHEN NO_DATA_FOUND THEN
		RAISE_APPLICATION_ERROR(-20001,  'Non ci sono anomalie registrate per questo sensore');
END InserisciIntervento;

-- Procedure N.4 Al completamento di una missione, pone i sensori ad essa assegnata in Stand-By
CREATE OR REPLACE PROCEDURE AggiornaStatoMissione(
	p_missione IN CHAR,
	p_nuovo_stato IN VARCHAR2
) IS
BEGIN
	--Aggiornamento stato della missione
	UPDATE MISSIONI
	SET STATO = p_nuovo_stato
	WHERE Codice = p_missione;
	
	--Se la missione è completata o annullata, pone in stand-by i sensori
	IF p_nuovo_stato IN ('Completata', 'Annullata') THEN
	UPDATE SENSORI
	SET STATO = 'Stand-By'
	WHERE ID IN (
	SELECT Sensore
	FROM SensoriMissioni
	WHERE Missione = p_missione
	);
COMMIT;
END AggiornaStatoMissione;