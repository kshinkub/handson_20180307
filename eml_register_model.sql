-- register model
DELETE FROM "_SYS_AFL"."EML_MODEL_CONFIGURATION" WHERE "Model"='mnist';
INSERT INTO "_SYS_AFL"."EML_MODEL_CONFIGURATION" ("Model", "Parameter", "Value") 
VALUES ('mnist', 'RemoteSource', 'TensorFlowModelServer');

SELECT * FROM "_SYS_AFL"."EML_MODEL_CONFIGURATION";
