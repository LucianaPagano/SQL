
1. 
CREATE TABLE Clientes_LP AS SELECT * FROM clientes_bu;
CREATE TABLE Celulares_LP AS SELECT * FROM celulares_bu

ALTER TABLE Clientes_LP
ADD CONSTRAINT PRIK PRIMARY KEY (ID);

ALTER TABLE Celulares_LP
ADD CONSTRAINT PK PRIMARY KEY (ID);

ALTER TABLE Celulares_LP
ADD CONSTRAINT FK FOREIGN KEY (ID) REFERENCES Clientes_LP(ID); 

SELECT * FROM Clientes_LP
SELECT * FROM Celulares_LP

2.
SELECT concat('Mi primer', ' ejercicio en clase') FROM dual

3. 
SELECT UPPER('Mi primer ejercicio en clase') FROM dual

4. 
SELECT LTRIM('          Mi primer ejercicio en clase') FROM dual

5.
SELECT LENGTH('Mi primer ejercicio en clase') FROM dual
SELECT SUBSTR('Mi primer ejercicio en clase', 23, 28) FROM dual

6.
SELECT RTRIM('Mi primer ejercicio en clase          ') FROM dual

7. 
SELECT lower('Mi primer ejercicio en clase') FROM dual

8.
SELECT REPLACE ('Yo las conozco', 'a', 'o') FROM Dual

9. 
SELECT TRIM('     Mi primer ejercicio en clase          ') FROM dual

10. 
SELECT LENGTH('Mi primer ejercicio en clase') FROM dual

11.
SELECT ROUND(21.46, 1) FROM dual 

12. 
SELECT ROUND(21.46, -1) FROM dual 

13. 
SELECT MOD(24, 5) FROM DUAL

14. 
SELECT POWER(8, 3) FROM DUAL

15. 
SELECT TRUNC(142.485834) FROM DUAL

16.
SELECT ADD_MONTHS('01/01/2020', 10) FROM dual

17.
SELECT LENGTH(TRIM(CONCAT('Mi primer', '      ejercicio en clase.     ')))FROM dual

18.
SELECT UPPER('Mi primer ' || REPLACE(RTRIM( ' ejercicio en clase'), ' ', ''))from dual 

-- ESTRUCTURA PL SQL 
19.
BEGIN
  dbms_output.put_line('Hola Mundo');
END;
/

20. 
DECLARE
  message varchar2(20) := 'Hola Mundo';
BEGIN
  dbms_output.put_line(message);
END;
/

21.
DECLARE
  message varchar2(20) := '   Hola Mundo   ';
BEGIN
  message := TRIM(message)
  dbms_output.put_line(message);
END;
/

22.
DECLARE
  numero NUMBER;
BEGIN
  numero := &Inp;
  dbms_output.put_line(numero);
END;
/

23.
DECLARE
  Var1 varchar2(10) := 'Primero';
  Var2 varchar2(10):= 'Segundo';
BEGIN
  dbms_output.put_line(Var1 || Var2);
END;
/

24. 
DECLARE
  num1 NUMBER;
  num2 NUMBER; 
BEGIN 
  num1 := &Inp1;
  num2 := &Inp2;
  dbms_output.put_line(num1 + num2);
END;
/

25.
DECLARE
  numero NUMBER;
BEGIN
  numero := &Inp;
  if numero <= 10 then 
    dbms_output.put_line(numero + 1);
    dbms_output.put_line(numero + 2);
    dbms_output.put_line(numero + 3);
    dbms_output.put_line(numero + 4);
    dbms_output.put_line(numero + 5);
    dbms_output.put_line(numero + 6);
    dbms_output.put_line(numero + 7);
    dbms_output.put_line(numero + 8);
    dbms_output.put_line(numero + 9);
    dbms_output.put_line(numero + 10);
   END IF;
END;
/

26. 
DECLARE
  numero NUMBER;
BEGIN
  numero := &Inp;
  if numero <= 10 then 
    dbms_output.put_line(numero);
    dbms_output.put_line(numero + 1);
    dbms_output.put_line(numero + 2);
    dbms_output.put_line(numero + 3);
    dbms_output.put_line(numero + 4);
    dbms_output.put_line(numero + 5);
    dbms_output.put_line(numero + 6);
    dbms_output.put_line(numero + 7);
    dbms_output.put_line(numero + 8);
    dbms_output.put_line(numero + 9);
    dbms_output.put_line(numero + 10);
   END IF;
