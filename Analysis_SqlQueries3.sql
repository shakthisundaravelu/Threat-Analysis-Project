#7. Identifying Attack signatures associated with certain attack types

SELECT Attack_Type, Attack_Signature, COUNT(*) AS Occurrences
FROM Threats
GROUP BY Attack_Type, Attack_Signature
ORDER BY Occurrences DESC
LIMIT 10;

#8. Threats Distribution across network segments

SELECT Network_Segment, COUNT(*) AS Threat_Count
FROM Threats
GROUP BY Network_Segment
ORDER BY Threat_Count DESC;

#9. Devices involved in most incidents

SELECT Device_Information, COUNT(*) AS Incidents
FROM Threats
GROUP BY Device_Information
ORDER BY Incidents DESC
LIMIT 10;

#10. Analyzing which type of attacks triggers the alert

SELECT 
    Attack_Type AS Attack,
    Alerts_Warnings AS Alert_Type,
    COUNT(*) AS Alert_Count
FROM Threats
WHERE Alerts_Warnings NOT IN ('No Alerts', 'Unknown')
GROUP BY Attack_Type, Alerts_Warnings
ORDER BY Alert_Count DESC;


