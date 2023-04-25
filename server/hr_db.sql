CREATE DATABASE "STACK-HR";

CREATE TABLE "EMPLOYEES"(employee_id SERIAL PRIMARY KEY, first_name VARCHAR, middle_name VARCHAR, last_name VARCHAR, province VARCHAR, city VARCHAR, municipality VARCHAR, baranggay VARCHAR, zipcode VARCHAR,mobile_number VARCHAR, telephone_number VARCHAR, work_email VARCHAR, personal_email VARCHAR,emergency_contact_person VARCHAR, emergency_contact_email VARCHAR,emergency_contact_number VARCHAR, relationship VARCHAR, job_title VARCHAR, date_created DATE, date_updated DATE, status INTEGER DEFAULT 1, gender VARCHAR, marital_status VARCHAR, birthday DATE);

CREATE TABLE "SALARIES" (salary_id SERIAL PRIMARY KEY, salary DECIMAL, status INTEGER, date_created DATE, date_updated DATE, employee_id INTEGER UNIQUE REFERENCES "EMPLOYEES"(employee_id));

create table "SSS_DEDUCTIONS" (deduction_id SERIAL PRIMARY KEY, salary_range_1 DECIMAL, salary_range_2 DECIMAL, employee_contribution_sss DECIMAL, employer_contribution_sss DECIMAL, employee_contribution_ec DECIMAL, employer_contribution_ec DECIMAL, employee_contribution_mpf DECIMAL, employer_contribution_mpf DECIMAL,date_created DATE, date_updated DATE);

-- CREATE TABLE "DEDUCTIONS" (deduction_id SERIAL PRIMARY KEY, deduction_name VARCHAR, description VARCHAR, amount DECIMAL, date_created DATE, date_updated DATE);

//For Stack-Expense
 CREATE table CATEGORIES ("category_Id" SERIAL PRIMARY KEY, "category_name" VARCHAR (50));

CREATE TABLE transaction (
    transaction_Id SERIAL PRIMARY KEY,
    employee_Id INTEGER NOT NULL,
    date DATE NOT NULL,
    category_Id,
    total_Amount NUMERIC(10, 2) NOT NULL,
    receipt_Image BYTEA,
    inserted_At TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_At TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE reports (
    report_id SERIAL PRIMARY KEY,
    transaction_Id INTEGER NOT NULL,
    date DATE NOT NULL,
    category_Id INTEGER NOT NULL,
    description TEXT,
    amount NUMERIC(10, 2) NOT NULL
);





