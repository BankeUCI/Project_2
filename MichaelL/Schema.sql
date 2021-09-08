CREATE TABLE athlete (
	id int primary key,
    last_name varchar(255)   NOT NULL,
    first_name varchar(255)   NOT NULL,
    noc varchar(255)   NOT NULL,
    discipline varchar(255)   NOT NULL,
    CONSTRAINT pk_athlete PRIMARY KEY (
        id
     )
);

CREATE TABLE coaches (
	id int NOT NULL, 
    last_name varchar(255)   NOT NULL,
    first_name varchar(255)   NOT NULL,
    noc varchar(255)   NOT NULL,
    discipline varchar(255)   NOT NULL,
    event varchar(255)   NOT NULL
);

CREATE TABLE medals (
    noc varchar(255)   NOT NULL,
    gold int   NOT NULL,
    total int   NOT NULL,
    rank int   NOT NULL,
    rank_by_title int   NOT NULL
);

CREATE TABLE teams (
	id int NOT NULL,
    name varchar(255)   NOT NULL,
    discipline varchar(255)   NOT NULL,
    noc varchar(255)   NOT NULL,
    event varchar(255)   NOT NULL
);

ALTER TABLE coaches ADD CONSTRAINT fk_coaches_noc FOREIGN KEY(noc)
REFERENCES athlete (noc);

--ALTER TABLE "coaches" ADD CONSTRAINT "fk_coaches_discipline" FOREIGN KEY("discipline")
--REFERENCES "teams" ("discipline");

ALTER TABLE medals ADD CONSTRAINT fk_medals_noc FOREIGN KEY(noc)
REFERENCES athlete (noc);

select * from athlete;

select * from coaches;

select * from medals;

select * from teams;



