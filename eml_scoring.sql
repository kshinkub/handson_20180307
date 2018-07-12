-- scoring : results in table
TRUNCATE TABLE "RESULTS";
CALL "SCORE_DIGITS" ("PARAMS", "MNIST", "RESULTS") WITH OVERVIEW;

-- check results table
SELECT * FROM "RESULTS";
