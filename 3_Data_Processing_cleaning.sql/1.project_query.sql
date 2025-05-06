/* Question 1) To provide a list of healthy individuals with low absenteeism 
for our healthy bonus program. 
The program's total budget is $1000 USD.*/

SELECT *
FROM 
    absenteeism_at_work ab    
WHERE ab.disciplinary_failure = FALSE 
        AND ab.social_drinker= FALSE AND ab.social_smoker= FALSE 
        AND ab.body_mass_index < 25 
        AND ab.absenteeism_time_in_hours <= (SELECT 
                        ROUND(Avg(ab.absenteeism_time_in_hours))
FROm absenteeism_at_work ab
)

/*
ANSWER 1) Based on the SQL query, we have determined that there are 119 employers who
meet multiple criteria and are considered to be healthy with low absenteeism. We
can offer them bonus incentives from our fixed budget to show our appreciation.*/

--------------------------------------------------------------------------------------------------------------------------


/* Question 2) Please calculate the wage increase or annual compensation for non-smokers,
using an insurance budget of $983,221 for all non-smokers.*/

-- ANSWER 2) Compensation rate increase for non-smokers / budget $983,221. insight = 0.68 increase per hour, $1,414.4/year 

SELECT COUNT(ab.id)
FROM absenteeism_at_work ab
WHERE ab.social_smoker = FALSE