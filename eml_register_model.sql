-- register model
DELETE FROM "_SYS_AFL"."EML_MODEL_CONFIGURATION" WHERE "Model"='mnist%serving_default';
---- Model : model%signature (default signature is "serving_default")
INSERT INTO "_SYS_AFL"."EML_MODEL_CONFIGURATION" ("Model", "Parameter", "Value") 
VALUES ('mnist%serving_default', 'RemoteSource', 'TensorFlowModelServer');

SELECT * FROM "_SYS_AFL"."EML_MODEL_CONFIGURATION";
