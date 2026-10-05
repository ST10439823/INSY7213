/* ============================================================
   CHARITY 4 AFRICA
   FINAL SQL WORKSHEET
   QUESTIONS 1 - 8
   ST10439823 
   ============================================================ */


/* ============================================================
   QUESTION 1
   CREATE AND POPULATE THE DATABASE TABLES
   ============================================================ */


/* -------------------------
   Q1 - CREATE TABLES
   ------------------------- */

CREATE TABLE customer (
    customer_id NUMBER(5) PRIMARY KEY,
    first_name VARCHAR2(30),
    surname VARCHAR2(30),
    address VARCHAR2(100),
    contact_number VARCHAR2(15),
    email VARCHAR2(100)
);

CREATE TABLE donator (
    donator_id NUMBER(5) PRIMARY KEY,
    first_name VARCHAR2(30),
    surname VARCHAR2(30),
    contact_number VARCHAR2(15),
    email VARCHAR2(100)
);

CREATE TABLE employee (
    employee_id VARCHAR2(10) PRIMARY KEY,
    first_name VARCHAR2(30),
    surname VARCHAR2(30),
    contact_number VARCHAR2(15),
    address VARCHAR2(100),
    email VARCHAR2(100)
);

CREATE TABLE delivery (
    delivery_id NUMBER(3) PRIMARY KEY,
    delivery_notes VARCHAR2(150),
    dispatch_date DATE,
    delivery_date DATE
);

CREATE TABLE donation (
    donation_id NUMBER(5) PRIMARY KEY,
    donator_id NUMBER(5),
    donation VARCHAR2(100),
    price NUMBER(10,2),
    donation_date DATE
);

CREATE TABLE invoice (
    invoice_num NUMBER(5) PRIMARY KEY,
    customer_id NUMBER(5),
    invoice_date DATE,
    employee_id VARCHAR2(10),
    donation_id NUMBER(5),
    delivery_id NUMBER(3)
);

CREATE TABLE returns (
    return_id VARCHAR2(10) PRIMARY KEY,
    return_date DATE,
    reason VARCHAR2(200),
    customer_id NUMBER(5),
    donation_id NUMBER(5),
    employee_id VARCHAR2(10)
);


/* -------------------------
   Q1 - INSERT CUSTOMER DATA
   ------------------------- */

INSERT INTO customer
VALUES (11011, 'Jack', 'Smith', '18 Water Rd',
        '0877277521', 'jsmith@isat.com');

INSERT INTO customer
VALUES (11012, 'Pat', 'Hendricks', '22 Water Rd',
        '0863257857', 'ph@mcom.co.za');

INSERT INTO customer
VALUES (11013, 'Andre', 'Clark', '101 Summer Lane',
        '0834567891', 'aclark@mcom.co.za');

INSERT INTO customer
VALUES (11014, 'Kevin', 'Jones', '55 Mountain way',
        '0612547895', 'kj@isat.co.za');

INSERT INTO customer
VALUES (11015, 'Lucy', 'Williams', '5 Main rd',
        '0827238521', 'lw@mcal.co.za');


/* -------------------------
   Q1 - INSERT DONATOR DATA
   ------------------------- */

INSERT INTO donator
VALUES (20111, 'Jeff', 'Watson',
        '0827172250', 'jwatson@ymail.com');

INSERT INTO donator
VALUES (20112, 'Stephen', 'Jones',
        '0837865670', 'joness@ymail.com');

INSERT INTO donator
VALUES (20113, 'James', 'Joe',
        '0878978650', 'jj@isat.com');

INSERT INTO donator
VALUES (20114, 'Kelly', 'Ross',
        '0826575650', 'kross@gsat.com');

INSERT INTO donator
VALUES (20115, 'Abraham', 'Clark',
        '0797656430', 'aclark@ymail.com');


/* -------------------------
   Q1 - INSERT EMPLOYEE DATA
   ------------------------- */

INSERT INTO employee
VALUES ('emp101', 'Jeff', 'Davis',
        '0877277521', '10 main road', 'jand@isat.com');

INSERT INTO employee
VALUES ('emp102', 'Kevin', 'Marks',
        '0837377522', '18 water road', 'km@isat.com');

INSERT INTO employee
VALUES ('emp103', 'Adanya', 'Andrews',
        '0817117523', '21 circle lane', 'aa@isat.com');

