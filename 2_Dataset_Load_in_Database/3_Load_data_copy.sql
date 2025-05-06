COPY Reasons
FROM 'C:\Users\verma\OneDrive\Desktop\HR-Analytics-Absenteeism\1_Data_Files_csv\Reasons.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

COPY Absenteeism_at_work
FROM 'C:\Users\verma\OneDrive\Desktop\HR-Analytics-Absenteeism\1_Data_Files_csv\Absenteeism_at_work.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

COPY Compensation
FROM 'C:\Users\verma\OneDrive\Desktop\HR-Analytics-Absenteeism\1_Data_Files_csv\compensation.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');
