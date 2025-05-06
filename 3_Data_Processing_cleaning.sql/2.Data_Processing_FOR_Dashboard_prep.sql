-- Optimize the query for Dashboard prepration

/* Master_Table: Absenteeism_at_work*/
CREATE VIEW absenteeism_at_work_fact AS
SELECT
    ab.id,
    ab.body_mass_index,
    CASE 
    When Body_mass_index <18.5 then 'Underweight'
    When Body_mass_index between 18.5 and 25 then 'Healthy Weight'
    When Body_mass_index between 25 and 30 then 'Overweight'
    When Body_mass_index > 30 then 'Obese'
    Else 'Unknown'
    END as BMI_category,
    CASE
    WHEN Month_of_absence in (12,1,2) then 'Winter'
    WHEN Month_of_absence in (3,4,5) then 'Spring'
    WHEN Month_of_absence in (6,7,8) then 'Summer'
    WHEN Month_of_absence in (9,10,11) then 'Fall'
    else 'Unknown'
    end as Season_names,
    ab.seasons,
    co.comp_per_hr,
    re.reason,
    ab.month_of_absence,
    -- ab.reason_for_absence,
    ab.day_of_the_week,
    ab.age,
    ab.disciplinary_failure,
    ab.education,
    ab.son,
    ab.social_drinker,
    ab.social_smoker,
    ab.absenteeism_time_in_hours
FROM absenteeism_at_work ab
LEFT JOIN compensation co ON ab.id=co.id
LEFT JOIN reasons re ON ab.reason_for_absence=re.number

