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

CREATE TABLE country_prize (
"CountryCode" TEXT,
"TotalUSDPrize" FLOAT
);

CREATE TABLE game_prize (
"Game" TEXT,
"TotalUSDPrize" FLOAT
);

CREATE TABLE game_total_earnings (
"Game" TEXT,
"TotalEarnings" FLOAT,
"OnlineEarnings" FLOAT
);

CREATE TABLE genre_totals (
"Genre" TEXT,
"TotalEarnings" FLOAT,
"OnlineEarnings" FLOAT,
"TotalPlayers" INT,
"TotalTournaments" INT
);

CREATE TABLE player_earnings (
"PlayerId" INT,
"Game" TEXT,
"TotalUSDPrize" FLOAT
);

CREATE TABLE players (
"PlayerId" INT,
"NameFirst" TEXT,
"NameLast" TEXT,
"CurrentHandle" TEXT,
"CountryCode" TEXT,
"Game" Text
);

CREATE TABLE year_earnings (
"ReleaseDate" INT,
"TotalEarnings" FLOAT,
"OnlineEarnings" FLOAT,
"TotalPlayers" INT,
"TotalTournaments" INT,
);

-- Joining Players & Player_Earnings Tables on PlayerId
SELECT p."PlayerId", p."NameFirst", p."NameLast", p."CurrentHandle", p."CountryCode", p."Game", pe."TotalUSDPrize"
FROM players AS p
INNER JOIN player_earnings AS pe
ON p."PlayerId" = pe."PlayerId";
