-- apply registered models
CALL "_SYS_AFL"."EML_CTL_PROC" ('UpdateModelConfiguration', "PARAMETERS", ?);
