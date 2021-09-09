CREATE TABLE "athletes" (
    "athlete_id" int   NOT NULL,
    "last_name" varchar(255)   NOT NULL,
    "first_name" varchar(255)   NOT NULL,
    "country_id" int   NOT NULL,
    "discipline_id" int   NOT NULL
);

CREATE TABLE "coaches" (
    "coach_id" int   NOT NULL,
    "last_name" varchar(255)   NOT NULL,
    "first_name" varchar(255)   NOT NULL,
    "country_id" int   NOT NULL,
    "discipline_id" int   NOT NULL,
    "event_id" int
);

CREATE TABLE "countries" (
    "country_id" int   NOT NULL,
    "country_name" varchar(255)   NOT NULL,
    CONSTRAINT "pk_countries" PRIMARY KEY (
        "country_id"
     )
);

CREATE TABLE "events" (
    "event_id" int   NOT NULL,
    "event_name" varchar(255)   NOT NULL,
    CONSTRAINT "pk_events" PRIMARY KEY (
        "event_id"
     )
);

CREATE TABLE "disciplines" (
    "discipline_id" int   NOT NULL,
    "discipline_name" varchar(255)   NOT NULL,
    CONSTRAINT "pk_disciplines" PRIMARY KEY (
        "discipline_id"
     )
);

CREATE TABLE "medals" (
    "country_id" int   NOT NULL,
    "gold" int   NOT NULL,
    "total" int   NOT NULL,
    "rank" int   NOT NULL,
    "rank_by_total" int   NOT NULL,
    CONSTRAINT "pk_medals" PRIMARY KEY (
        "country_id"
     )
);

CREATE TABLE "teams" (
    "team_id" int   NOT NULL,
    "name" varchar(255)   NOT NULL,
    "discipline_id" int   NOT NULL,
    "country_id" int   NOT NULL,
    "event_id" int   NOT NULL,
    CONSTRAINT "pk_teams" PRIMARY KEY (
        "team_id"
     )
);

ALTER TABLE "athletes" ADD CONSTRAINT "fk_athletes_country_id" FOREIGN KEY("country_id")
REFERENCES "countries" ("country_id");

ALTER TABLE "athletes" ADD CONSTRAINT "fk_athletes_discipline_id" FOREIGN KEY("discipline_id")
REFERENCES "disciplines" ("discipline_id");

ALTER TABLE "coaches" ADD CONSTRAINT "fk_coaches_country_id" FOREIGN KEY("country_id")
REFERENCES "medals" ("country_id");

ALTER TABLE "coaches" ADD CONSTRAINT "fk_coaches_event_id" FOREIGN KEY("event_id")
REFERENCES "events" ("event_id");

ALTER TABLE "teams" ADD CONSTRAINT "fk_teams_discipline_id" FOREIGN KEY("discipline_id")
REFERENCES "disciplines" ("discipline_id");

ALTER TABLE "teams" ADD CONSTRAINT "fk_teams_event_id" FOREIGN KEY("event_id")
REFERENCES "events" ("event_id");