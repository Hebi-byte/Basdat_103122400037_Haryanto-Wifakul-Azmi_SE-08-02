
CREATE TABLE department (
  department_id   NUMBER PRIMARY KEY,
  department_name VARCHAR2(50),
  manager_id      NUMBER,
  location_id     NUMBER
);

CREATE TABLE employee (
  employee_id     NUMBER PRIMARY KEY,
  last_name       VARCHAR2(50) NOT NULL,
  email           VARCHAR2(100),
  salary          NUMBER(10,2),
  commission_pct  NUMBER(5,2),
  hire_date       DATE NOT NULL,
  department_id   NUMBER,
  CONSTRAINT fk_emp_dept
    FOREIGN KEY (department_id)
    REFERENCES department(department_id)
);

CREATE TABLE supplier (
  supplier_id   NUMBER PRIMARY KEY,
  supplier_name VARCHAR2(100),
  phone         VARCHAR2(20),
  address       VARCHAR2(150)
);

CREATE TABLE inventory (
  item_id     NUMBER PRIMARY KEY,
  item_name   VARCHAR2(100),
  stock       NUMBER,
  price       NUMBER(10,2),
  supplier_id NUMBER,
  CONSTRAINT fk_inv_supplier
    FOREIGN KEY (supplier_id)
    REFERENCES supplier(supplier_id)
);
--------------------------------------------------------------------------------


ANALYZE TABLE department COMPUTE STATISTICS;
ANALYZE TABLE employee COMPUTE STATISTICS;
ANALYZE TABLE supplier COMPUTE STATISTICS;
ANALYZE TABLE inventory COMPUTE STATISTICS;


--------------------------------------------------------------------------------
CREATE VIEW empvu80 AS
SELECT 
  employee_id AS id_number,
  last_name AS name,
  salary,
  department_id
FROM employee
WHERE department_id = 80;

DESC empvu80;

--------------------------------------------------------------------------------
INSERT INTO department VALUES (10, 'Administration', 101, 1700);
INSERT INTO department VALUES (20, 'Marketing', 102, 1800);
INSERT INTO department VALUES (30, 'Purchasing', 103, 1900);
INSERT INTO department VALUES (40, 'Human Resources', 104, 2000);
INSERT INTO department VALUES (50, 'Shipping', 105, 2100);
INSERT INTO department VALUES (60, 'IT', 106, 2200);
INSERT INTO department VALUES (70, 'Public Relations', 107, 2300);
INSERT INTO department VALUES (80, 'Sales', 108, 2400);
INSERT INTO department VALUES (90, 'Executive', 109, 2500);
INSERT INTO department VALUES (100, 'Finance', 110, 2600);


INSERT INTO employee VALUES (1, 'Smith', 'smith@mail.com', 5000, 0.10, DATE '2020-01-10', 80);
INSERT INTO employee VALUES (2, 'Jones', 'jones@mail.com', 4500, 0.15, DATE '2020-02-15', 80);
INSERT INTO employee VALUES (3, 'Brown', 'brown@mail.com', 6000, 0.20, DATE '2021-03-20', 80);
INSERT INTO employee VALUES (4, 'Taylor', 'taylor@mail.com', 4000, NULL, DATE '2021-04-25', 10);
INSERT INTO employee VALUES (5, 'Wilson', 'wilson@mail.com', 5500, NULL, DATE '2022-05-12', 20);
INSERT INTO employee VALUES (6, 'Davis', 'davis@mail.com', 7000, 0.25, DATE '2022-06-18', 30);
INSERT INTO employee VALUES (7, 'Miller', 'miller@mail.com', 4800, NULL, DATE '2023-07-22', 40);
INSERT INTO employee VALUES (8, 'Moore', 'moore@mail.com', 5200, 0.10, DATE '2023-08-30', 50);
INSERT INTO employee VALUES (9, 'Clark', 'clark@mail.com', 6200, 0.12, DATE '2024-09-14', 60);
INSERT INTO employee VALUES (10, 'Hall', 'hall@mail.com', 5800, NULL, DATE '2024-10-05', 70);


INSERT INTO supplier VALUES (1, 'PT Sumber Jaya', '0811111111', 'Jakarta');
INSERT INTO supplier VALUES (2, 'PT Maju Terus', '0822222222', 'Bandung');
INSERT INTO supplier VALUES (3, 'CV Sentosa', '0833333333', 'Surabaya');
INSERT INTO supplier VALUES (4, 'UD Berkah', '0844444444', 'Medan');
INSERT INTO supplier VALUES (5, 'PT Makmur', '0855555555', 'Semarang');
INSERT INTO supplier VALUES (6, 'PT Sejahtera', '0866666666', 'Yogyakarta');
INSERT INTO supplier VALUES (7, 'CV Abadi', '0877777777', 'Malang');
INSERT INTO supplier VALUES (8, 'PT Prima', '0888888888', 'Bekasi');
INSERT INTO supplier VALUES (9, 'UD Mandiri', '0899999999', 'Depok');
INSERT INTO supplier VALUES (10, 'PT Global', '0800000000', 'Tangerang');


INSERT INTO inventory VALUES (1, 'Laptop', 20, 7500000, 1);
INSERT INTO inventory VALUES (2, 'Mouse', 100, 75000, 2);
INSERT INTO inventory VALUES (3, 'Keyboard', 80, 150000, 3);
INSERT INTO inventory VALUES (4, 'Monitor', 30, 1500000, 4);
INSERT INTO inventory VALUES (5, 'Printer', 15, 2200000, 5);
INSERT INTO inventory VALUES (6, 'Scanner', 10, 1800000, 6);
INSERT INTO inventory VALUES (7, 'Flashdisk', 200, 60000, 7);
INSERT INTO inventory VALUES (8, 'Harddisk', 50, 900000, 8);
INSERT INTO inventory VALUES (9, 'RAM', 40, 650000, 9);
INSERT INTO inventory VALUES (10, 'SSD', 35, 1200000, 10);

COMMIT;
--------------------------------------------------------------------------------

CREATE INDEX idx_employee_department_id
ON employee(department_id);

SELECT * FROM empvu80;