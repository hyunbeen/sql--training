-- sample4.sql

--------------------------------------------------------------
-- Basic syntax:
--  
--  GENERATED [ 
--      ALWAYS | 
--      BY DEFAULT [ ON NULL ]
--    ] AS IDENTITY [ 
--      (identity options) 
--    ]
--
--  (1) GENERATED ALWAYS
--      a. Oracle always generates a value for the identity column.
--      b. Attempt to insert a value into the identity column will cause an error.

--  (2) GENERATED BY DEFAULT
--      a. Oracle generates a value for the identity column
--         if you provide no value.
--      b. If you provide a value, Oracle will insert that value into
--         the identity column.
--      c. For this option, Oracle will issue an error 
--         if you insert a NULL value into the identity column.

--  (3) GENERATED BY DEFAULT ON NULL
--      a. Oracle generates a value for the identity column
--         if you provide a NULL value or no value at all.
--
--
--  * identity options:
--      (1) START WITH intial_value
--          controls the initial value to use for the identity column.
--          The default initial value is 1.
--      (2) INCREMENT BY interval_value
--          defines the interval between generated values.
--          By default, the interval value is 1.
--      (3) CACHE
--------------------------------------------------------------
DROP TABLE t;

CREATE TABLE t (
    --  New feature added from Oracle12c above.
    ID NUMBER 
        GENERATED ALWAYS AS IDENTITY
            START WITH 1000
            INCREMENT BY 1,

    text VARCHAR2(50)
);

DESC t;

INSERT INTO t ( text ) 
VALUES ( 'TEXT_1' );

INSERT INTO t ( text ) 
VALUES ( 'TEXT_2' );

INSERT INTO t ( text ) 
VALUES ( 'TEXT_3' );

INSERT INTO t ( text ) 
VALUES ( 'TEXT_4' );

COMMIT;

--------------------------------------------------------------

SELECT
    sequence_name,
    min_value,
    max_value,
    increment_by
FROM
    user_sequences;

--------------------------------------------------------------

SELECT
    table_name,
    column_name,
    generation_type,
    identity_options
FROM
    all_tab_identity_cols
WHERE
    owner = 'SCOTT'
ORDER BY
    1, 2;
