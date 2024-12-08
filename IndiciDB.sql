-- Indice sulla tabella Missioni per velocizzare la ricerca dello stato di una missione
CREATE INDEX IDX_MISSIONI_STATO ON MISSIONI(Stato);

-- Indice sulla tabella Anomalie per velocizzare la ricerca della Priorià di una anomalia e la Data in cui si è verificata
CREATE INDEX IDX_ANOMALIE_PRIORITA ON ANOMALIE(Priorita, Data_ora);

-- Indice sulla tabella Rivelazione per velocizzare la ricerca del Codice della rilevazione ed il corrispettivo Valore
CREATE INDEX IDX_RILEVAZIONI_CODICE_VALORE ON RILEVAZIONI(Codice, Valore);

-- Indice sulla tabella Equipaggi per velocizzare la ricerca del Nome, Cognome e Ruolo di un membro
CREATE INDEX IDX_EQUIPAGGI_NOME_COGNOME_RUOLO ON Equipaggi(Nome, Cognome, Ruolo);