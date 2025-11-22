CREATE OR REPLACE PROCEDURE salary_increase AS
  CURSOR emp_cur IS
    SELECT empid, empgrade, empsalary
    FROM   employee;

  v_empid     employee.empid%TYPE;
  v_empgrade  employee.empgrade%TYPE;
  v_salary    employee.empsalary%TYPE;
BEGIN
  OPEN emp_cur;
  LOOP
    FETCH emp_cur INTO v_empid, v_empgrade, v_salary;
    EXIT WHEN emp_cur%NOTFOUND;

    IF v_empgrade < 4 THEN
      UPDATE employee
      SET empsalary = v_salary + 500
      WHERE empid = v_empid;

    ELSIF v_empgrade > 3 THEN
      UPDATE employee
      SET empsalary = v_salary + 1000
      WHERE empid = v_empid;
    END IF;
  END LOOP;

  CLOSE emp_cur;
END;
/