INSERT INTO employee
VALUES ('emp104', 'Adebayo', 'Dryer',
        '0797215244', '1 sea road', 'aryer@isat.com');

INSERT INTO employee
VALUES ('emp105', 'Xolani', 'Samson',
        '0827122255', '12 main road', 'xosam@isat.com');


/* -------------------------
   Q1 - INSERT DELIVERY DATA
   ------------------------- */

INSERT INTO delivery
VALUES (
    511,
    'Double packaging requested',
    TO_DATE('10 May 2024', 'DD Month YYYY'),
    TO_DATE('15 May 2024', 'DD Month YYYY')
);

INSERT INTO delivery
VALUES (
    512,
    'Delivery to work address',
    TO_DATE('12 May 2024', 'DD Month YYYY'),
    TO_DATE('15 May 2024', 'DD Month YYYY')
);

INSERT INTO delivery
VALUES (
    513,
    'Signature required',
    TO_DATE('12 May 2024', 'DD Month YYYY'),
    TO_DATE('17 May 2024', 'DD Month YYYY')
);

INSERT INTO delivery
VALUES (
    514,
    'No notes',
    TO_DATE('12 May 2024', 'DD Month YYYY'),
    TO_DATE('15 May 2024', 'DD Month YYYY')
);

INSERT INTO delivery
VALUES (
    515,
    'Birthday present wrapping required',
    TO_DATE('18 May 2024', 'DD Month YYYY'),
    TO_DATE('19 May 2024', 'DD Month YYYY')
);

INSERT INTO delivery
VALUES (
    516,
    'Delivery to work address',
    TO_DATE('20 May 2024', 'DD Month YYYY'),
    TO_DATE('25 May 2024', 'DD Month YYYY')
);


/* -------------------------
   Q1 - INSERT DONATION DATA
   ------------------------- */

INSERT INTO donation
VALUES (
    7111, 20111, 'KIC Fridge', 599,
    TO_DATE('01 May 2024', 'DD Month YYYY')
);

INSERT INTO donation
VALUES (
    7112, 20112, 'Samsung 42inch LCD', 1299,
    TO_DATE('03 May 2024', 'DD Month YYYY')
);

INSERT INTO donation
VALUES (
    7113, 20113, 'Sharp Microwave', 1599,
    TO_DATE('03 May 2024', 'DD Month YYYY')
);

INSERT INTO donation
VALUES (
    7114, 20115, '6 Seat Dining room table', 799,
    TO_DATE('05 May 2024', 'DD Month YYYY')
);

INSERT INTO donation
VALUES (
    7115, 20114, 'Lazyboy Sofa', 1199,
    TO_DATE('07 May 2024', 'DD Month YYYY')
);

INSERT INTO donation
VALUES (
    7116, 20113, 'JVC Surround Sound System', 179,
    TO_DATE('09 May 2024', 'DD Month YYYY')
);


/* -------------------------
   Q1 - INSERT INVOICE DATA
   ------------------------- */

INSERT INTO invoice
VALUES (
    8111, 11011,
    TO_DATE('15 May 2024', 'DD Month YYYY'),
    'emp103', 7111, 511
);

INSERT INTO invoice
VALUES (
    8112, 11013,
    TO_DATE('15 May 2024', 'DD Month YYYY'),
    'emp101', 7114, 512
);

INSERT INTO invoice
VALUES (
    8113, 11012,
    TO_DATE('17 May 2024', 'DD Month YYYY'),
    'emp101', 7112, 513
);

INSERT INTO invoice
VALUES (
    8114, 11015,
    TO_DATE('17 May 2024', 'DD Month YYYY'),
    'emp102', 7113, 514
);

INSERT INTO invoice
VALUES (
    8115, 11011,
    TO_DATE('17 May 2024', 'DD Month YYYY'),
    'emp102', 7115, 515
);

INSERT INTO invoice
VALUES (
    8116, 11015,
    TO_DATE('18 May 2024', 'DD Month YYYY'),
    'emp103', 7116, 516
);


/* -------------------------
   Q1 - INSERT RETURNS DATA
   ------------------------- */

INSERT INTO returns
VALUES (
    'ret001',
    TO_DATE('25 May 2024', 'DD Month YYYY'),
    'Customer not satisfied with product',
    11011,
    7116,
    'emp101'
);

