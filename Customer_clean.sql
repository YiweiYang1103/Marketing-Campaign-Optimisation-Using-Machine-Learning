
-- Step 1: 
UPDATE customer_data
SET DemAffl = (
    SELECT DemAffl FROM (
        SELECT DemAffl, COUNT(*) AS cnt
        FROM customer_data
        WHERE DemAffl IS NOT NULL
        GROUP BY DemAffl
        ORDER BY cnt DESC
        LIMIT 1
    ) AS mode_value
)
WHERE DemAffl IS NULL;

UPDATE customer_data
SET DemAge = (
    SELECT DemAge FROM (
        SELECT DemAge, COUNT(*) AS cnt
        FROM customer_data
        WHERE DemAge IS NOT NULL
        GROUP BY DemAge
        ORDER BY cnt DESC
        LIMIT 1
    ) AS mode_value
)
WHERE DemAge IS NULL;

UPDATE customer_data
SET DemClusterGroup = (
    SELECT DemClusterGroup FROM (
        SELECT DemClusterGroup, COUNT(*) AS cnt
        FROM customer_data
        WHERE DemClusterGroup IS NOT NULL
        GROUP BY DemClusterGroup
        ORDER BY cnt DESC
        LIMIT 1
    ) AS mode_value
)
WHERE DemClusterGroup IS NULL;

UPDATE customer_data
SET DemGender = (
    SELECT DemGender FROM (
        SELECT DemGender, COUNT(*) AS cnt
        FROM customer_data
        WHERE DemGender IS NOT NULL
        GROUP BY DemGender
        ORDER BY cnt DESC
        LIMIT 1
    ) AS mode_value
)
WHERE DemGender IS NULL;

UPDATE customer_data
SET DemReg = (
    SELECT DemReg FROM (
        SELECT DemReg, COUNT(*) AS cnt
        FROM customer_data
        WHERE DemReg IS NOT NULL
        GROUP BY DemReg
        ORDER BY cnt DESC
        LIMIT 1
    ) AS mode_value
)
WHERE DemReg IS NULL;

UPDATE customer_data
SET DemTVReg = (
    SELECT DemTVReg FROM (
        SELECT DemTVReg, COUNT(*) AS cnt
        FROM customer_data
        WHERE DemTVReg IS NOT NULL
        GROUP BY DemTVReg
        ORDER BY cnt DESC
        LIMIT 1
    ) AS mode_value
)
WHERE DemTVReg IS NULL;

-- Step 2: 
UPDATE customer_data
SET LoyalTime = (
    SELECT AVG(LoyalTime) FROM customer_data
    WHERE LoyalTime IS NOT NULL
)
WHERE LoyalTime IS NULL;


-- Step 1: 
UPDATE predict_data
SET DemAffl = (
    SELECT DemAffl FROM (
        SELECT DemAffl, COUNT(*) AS cnt
        FROM predict_data
        WHERE DemAffl IS NOT NULL
        GROUP BY DemAffl
        ORDER BY cnt DESC
        LIMIT 1
    ) AS mode_value
)
WHERE DemAffl IS NULL;

UPDATE predict_data
SET DemAge = (
    SELECT DemAge FROM (
        SELECT DemAge, COUNT(*) AS cnt
        FROM predict_data
        WHERE DemAge IS NOT NULL
        GROUP BY DemAge
        ORDER BY cnt DESC
        LIMIT 1
    ) AS mode_value
)
WHERE DemAge IS NULL;

UPDATE predict_data
SET DemClusterGroup = (
    SELECT DemClusterGroup FROM (
        SELECT DemClusterGroup, COUNT(*) AS cnt
        FROM predict_data
        WHERE DemClusterGroup IS NOT NULL
        GROUP BY DemClusterGroup
        ORDER BY cnt DESC
        LIMIT 1
    ) AS mode_value
)
WHERE DemClusterGroup IS NULL;

UPDATE predict_data
SET DemGender = (
    SELECT DemGender FROM (
        SELECT DemGender, COUNT(*) AS cnt
        FROM predict_data
        WHERE DemGender IS NOT NULL
        GROUP BY DemGender
        ORDER BY cnt DESC
        LIMIT 1
    ) AS mode_value
)
WHERE DemGender IS NULL;

UPDATE predict_data
SET DemReg = (
    SELECT DemReg FROM (
        SELECT DemReg, COUNT(*) AS cnt
        FROM predict_data
        WHERE DemReg IS NOT NULL
        GROUP BY DemReg
        ORDER BY cnt DESC
        LIMIT 1
    ) AS mode_value
)
WHERE DemReg IS NULL;

UPDATE predict_data
SET DemTVReg = (
    SELECT DemTVReg FROM (
        SELECT DemTVReg, COUNT(*) AS cnt
        FROM predict_data
        WHERE DemTVReg IS NOT NULL
        GROUP BY DemTVReg
        ORDER BY cnt DESC
        LIMIT 1
    ) AS mode_value
)
WHERE DemTVReg IS NULL;

-- Step 2: 
SELECT AVG(LoyalTime) AS avg_loyal_time
FROM predict_data
WHERE LoyalTime IS NOT NULL;

UPDATE predict_data
SET LoyalTime = '6.56442417331813'
WHERE LoyalTime IS NULL;


