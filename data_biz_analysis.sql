INSERT INTO department (ID,DEPT)
VALUES('A01','경리부')
;
INSERT INTO department (ID,DEPT)
VALUES('A02','관리부')
;

INSERT INTO company (ID,NAME,SALARY)
VALUES('1','제인',2000)
;
INSERT INTO company (ID,NAME,SALARY)
VALUES('2','본인',3000)
;

INSERT INTO company_dept (Company_ID, DEPT_ID)
VALUES ('1', 'A01')
;
INSERT INTO company_dept (Company_ID, DEPT_ID)
VALUES ('2', 'A02')
;
SELECT company.NAME, department.DEPT
FROM company
	Inner Join company_dept
	ON company.ID = company_dept.Company_ID
	Inner Join department
	ON department.ID = company_dept.DEPT_ID
;

DELETE FROM company_dept 
WHERE Company_company_deptID = '2'; 

DELETE FROM company
WHERE ID = '2'; 