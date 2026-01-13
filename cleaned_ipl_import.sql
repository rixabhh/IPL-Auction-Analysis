-- Create the database
CREATE DATABASE IF NOT EXISTS ipl_auction;
USE ipl_auction;

-- Drop table if already exists (for clean re-runs)
DROP TABLE IF EXISTS auction_data;

-- Create the auction_data table
CREATE TABLE auction_data (
    Player VARCHAR(100),
    Role VARCHAR(100),
    Amount BIGINT,
    Team VARCHAR(100),
    Year INT,
    Player_Origin VARCHAR(100),
    Amount_Cr FLOAT,
    Count INT,
    Repeated BOOLEAN
);

-- At this point, you can import your cleaned CSV data using:
-- MySQL Workbench > Table Data Import Wizard
-- or via Python script (already shared earlier)

-- ------------------------
-- 🔍 FINANCIAL ANALYSIS QUERIES
-- ------------------------

-- 1. Total Spend by Team Each Year
SELECT 
    Year, 
    Team, 
    ROUND(SUM(Amount_Cr), 2) AS Total_Spend_Cr
FROM auction_data
GROUP BY Year, Team
ORDER BY Year, Total_Spend_Cr DESC;

-- 2. Average Spend by Team
SELECT 
    Team, 
    ROUND(AVG(Amount_Cr), 2) AS Average_Spend_Cr
FROM auction_data
GROUP BY Team
ORDER BY Average_Spend_Cr DESC;

-- 3. Total Spend by Player Role
SELECT 
    Role, 
    ROUND(SUM(Amount_Cr), 2) AS Total_Spend_Cr
FROM auction_data
GROUP BY Role
ORDER BY Total_Spend_Cr DESC;

-- 4. Spend Distribution by Player Origin (Indian vs Overseas)
SELECT 
    Player_Origin, 
    ROUND(SUM(Amount_Cr), 2) AS Total_Spend_Cr
FROM auction_data
GROUP BY Player_Origin;

-- 5. Spend on Repeated vs One-Time Players
SELECT 
    Repeated, 
    ROUND(SUM(Amount_Cr), 2) AS Total_Spend_Cr,
    COUNT(*) AS Player_Count
FROM auction_data
GROUP BY Repeated;

-- 6. Top 10 Most Expensive Players in Auction History
SELECT 
    Player, 
    MAX(Amount_Cr) AS Max_Amount_Cr
FROM auction_data
GROUP BY Player
ORDER BY Max_Amount_Cr DESC
LIMIT 10;

-- 7. Team-wise Spend on Indian vs Overseas Players
SELECT 
    Team,
    Player_Origin,
    ROUND(SUM(Amount_Cr), 2) AS Total_Spend_Cr
FROM auction_data
GROUP BY Team, Player_Origin
ORDER BY Team, Total_Spend_Cr DESC;

-- 8. Yearly Spend Trend
SELECT 
    Year,
    ROUND(SUM(Amount_Cr), 2) AS Total_Yearly_Spend
FROM auction_data
GROUP BY Year
ORDER BY Year;

-- 9. High-Spend Roles per Year
SELECT 
    Year, 
    Role, 
    ROUND(SUM(Amount_Cr), 2) AS Spend
FROM auction_data
GROUP BY Year, Role
ORDER BY Year, Spend DESC;

-- 10. Most Frequently Auctioned Players
SELECT 
    Player, 
    Count AS Times_Auctioned
FROM auction_data
WHERE Count > 1
ORDER BY Times_Auctioned DESC, Player;
