USE testdb;

DROP TABLE IF EXISTS Players, Teams, Games;

CREATE TABLE Teams(Id BIGINT PRIMARY KEY AUTO_INCREMENT, Name VARCHAR(50), Location VARCHAR(50), Abbr VARCHAR(10));
CREATE TABLE Players(Id BIGINT PRIMARY KEY AUTO_INCREMENT, Name VARCHAR(100), Num SMALLINT, TeamId BIGINT, 
	FOREIGN KEY (TeamId) REFERENCES Teams(Id));

INSERT INTO Teams(Id, Name, Location, Abbr) VALUES(1, 'Islanders', 'New York', 'NYI');
INSERT INTO Players(Id, Name, Num, TeamId) VALUES(1, 'Matt Barzal', 13, 1);