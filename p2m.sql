1. WHAT IS THE AVERAGE CALORIES BURNED FOR EACH WORKOUT TYPE?

SELECT Workout_Type, AVG(Calories_Burned) AS avg_calories
FROM Final_data
GROUP BY Workout_Type;


2. LIST THE TOP 3 MEALS WITH THE HIGHEST 
CALORIES PER GRAM (CALORIES ÷ SERVING SIZE).

SELECT meal_name,
       Calories,
       serving_size_g,
       (Calories / serving_size_g) AS calories_per_gram
FROM Final_data
ORDER BY calories_per_gram DESC
LIMIT 3;

3. LIST THE TOP 3 MEALS WITH THE 
HIGHEST CALORIES PER GRAM (CALORIES ÷ SERVING SIZE).

SELECT meal_name,
       Calories,
       serving_size_g,
       (Calories / serving_size_g) AS calories_per_gram
FROM Final_data
ORDER BY calories_per_gram DESC
LIMIT 3;

4. WHAT IS THE AVERAGE MAX BPM AND AVERAGE AVG BPM FOR EACH GENDER?

SELECT Gender,
       AVG(Max_BPM) AS avg_max_bpm,
       AVG(Avg_BPM) AS avg_avg_bpm
FROM Final_data
GROUP BY Gender;

5. FETCH ALL RECORDS WHERE DAILY MEALS FREQUENCY IS MORE THAN 3 AND 
THE PERSON DOES PHYSICAL EXERCISE.

SELECT *
FROM Final_data
WHERE "Daily meals frequency" > 3
  AND "Physical exercise" = 'Yes';