INSERT INTO returns
VALUES (
    'ret002',
    TO_DATE('25 May 2024', 'DD Month YYYY'),
    'Product had broken section',
    11013,
    7114,
    'emp103'
);

COMMIT;


/* -------------------------
   Q1 - VERIFY RECORDS
   ------------------------- */

SELECT 'CUSTOMER' AS table_name, COUNT(*) AS records
FROM customer

UNION ALL

SELECT 'DELIVERY', COUNT(*)
FROM delivery

UNION ALL

SELECT 'DONATOR', COUNT(*)
FROM donator

UNION ALL

SELECT 'EMPLOYEE', COUNT(*)
FROM employee

UNION ALL

SELECT 'DONATION', COUNT(*)
FROM donation

UNION ALL

SELECT 'INVOICE', COUNT(*)
FROM invoice

UNION ALL

SELECT 'RETURNS', COUNT(*)
FROM returns;



/* ============================================================
   QUESTION 2
   CUSTOMER / EMPLOYEE / DELIVERY / DONATION INVOICE REPORT
   INVOICES AFTER 16 MAY 2024
   ============================================================ */

SELECT
    c.first_name || ', ' || c.surname AS customer,
    i.employee_id,
    d.delivery_notes,
    dn.donation,
    i.invoice_num,
    TO_CHAR(i.invoice_date, 'DD/MON/YY') AS invoice_date
FROM customer c
JOIN invoice i
    ON c.customer_id = i.customer_id
JOIN delivery d
    ON i.delivery_id = d.delivery_id
JOIN donation dn
    ON i.donation_id = dn.donation_id
WHERE i.invoice_date >
      TO_DATE('16 May 2024', 'DD Month YYYY')
ORDER BY i.invoice_num;



/* ============================================================
   QUESTION 3
   FUNDING TABLE AND SEQUENCE
   ============================================================ */

CREATE TABLE funding (
    funding_id NUMBER PRIMARY KEY,
    funder VARCHAR2(100),
    funding_amount NUMBER(10,2)
);

CREATE SEQUENCE funding_seq
START WITH 1
INCREMENT BY 1
NOCACHE
NOCYCLE;


/*
   The sequence automatically generates a unique numeric value
   for every new funding record. NEXTVAL returns the next
   available sequence number so the funding ID does not have
   to be entered manually.
*/

INSERT INTO funding (
    funding_id,
    funder,
    funding_amount
)
VALUES (
    funding_seq.NEXTVAL,
    'Ubuntu Foundation',
    5000
);

INSERT INTO funding (
    funding_id,
    funder,
    funding_amount
)
VALUES (
    funding_seq.NEXTVAL,
    'Hope Africa Trust',
    7500
);

COMMIT;

SELECT *
FROM funding
ORDER BY funding_id;



/* ============================================================
   QUESTION 4
   PL/SQL RETURNED DONATIONS REPORT
   ============================================================ */

SET SERVEROUTPUT ON;

DECLARE
    -- Variables store the information retrieved from the database.
    v_customer VARCHAR2(100);
    v_donation VARCHAR2(100);
    v_price NUMBER(10,2);
    v_reason VARCHAR2(200);

    -- Cursor retrieves all returned donations.
    CURSOR return_cursor IS
        SELECT
            c.first_name || ', ' || c.surname,
            d.donation,
            d.price,
            r.reason
        FROM customer c
        JOIN returns r
            ON c.customer_id = r.customer_id
        JOIN donation d
            ON r.donation_id = d.donation_id
        ORDER BY r.return_id;

BEGIN

    OPEN return_cursor;

    LOOP

        FETCH return_cursor
        INTO v_customer,
             v_donation,
             v_price,
             v_reason;

        EXIT WHEN return_cursor%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE(
            'CUSTOMER: ' || v_customer
        );

        DBMS_OUTPUT.PUT_LINE(
            'DONATION PURCHASED: ' || v_donation
        );

        DBMS_OUTPUT.PUT_LINE(
            'PRICE: R ' || v_price
        );

        DBMS_OUTPUT.PUT_LINE(
            'RETURN REASON: ' || v_reason
        );

        DBMS_OUTPUT.PUT_LINE(
            '----------------------------------------'
        );

    END LOOP;

    CLOSE return_cursor;

END;
/



/* ============================================================
   QUESTION 5
   PL/SQL DELIVERY REPORT FOR CUSTOMER 11011
   ============================================================ */

SET SERVEROUTPUT ON;

