-- scoring : results in table
TRUNCATE TABLE "RESULTS";
CALL "SCORE_DIGITS" ("PARAMS", "MNIST", "RESULTS") WITH OVERVIEW;

-- check results table
SELECT "Label", "Class1", "Score1" FROM "RESULTS";
