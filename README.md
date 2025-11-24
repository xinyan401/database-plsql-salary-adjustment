# PL/SQL Salary Adjustment System

## 📌 Project Overview
A PL/SQL project that uses cursors to update employee salaries based on grade levels.  
It includes:
- Employee table
- Grade table
- Procedures to adjust salaries
- Logic to prevent exceeding maximum salary limits

## 🛠 Technologies Used
- SQL
- PL/SQL
- Oracle Database
- Cursor operations
- Conditional logic

## ✨ Features
### Version 1
- Increase salary by RM500 for grade < 4  
- Increase salary by RM1000 for grade > 3  

### Version 2
- Includes grade table (min & max)
- Enforces salary ceiling for each grade
- Prevents salary overflow beyond max range

## 📚 What I Learned
- Cursor loops  
- Stored procedures  
- Parameterized queries  
- Data consistency handling  

## ▶️ How to Use
Run the SQL files in this order:

1. `employee_table.sql`
2. `grade_table.sql`
3. `salary_increase_v1.sql` or `salary_increase_v2.sql`
4. `EXEC salary_increase;`

## I contributed the majority of the SQL logic in this project, including:
- creating tables
- writing INSERT, UPDATE, DELETE statements
- implementing stored procedures and functions
- basic exception handling

The only section not written by me is the V2 cursor part, which was added
later by my teammate as an enhancement. 

## 🔧 Status
This project was built for my Database Technology course as a hands-on PL/SQL exercise.

