-- Query for successful load
select * from country_code;

select * from game_earning;

select * from genre_earning;

select * from prize_year;

select * from team_earning;

-- Query average prize per tournament based on the game
SELECT "Game", ("TotalUSDPrize" / "TotalTournaments")
FROM game_earning 
ORDER BY ("TotalUSDPrize" / "TotalTournaments") DESC

