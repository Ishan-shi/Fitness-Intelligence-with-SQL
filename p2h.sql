1. Find the top 5 exercises with the highest calories burned per minute.

SELECT "Name of Exercise",
       Calories_Burned,
       Session_Duration,
       (Calories_Burned * 1.0 / Session_Duration) AS cal_per_min
FROM Final_data
WHERE Session_Duration > 0
ORDER BY cal_per_min DESC
LIMIT 5;


2. Show all rows where the calculated BMI (BMI_calc) is at least
 2 points higher than the given BMI.

SELECT *
FROM Final_data
WHERE (BMI_calc - BMI) > 2;
 
3. Show all rows where the calculated BMI (BMI_calc) is at least 
2 points higher than the given BMI.

SELECT AVG(protein_per_kg) AS avg_protein_per_kg
FROM Final_data
WHERE Experience_Level = 'Intermediate'
  AND Workout_Type = 'Strength';

4. List all meals ordered by calorie density (calories per gram) 
from highest to lowest.

SELECT meal_name,
       Calories,
       serving_size_g,
       (Calories * 1.0 / serving_size_g) AS calorie_density
FROM Final_data
ORDER BY calorie_density DESC;

5. For each target muscle group, find the exercise with the 
highest total workload (sets × reps).

WITH workload AS (
    SELECT 
        "Name of Exercise",
        "Target Muscle Group",
        Sets,
        Reps,
        (Sets * Reps) AS total_workload,
        "Equipment Needed"
    FROM Final_data
)
SELECT w.*
FROM workload w
JOIN (
    SELECT "Target Muscle Group", MAX(total_workload) AS max_workload
    FROM workload
    GROUP BY "Target Muscle Group"
) m
ON w."Target Muscle Group" = m."Target Muscle Group"
AND w.total_workload = m.max_workload;

