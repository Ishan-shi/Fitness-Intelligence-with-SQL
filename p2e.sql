1. Write a query to display the name of exercises and their target muscle group for all exercises that target the chest.

SELECT "Name of Exercise", "Target Muscle Group"
FROM Final_data
WHERE "Target Muscle Group" = 'Chest';


2. Write a query to retrieve all columns for users whose BMI is greater than 25.

SELECT *
FROM Final_data
WHERE BMI > 25;

3. Write a query to display meal names and 
their calorie values for meals that contain more than 20g of protein.

SELECT meal_name, Calories
FROM Final_data
WHERE Proteins > 20;

4. Write a query to list the workout type and 
calories burned for sessions that lasted longer than 60 minutes.

SELECT Workout_Type, Calories_Burned
FROM Final_data
WHERE Session_Duration > 60;


5. Write a query to count how many users belong to each experience level.

SELECT Experience_Level, COUNT(*) AS user_count
FROM Final_data
GROUP BY Experience_Level;
