#4. Most Targeted ports
#Source Port:
SELECT Source_Port, COUNT(*) AS Occurrences
FROM Threats
GROUP BY Source_Port
ORDER BY Occurrences DESC
LIMIT 10;

#Destination Port:
SELECT Destination_port, COUNT(*) AS Occurrences
FROM Threats
GROUP BY Destination_port
ORDER BY Occurrences DESC
LIMIT 10;

#5. Protocols Associated with high-severity attacks

SELECT Protocol, COUNT(*) AS High_Severity_Attacks
FROM Threats
WHERE Severity_Level = 'High'
GROUP BY Protocol
ORDER BY High_Severity_Attacks DESC;

#6. Distribution of Traffic types in the dataset

SELECT Traffic_Type, COUNT(*) AS Count 
FROM Threats
GROUP BY Traffic_Type
ORDER BY Count DESC;

