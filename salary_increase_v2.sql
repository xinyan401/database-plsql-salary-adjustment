CREATE OR REPLACE PROCEDURE salary_increase AS
  CURSOR emp_cur IS
    SELECT empid, empgrade, empsalary FROM employee;
  v_empid employee.empid%TYPE;
  v_empgrade employee.empgrade%TYPE;
  v_salary employee.empsalary%TYPE;
  v_maxsalary grade.maxsalary%TYPE;
  v_new_salary NUMBER;
BEGIN
  OPEN emp_cur;
  LOOP
    FETCH emp_cur INTO v_empid, v_empgrade, v_salary;
    EXIT WHEN emp_cur%NOTFOUND;

    SELECT maxsalary INTO v_maxsalary
    FROM grade
    WHERE grade = v_empgrade;

    IF v_empgrade < 4 THEN
      v_new_salary := v_salary + 500;
      IF v_new_salary > v_maxsalary THEN
        v_new_salary := v_maxsalary;
      END IF;
      UPDATE employee SET empsalary = v_new_salary WHERE empid = v_empid;

    ELSIF v_empgrade > 3 THEN
      v_new_salary := v_salary + 1000;
      IF v_new_salary > v_maxsalary THEN
        v_new_salary := v_maxsalary;
      END IF;
      UPDATE employee SET empsalary = v_new_salary WHERE empid = v_empid;
    END IF;
  END LOOP;
  CLOSE emp_cur;
END;
/
