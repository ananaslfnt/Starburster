-- Creazione utente admin
CREATE USER admin_user IDENTIFIED BY 'admin';

-- Concessione dei privilegi all'utente admin
GRANT CONNECT, RESOURCE, DBA TO admin_user;


-- Creazione ruolo utente supervisore
CREATE ROLE supervisor_user;

-- Concessione dei privilegi al ruolo utente supervisore
GRANT SELECT, ALTER, DELETE ON EQUIPAGGI TO supervisor_user;
GRANT SELECT, ALTER, DELETE ON MISSIONI TO supervisor_user;
GRANT SELECT, ALTER, DELETE ON ROBOT TO supervisor_user;
GRANT SELECT, ALTER, DELETE ON SENSORI TO supervisor_user;
GRANT SELECT, ALTER, DELETE ON RILEVAZIONI TO supervisor_user;
GRANT SELECT, ALTER, DELETE ON ANOMALIE TO supervisor_user;
GRANT SELECT, ALTER, DELETE ON INTERVENTI TO supervisor_user;
GRANT SELECT, ALTER, DELETE ON REPORT TO supervisor_user;
GRANT SELECT, ALTER, DELETE ON EQUIPAGGIMISSIONI TO supervisor_user;
GRANT SELECT, ALTER, DELETE ON ROBOTMISSIONI TO supervisor_user;
GRANT SELECT, ALTER, DELETE ON SENSORIMISSIONI TO supervisor_user;
GRANT SELECT, ALTER, DELETE ON EQUIPAGGIINTERVENTI TO supervisor_user';

-- Creazione utente di ruolo supervisore
CREATE USER supuser IDENTIFIED BY 'suppass';

-- Assegnazione del ruolo standard_user
GRANT supervisor_user to supuser;

-- Creazione ruolo utente standard
CREATE ROLE standard_user;

-- Concessione dei privilegi al ruolo utente standard
GRANT SELECT ON EQUIPAGGI TO standard_user;
GRANT SELECT ON MISSIONI TO standard_user;
GRANT SELECT ON ROBOT TO standard_user;
GRANT SELECT ON SENSORI TO standard_user;
GRANT SELECT ON RILEVAZIONI TO standard_user;
GRANT SELECT ON ANOMALIE TO standard_user;
GRANT SELECT ON INTERVENTI TO standard_user;
GRANT SELECT ON REPORT TO standard_user;
GRANT SELECT ON EQUIPAGGIMISSIONI TO standard_user;
GRANT SELECT ON ROBOTMISSIONI TO standard_user;
GRANT SELECT ON SENSORIMISSIONI TO standard_user;
GRANT SELECT ON EQUIPAGGIINTERVENTI TO standard_user';

-- Creazione utente di ruolo standard
CREATE USER stduser IDENTIFIED BY 'stdpass';

-- Assegnazione del ruolo standard_user
GRANT standard_user to new_user;