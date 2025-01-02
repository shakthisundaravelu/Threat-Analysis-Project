# 1. Most common type of cyberattacks

SELECT Attack_Type, COUNT(*) AS Count
FROM Threats
GROUP BY Attack_Type
ORDER BY Count DESC;

#2. Geographic Regions that are most Targeted

SELECT Geo_Location_Data, COUNT(*) AS Threat_Count
FROM Threats
GROUP BY Geo_Location_Data
ORDER BY Threat_Count DESC
LIMIT 15;

#3. Severity type based on attack type

SELECT Attack_Type, Severity_Level, COUNT(*) AS Count
FROM Threats
GROUP BY Attack_Type, Severity_Level
ORDER BY Attack_Type DESC, Severity_Level DESC;
