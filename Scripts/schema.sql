-- Create Table
CREATE TABLE country_code (
  Id INT PRIMARY KEY,
  "Country_Name" TEXT,
  "Continent_Name" TEXT,
	"Country_Code" TEXT
);

CREATE TABLE game_earning (
  "Game" TEXT,
  "TotalUSDPrize" FLOAT,
	"TotalTournaments" INT
);

CREATE TABLE genre_earning (
  "Genre" TEXT,
  "TotalUSDPrize" FLOAT,
	"TotalTournaments" INT
);

CREATE TABLE prize_year (
  "Year" TEXT,
  "Earnings" FLOAT,
	"Players" TEXT,
	"Tournaments" TEXT
);

CREATE TABLE team_earning (
  "TeamName" TEXT,
  "TotalUSDPrize" FLOAT,
	"TotalTournaments" INT,
	"AvgPerTournaments" FLOAT
);
