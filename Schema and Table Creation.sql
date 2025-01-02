CREATE DATABASE CyberSecurityAnalysis;
USE CyberSecurityAnalysis;

CREATE TABLE Threats (
    Timestamp DATETIME,
    Source_IP_Address VARCHAR(100),
    Destination_IP_Address VARCHAR(100),
    Source_Port INT,
    Destination_Port INT,
    Protocol VARCHAR(50),
    Packet_Length INT,
    Packet_Type VARCHAR(50),
    Traffic_Type VARCHAR(100),
    Malware_Indicators VARCHAR(255),
    Anomaly_Scores FLOAT,
    Alerts_Warnings VARCHAR(255),
    Attack_Type VARCHAR(100),
    Attack_Signature VARCHAR(255),
    Action_Taken VARCHAR(255),
    Severity_Level VARCHAR(50),
    User_Information VARCHAR(100),
    Device_Information VARCHAR(255),
    Network_Segment VARCHAR(100),
    Geo_Location_Data VARCHAR(255),
    Proxy_Information VARCHAR(255),
    Firewall_Logs VARCHAR(255),
    IDS_IPS_Alerts VARCHAR(255),
    Log_Source VARCHAR(100)
);
