-- Create Tables
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