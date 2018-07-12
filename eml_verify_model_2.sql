-- verify model is up and running on remote source
CALL "_SYS_AFL"."EML_CHECKDESTINATION_PROC" ("PARAMETERS", ?);
