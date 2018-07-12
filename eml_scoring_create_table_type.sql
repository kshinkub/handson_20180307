-- create table types
CREATE TYPE "T_PARAMS" AS TABLE ("Parameter" VARCHAR(100), "Value" VARCHAR(100));
CREATE TYPE "T_DATA" AS TABLE ("Label" INTEGER, "Image" BLOB);
CREATE TYPE "T_RESULTS" AS TABLE ("Label" INTEGER, "Class1" VARCHAR(100), "Class2" VARCHAR(100), "Class3" VARCHAR(100), "Class4" VARCHAR(100), "Class5" VARCHAR(100), "Class6" VARCHAR(100), "Class7" VARCHAR(100), "Class8" VARCHAR(100), "Class9" VARCHAR(100), "Class10" VARCHAR(100), "Score1" FLOAT, "Score2" FLOAT, "Score3" FLOAT, "Score4" FLOAT, "Score5" FLOAT, "Score6" FLOAT, "Score7" FLOAT, "Score8" FLOAT, "Score9" FLOAT, "Score10" FLOAT);