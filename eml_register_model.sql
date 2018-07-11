-- register model
DELETE FROM "_SYS_AFL"."EML_MODEL_CONFIGURATION" WHERE "Model"='mnist%predict_images';
INSERT INTO "_SYS_AFL"."EML_MODEL_CONFIGURATION" ("Model", "Parameter", "Value") 
VALUES ('mnist%predict_images', 'RemoteSource', 'TensorFlowModelServer');

SELECT * FROM "_SYS_AFL"."EML_MODEL_CONFIGURATION";
