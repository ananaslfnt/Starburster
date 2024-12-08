-- Vista N.1 Interventi completati con informazioni anomalie
CREATE VIEW VISTA_INTERVENTI_COMPLETATI_DETTAGLI AS
SELECT I.Codice AS Codice_Intervento, I.Descrizione, I.Data_esecuzione, I.Esito, A.Codice AS Codice_Anomalia, A.Data_ora AS Data_ora_Anomalia, A.Priorita, A.Causa
FROM INTERVENTI I
JOIN ANOMALIE A ON I.Anomalia = A.Codice
WHERE I.Esito IS NOT NULL;

-- Vista N.2 Rilevazioni recenti(ultima settimana) con dettagli sensori
CREATE VIEW VISTA_RILEVAZIONI_RECENTI_DETTAGLI AS
SELECT R.Codice AS Codice_Rilevazione, R.Data_ora, R.Valore, S.Tipologia AS Tipologia_Sensore, S.Latitudine, S.Longitudine, S.Altitudine
FROM RILEVAZIONI R
JOIN SENSORI S ON R.Sensore = S.ID
WHERE R.Data_ora > SYSDATE - 7;
