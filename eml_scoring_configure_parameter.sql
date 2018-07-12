-- configure parameters
TRUNCATE TABLE "PARAMS";
INSERT INTO "PARAMS" VALUES ('Model', 'mnist'); -- model%signature for TF serving : default signature is serving_default
