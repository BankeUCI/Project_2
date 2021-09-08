
CREATE TABLE "athlete" (
    "last_name" varchar(255)   NOT NULL,
    "first_name" varchar(255)   NOT NULL,
    "noc" varchar(255)   NOT NULL,
    "discipline" varchar(255)   NOT NULL,
    CONSTRAINT "pk_athlete" PRIMARY KEY (
        "noc"
     )
);

CREATE TABLE "coaches" (
    "last_name" varchar(255)   NOT NULL,
    "first_name" varchar(255)   NOT NULL,
    "noc" varchar(255)   NOT NULL,
    "discipline" varchar(255)   NOT NULL,
    "event" varchar(255)   NOT NULL
);

CREATE TABLE "medals" (
    "noc" varchar(255)   NOT NULL,
    "gold" int   NOT NULL,
    "total" int   NOT NULL,
    "rank" int   NOT NULL,
    "rank_by_title" int   NOT NULL
);

CREATE TABLE "teams" (
    "name" varchar(255)   NOT NULL,
    "discipline" varchar(255)   NOT NULL,
    "noc" varchar(255)   NOT NULL,
    "event" varchar(255)   NOT NULL
);

ALTER TABLE "coaches" ADD CONSTRAINT "fk_coaches_noc" FOREIGN KEY("noc")
REFERENCES "athlete" ("noc");

ALTER TABLE "medals" ADD CONSTRAINT "fk_medals_noc" FOREIGN KEY("noc")
REFERENCES "athlete" ("noc");

/*
Check if data loaded sucessfully
*/

select * from athlete;

select * from coaches;

select * from medals;

select * from teams;

