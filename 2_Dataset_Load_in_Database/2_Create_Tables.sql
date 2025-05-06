-- Creating the Absenteeism_at_work table
-- This table stores data related to employee absenteeism, including reasons, personal details, workload, and absenteeism hours.
CREATE TABLE Absenteeism_at_work (
    ID INTEGER PRIMARY KEY,
    Reason_for_absence INTEGER,
    Month_of_absence INTEGER,
    Day_of_the_week INTEGER,
    Seasons TEXT,
    Transportation_expense NUMERIC,
    Distance_from_Residence_to_Work NUMERIC,
    Service_time INTEGER,
    Age INTEGER,
    Work_load_Average_per_day TEXT,
    Hit_target NUMERIC,
    Disciplinary_failure BOOLEAN,
    Education INTEGER,
    Son INTEGER,
    Social_drinker BOOLEAN,
    Social_smoker BOOLEAN,
    Pet INTEGER,
    Weight NUMERIC,
    Height NUMERIC,
    Body_mass_index NUMERIC,
    Absenteeism_time_in_hours NUMERIC,
    FOREIGN KEY(Reason_for_absence) REFERENCES Reasons(Number)
);

-- Creating the Compensation table
-- This table tracks the ID and hourly compensation rate for employees.
CREATE TABLE Compensation (
    ID INTEGER PRIMARY KEY,
    Comp_per_hr NUMERIC,
    FOREIGN KEY(ID) REFERENCES Absenteeism_at_work(ID)
);

-- Creating the Reasons table
-- This table contains different reasons for employee absenteeism, including a unique number identifier and the description of the reason.
CREATE TABLE Reasons (
    Number INTEGER PRIMARY KEY,
    Reason TEXT
);