DECLARE
    -- Variables store delivery information for customer 11011.
    v_customer      VARCHAR2(100);
    v_employee      VARCHAR2(100);
    v_donation      VARCHAR2(100);
    v_dispatch_date DATE;
    v_delivery_date DATE;
    v_days          NUMBER;

    -- Retrieve purchases belonging to customer 11011.
    CURSOR delivery_cursor IS
        SELECT
            c.first_name || '. ' || c.surname,
            e.first_name || '. ' || e.surname,
            dn.donation,
            d.dispatch_date,
            d.delivery_date
        FROM customer c
        JOIN invoice i
            ON c.customer_id = i.customer_id
        JOIN employee e
            ON i.employee_id = e.employee_id
        JOIN donation dn
            ON i.donation_id = dn.donation_id
        JOIN delivery d
            ON i.delivery_id = d.delivery_id
        WHERE c.customer_id = 11011
        ORDER BY i.invoice_num;

BEGIN

    OPEN delivery_cursor;

    LOOP

        FETCH delivery_cursor
        INTO v_customer,
             v_employee,
             v_donation,
             v_dispatch_date,
             v_delivery_date;

        EXIT WHEN delivery_cursor%NOTFOUND;

        -- Calculate the number of days between the dates.
        v_days := ABS(
            v_delivery_date - v_dispatch_date
        );

        DBMS_OUTPUT.PUT_LINE(
            'CUSTOMER: ' || v_customer
        );

        DBMS_OUTPUT.PUT_LINE(
            'EMPLOYEE: ' || v_employee
        );

        DBMS_OUTPUT.PUT_LINE(
            'DONATION: ' || v_donation
        );

        DBMS_OUTPUT.PUT_LINE(
            'DISPATCH DATE: ' ||
            TO_CHAR(v_dispatch_date, 'DD/MON/YY')
        );

        DBMS_OUTPUT.PUT_LINE(
            'DELIVERY DATE: ' ||
            TO_CHAR(v_delivery_date, 'DD/MON/YY')
        );

        DBMS_OUTPUT.PUT_LINE(
            'DAYS TO DELIVERY: ' || v_days
        );

        DBMS_OUTPUT.PUT_LINE(
            '----------------------------------------'
        );

    END LOOP;

    CLOSE delivery_cursor;

END;
/



/* ============================================================
   QUESTION 6
   PL/SQL CUSTOMER TOTAL SPENDING AND RATING REPORT
   ============================================================ */

SET SERVEROUTPUT ON;

DECLARE
    -- Variables store customer spending information.
    v_first_name customer.first_name%TYPE;
    v_surname customer.surname%TYPE;
    v_amount NUMBER(10,2);
    v_rating VARCHAR2(10);

    -- Calculate total spending for every customer
    -- who has made a purchase.
    CURSOR customer_cursor IS
        SELECT
            c.first_name,
            c.surname,
            SUM(d.price) AS total_spent
        FROM customer c
        JOIN invoice i
            ON c.customer_id = i.customer_id
        JOIN donation d
            ON i.donation_id = d.donation_id
        GROUP BY
            c.customer_id,
            c.first_name,
            c.surname
        ORDER BY c.customer_id;

BEGIN

    OPEN customer_cursor;

    LOOP

        FETCH customer_cursor
        INTO v_first_name,
             v_surname,
             v_amount;

        EXIT WHEN customer_cursor%NOTFOUND;

        -- Customers spending R1500 or more
        -- receive a three-star rating.
        IF v_amount >= 1500 THEN
            v_rating := ' (***)';
        ELSE
            v_rating := '';
        END IF;

        DBMS_OUTPUT.PUT_LINE(
            'FIRST NAME: ' || v_first_name
        );

        DBMS_OUTPUT.PUT_LINE(
            'SURNAME: ' || v_surname
        );

        DBMS_OUTPUT.PUT_LINE(
            'AMOUNT: R ' ||
            v_amount ||
            v_rating
        );

        DBMS_OUTPUT.PUT_LINE(
            '----------------------------------------'
        );

    END LOOP;

    CLOSE customer_cursor;

END;
/



/* ============================================================
   QUESTION 7
   PL/SQL ATTRIBUTES AND USER-DEFINED EXCEPTION

   NOTE:
   These are new examples and do not reuse the reports
   created in Questions 1 - 6.
   ============================================================ */


