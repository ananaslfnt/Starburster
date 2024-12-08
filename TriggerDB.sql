Trigger inserimenti in impiega e adopera se sono gia assegnati a missioni in corso o pianificate( due in totale)

-- Trigger N.1 Inserimento Data_ora di sistema all'inserimento di un Report
CREATE OR REPLACE TRIGGER TRIGGER_REPORT_DATA
BEFORE INSERT ON REPORT
FOR EACH ROW
BEGIN
	:NEW.Data_ora := SYSDATE;
END;

-- Trigger N.2 Inserimento Data_ora di sistema all'inserimento di un Rilevamento
CREATE OR REPLACE TRIGGER TRIGGER_RILEVAMENTO_DATA
BEFORE INSERT ON RILEVAZIONI
FOR EACH ROW
BEGIN
	:NEW.Data_ora := SYSDATE;
END;

-- Trigger N.3 Controllo dello stato del sensore al momento dell'inserimento di una rivelazione
CREATE OR REPLACE TRIGGER TRIGGER_VERIFICA_SENSORI_ATTIVI
BEFORE INSERT ON RILEVAZIONI
FOR EACH ROW
DECLARE
 	v_stato VARCHAR2(14);
BEGIN
	-- Recupera lo stato del sensore
	SELECT Stato INTO v_stato
	FROM SENSORI
	WHERE ID = :NEW.Sensore;

	-- Verifica se lo stato è 'Attivo'
	IF v_stato != 'Attivo' THEN
		RAISE_APPLICATION_ERROR(-20001, 'Il sensore non è in stato "Attivo". Inserimento non consentito.');
	END IF;
END;

-- Trigger N.4 Inserimento Data_ora di sistema all'inserimento di un anomalia
CREATE OR REPLACE TRIGGER TRIGGER_ANOMALIE_DATA
BEFORE INSERT ON ANOMALIE
FOR EACH ROW
BEGIN
	:NEW.Data_ora := SYSDATE;
END;

-- Trigger N.5 Passaggio a stato malfunzionante di un sensore all'inserimento di un'anomalia
CREATE OR REPLACE TRIGGER TRIGGER_ANOMALIE_UPDATE_SENSORI
AFTER INSERT ON ANOMALIE
FOR EACH ROW
BEGIN
	UPDATE SENSORI
	SET Stato = 'Malfunzionante'
	WHERE ID = :NEW.Sensore;
END;

-- Trigger N.6 Controllo che un sensore non sia già impegnato in altre missioni, prima di assegnarlo alla missione
CREATE OR REPLACE TRIGGER TRIGGER_SENSORE_FREE
BEFORE INSERT ON SENSORIMISSIONI
FOR EACH ROW
DECLARE
	v_count INTEGER;
BEGIN
	-- Contiamo quante missioni attive o pianificate stanno usando il sensore
	SELECT COUNT(*) INTO v_count
	FROM MISSIONI M
	JOIN SENSORIMISSIONI SM ON M.Codice = SM. Missione
	WHERE SM.Sensore = :NEW.Sensore
	AND (M.Stato = 'Pianificata' OR M.Stato = 'In Corso');
	
	-- Se il conteggio è maggiore di 0, il sensore è già impegnato
	IF v_count > 0 THEN
		RAISE_APPLICATION_ERROR(-20001, 'Il sensore è già impegnato in un altra missione.');
	END IF;
END;

-- Trigger N.7 Controllo che un robot non sia già impegnato in altre missioni, prima di assegnarlo alla missione
CREATE OR REPLACE TRIGGER TRIGGER_ROBOT_FREE
BEFORE INSERT ON ROBOTMISSIONI
FOR EACH ROW
DECLARE
	v_count INTEGER;
BEGIN
	-- Contiamo quante missioni attive o pianificate stanno usando il robot
	SELECT COUNT(*) INTO v_count
	FROM MISSIONI M
	JOIN ROBOTMISSIONI RM ON M.Codice = RM. Missione
	WHERE RM.Robot = :NEW.Robot
	AND (M.Stato = 'Pianificata' OR M.Stato = 'In Corso');
	
	-- Se il conteggio è maggiore di 0, il sensore è già impegnato
	IF v_count > 0 THEN
		RAISE_APPLICATION_ERROR(-20001, 'Il robot è già impegnato in un altra missione.');
	END IF;
END;

