use olympics;
show tables;
SELECT * from athlete_events;
SELECT * from noc_regions;
SELECT DISTINCT Team from athlete_events;
SELECT COUNT(*) from athlete_events;
SELECT * from athlete_events where Year < '2000';
SELECT * FROM olympics.athlete_events ORDER BY Age DESC;
SELECT COUNT(Sport), City FROM athlete_events GROUP BY City ORDER BY COUNT(Sport) DESC;
#JOIN
SELECT ID, Name, Team FROM athlete_events INNER JOIN noc_regions ON athlete_events.NOC= noc_regions.NOC;
SELECT athlete_events.Sport, noc_regions.region FROM athlete_events LEFT JOIN noc_regions ON athlete_events.NOC=noc_regions.NOC ORDER BY athlete_events.Sport;
SELECT noc_regions.region, athlete_events.Sport FROM noc_regions RIGHT JOIN athelete_events ON noc_regions.NOC=athlete_events.NOC ORDER BY noc_regions.region;
SELECT MIN(Age) FROM athlete_events where Sport='Judo';
SELECT MAX(Age) FRoM athlete_events where Sport='Judo';
CREATE VIEW FOOTBALL AS SELECT ID, Name, Team, Season from athlete_events WHERE City = 'London';