/* ============================================================
   QUESTION 7.1
   %TYPE ATTRIBUTE
   ============================================================ */

SET SERVEROUTPUT ON;

DECLARE
    /*
       %TYPE allows a PL/SQL variable to use the same datatype
       as a specified database table column.
    */
    v_donator_id donator.donator_id%TYPE := 20114;
    v_first_name donator.first_name%TYPE;
    v_surname    donator.surname%TYPE;
    v_email      donator.email%TYPE;

BEGIN

    -- Retrieve information for donator 20114.
    SELECT
        first_name,
        surname,
        email
    INTO
        v_first_name,
        v_surname,
        v_email
    FROM donator
    WHERE donator_id = v_donator_id;

    DBMS_OUTPUT.PUT_LINE(
        'DONATOR ID: ' || v_donator_id
    );

    DBMS_OUTPUT.PUT_LINE(
        'DONATOR NAME: ' ||
        v_first_name || ' ' || v_surname
    );

    DBMS_OUTPUT.PUT_LINE(
        'EMAIL: ' || v_email
    );

END;
/



/* ============================================================
   QUESTION 7.2
   %ROWTYPE ATTRIBUTE
   ============================================================ */

SET SERVEROUTPUT ON;

DECLARE
    /*
       %ROWTYPE creates a record variable with the same
       structure as an entire row in the EMPLOYEE table.
    */
    v_employee employee%ROWTYPE;

BEGIN

    -- Retrieve the complete record for employee emp105.
    SELECT *
    INTO v_employee
    FROM employee
    WHERE employee_id = 'emp105';

    DBMS_OUTPUT.PUT_LINE(
        'EMPLOYEE ID: ' ||
        v_employee.employee_id
    );

    DBMS_OUTPUT.PUT_LINE(
        'EMPLOYEE NAME: ' ||
        v_employee.first_name || ' ' ||
        v_employee.surname
    );

    DBMS_OUTPUT.PUT_LINE(
        'CONTACT NUMBER: ' ||
        v_employee.contact_number
    );

    DBMS_OUTPUT.PUT_LINE(
        'ADDRESS: ' ||
        v_employee.address
    );

    DBMS_OUTPUT.PUT_LINE(
        'EMAIL: ' ||
        v_employee.email
    );

END;
/



/* ============================================================
   QUESTION 7.3
   USER-DEFINED EXCEPTION
   ============================================================ */

SET SERVEROUTPUT ON;

DECLARE
    -- Variables used to retrieve donation information.
    v_donation_id NUMBER := 7116;
    v_donation VARCHAR2(100);
    v_price NUMBER(10,2);

    -- Declare a user-defined exception.
    e_low_donation_value EXCEPTION;

BEGIN

    -- Retrieve the selected donation.
    SELECT
        donation,
        price
    INTO
        v_donation,
        v_price
    FROM donation
    WHERE donation_id = v_donation_id;

    DBMS_OUTPUT.PUT_LINE(
        'DONATION ID: ' || v_donation_id
    );

    DBMS_OUTPUT.PUT_LINE(
        'DONATION: ' || v_donation
    );

    DBMS_OUTPUT.PUT_LINE(
        'PRICE: R ' || v_price
    );

    /*
       Business rule:
       Raise the custom exception when the
       donation value is below R200.
    */
    IF v_price < 200 THEN
        RAISE e_low_donation_value;
    END IF;

    DBMS_OUTPUT.PUT_LINE(
        'Donation value is acceptable.'
    );

EXCEPTION

    -- Handle the user-defined exception.
    WHEN e_low_donation_value THEN

        DBMS_OUTPUT.PUT_LINE(
            'CUSTOM EXCEPTION: Donation value is below R200.'
        );

END;
/



/* ============================================================
   QUESTION 8
   SQL CASE STATEMENT - CUSTOMER RATINGS
   ============================================================ */

SELECT
    c.first_name,
    c.surname,
    SUM(d.price) AS amount,

    CASE
        WHEN SUM(d.price) >= 1500 THEN '***'
        WHEN SUM(d.price) >= 1000 THEN '**'
        ELSE '*'
    END AS customer_rating

FROM customer c

JOIN invoice i
    ON c.customer_id = i.customer_id

JOIN donation d
    ON i.donation_id = d.donation_id

GROUP BY
    c.customer_id,
    c.first_name,
    c.surname

ORDER BY
    c.customer_id;