END;
/
 
26. 
DECLARE
  num_anterior NUMBER:= 0;
  num_actual NUMBER:= 1;
  resultado NUMBER;
  cot NUMBER := 1;
BEGIN
  IF cot = 1 then
    resultado := num_anterior + num_actual;
    dbms_output.put_line(resultado);
    cot := cot + 1;
    num_anterior := num_actual;
    num_actual := resultado;
  END IF;
    IF cot = 2 then
    resultado := num_anterior + num_actual;
    dbms_output.put_line(resultado);
    cot := cot + 1;
    num_anterior := num_actual;
    num_actual := resultado;
  END IF;
  IF cot = 3 then
    resultado := num_anterior + num_actual;
    dbms_output.put_line(resultado);
    cot := cot + 1;
    num_anterior := num_actual;
    num_actual := resultado;
  END IF;
  IF cot = 4 then
    resultado := num_anterior + num_actual;
    dbms_output.put_line(resultado);
    cot := cot + 1;
    num_anterior := num_actual;
    num_actual := resultado;
  END IF;
  IF cot = 5 then
    resultado := num_anterior + num_actual;
    dbms_output.put_line(resultado);
    cot := cot + 1;
    num_anterior := num_actual;
    num_actual := resultado;
  END IF;
  IF cot = 6 then
    resultado := num_anterior + num_actual;
    dbms_output.put_line(resultado);
    cot := cot + 1;
    num_anterior := num_actual;
    num_actual := resultado;
  END IF;
    IF cot = 7 then
    resultado := num_anterior + num_actual;
    dbms_output.put_line(resultado);
    cot := cot + 1;
    num_anterior := num_actual;
    num_actual := resultado;
  END IF;
  IF cot = 8 then
    resultado := num_anterior + num_actual;
    dbms_output.put_line(resultado);
    cot := cot + 1;
    num_anterior := num_actual;
    num_actual := resultado;
  END IF;
  IF cot = 9 then
    resultado := num_anterior + num_actual;
    dbms_output.put_line(resultado);
    cot := cot + 1;
    num_anterior := num_actual;
    num_actual := resultado;
  END IF;
  IF cot = 10 then
    resultado := num_anterior + num_actual;
    dbms_output.put_line(resultado);
    cot := cot + 1;
    num_anterior := num_actual;
    num_actual := resultado;
  END IF;
END;
/

27. 
DECLARE
  numero NUMBER;
BEGIN
  numero := &Inp1;
  if numero <= 10 then 
    dbms_output.put_line('Número menor a 10');
    ELSE 
      dbms_output.put_line('Mayor a 10');
   END IF;
END;
/

28.
DECLARE
  numero NUMBER;
BEGIN
  numero := &Inp1;
  if numero <= 50 then 
    dbms_output.put_line('Número menor a 50');
    ELSE 
      dbms_output.put_line(numero);
   END IF;
END;
/

29. 
DECLARE
  numero NUMBER;
  absoluto NUMBER;
BEGIN
  numero := &Inp1;
  if numero < 0 then 
    absoluto := (numero * -1);
    dbms_output.put_line(absoluto + 1);
    dbms_output.put_line(absoluto);
    dbms_output.put_line(absoluto - 1);
    ELSE 
      dbms_output.put_line(numero);
   END IF;
END;
/

30.
DECLARE
  num1 NUMBER;
  num2 NUMBER;
  sumn NUMBER;
BEGIN
  num1 := &Inp1;
  num2 := &Inp2;
  sumn := num1 + num2;
  IF sumn < 50 and sumn > 2 THEN 
      dbms_output.put_line(sumn);
      dbms_output.put_line('Entre 2 y 50');
  ELSIF sumn > 51 and sumn < 100 THEN 
      dbms_output.put_line(sumn);
      dbms_output.put_line('Entre 51 y 100');
  ELSIF sumn  > 101 and sumn < 200 THEN 
      dbms_output.put_line(sumn);
      dbms_output.put_line('Entre 101 y 200');
  ELSIF sumn > 200 THEN 
      dbms_output.put_line('Numero no contemplado');
  END IF;
END;
/

31. 
