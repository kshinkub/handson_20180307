-- verify model is up and running on remote source
INSERT INTO "PARAMETERS" VALUES ('Model', 'mnist%serving_default');
CALL "_SYS_AFL"."EML_CHECKDESTINATION_PROC" ("PARAMETERS", ?);
