CREATE TABLE employee (
  empid        NUMBER PRIMARY KEY,
  empname      VARCHAR2(50),
  empaddr1     VARCHAR2(50),
  empaddr2     VARCHAR2(50),
  empaddr3     VARCHAR2(50),
  emppostcode  VARCHAR2(10),
  empdept      VARCHAR2(20),
  empgrade     NUMBER,         
  empsalary    NUMBER);


INSERT INTO employee VALUES (1001, 'Alice', 'A1', NULL, NULL, '43000', 'HR', 1, 12000);
INSERT INTO employee VALUES (1002, 'Bob',   'B1', NULL, NULL, '43200', 'IT', 2, 18000);
INSERT INTO employee VALUES (1003, 'Cara',  'C1', NULL, NULL, '45000', 'FIN',3, 20000);
INSERT INTO employee VALUES (1004, 'Dan',   'D1', NULL, NULL, '46000', 'OPS',4, 23000);
INSERT INTO employee VALUES (1005, 'Eve',   'E1', NULL, NULL, '43700', 'IT', 5, 28000);
INSERT INTO employee VALUES (1006, 'Fay',   'F1', NULL, NULL, '43700', 'HR', 1, 14950);
INSERT INTO employee VALUES (1007, 'Gus',   'G1', NULL, NULL, '43200', 'OPS',2, 14000);
INSERT INTO employee VALUES (1008, 'Hana',  'H1', NULL, NULL, '43000', 'FIN',3, 21950);
INSERT INTO employee VALUES (1009, 'Ivan',  'I1', NULL, NULL, '45000', 'IT', 4, 25450);
INSERT INTO employee VALUES (1010,'Jade',  'J1', NULL, NULL, '46000', 'FIN',5, 29950);
