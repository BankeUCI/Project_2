-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Athletes" (
    "Name" varchar(255)   NOT NULL,
    "NOC" varchar(225)   NOT NULL,
    "Discipline" varchar(225)   NOT NULL,
    CONSTRAINT "pk_Athletes" PRIMARY KEY (
        "NOC"
     )
);

CREATE TABLE "Coaches" (
    "Name" varchar(255)   NOT NULL,
    "NOC" varchar(255)   NOT NULL,
    "Discipline" varchar(255)   NOT NULL,
    "Event" varchar(255)   NOT NULL,
    CONSTRAINT "pk_Coaches" PRIMARY KEY (
        "NOC"
     )
);

CREATE TABLE "EntriesGener" (
    "Discipline" varchar(255)   NOT NULL,
    "Female" int   NOT NULL,
    "Male" int   NOT NULL,
    "Total" int   NOT NULL,
    CONSTRAINT "pk_EntriesGener" PRIMARY KEY (
        "Discipline"
     )
);

CREATE TABLE "Medals" (
    "Rank" int   NOT NULL,
    "NOC" varchar(255)   NOT NULL,
    "Gold" int   NOT NULL,
    "Rank_by" int   NOT NULL,
    "Total" int   NOT NULL,
    CONSTRAINT "pk_Medals" PRIMARY KEY (
        "NOC"
     )
);

CREATE TABLE "Teams" (
    "Name" int   NOT NULL,
    "Discipline" varchar(255)   NOT NULL,
    "NOC" varchar(255)   NOT NULL,
    "Event" varchar(255)   NOT NULL,
    CONSTRAINT "pk_Teams" PRIMARY KEY (
        "NOC"
     )
);

ALTER TABLE "Athletes" ADD CONSTRAINT "fk_Athletes_NOC" FOREIGN KEY("NOC")
REFERENCES "Coaches" ("NOC");

ALTER TABLE "Coaches" ADD CONSTRAINT "fk_Coaches_Discipline" FOREIGN KEY("Discipline")
REFERENCES "EntriesGener" ("Discipline");

ALTER TABLE "Medals" ADD CONSTRAINT "fk_Medals_NOC" FOREIGN KEY("NOC")
REFERENCES "Athletes" ("NOC");

ALTER TABLE "Teams" ADD CONSTRAINT "fk_Teams_NOC" FOREIGN KEY("NOC")
REFERENCES "Athletes" ("NOC");
