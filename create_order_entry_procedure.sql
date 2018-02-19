CREATE PROCEDURE ORDER_ENTRY(IN MAX_COUNT INT)
LANGUAGE SQLSCRIPT
SQL SECURITY INVOKER
AS
BEGIN
    DECLARE v_index INT;

    FOR v_index IN 0 .. :MAX_COUNT DO
        INSERT INTO SAMPLE_TRANSACTIONS
        VALUES
       (:v_index, mod(:v_index,10000), mod(:v_index,1000), mod(v_index,100), current_timestamp);
        COMMIT;
    END FOR;
END;
