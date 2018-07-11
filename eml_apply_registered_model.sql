-- create parameters table (used in subsequent calls)
CREATE TABLE "PARAMETERS" ("Parameter" VARCHAR(100), "Value" VARCHAR(100));

-- apply registered models
CALL "_SYS_AFL"."EML_CTL_PROC" ('UpdateModelConfiguration', "PARAMETERS", ?);
