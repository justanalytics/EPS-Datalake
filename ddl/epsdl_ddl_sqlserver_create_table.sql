CREATE TABLE [dbo].[JBS_GUZZLE_FLOW](
	[job_id] [int] NULL,
	[Batch_ID] [varchar](100) NULL,
	[Job_Name] [varchar](100) NULL,
	[Guzzle_Obj_Ref] [varchar](1000) NULL,
	[Guzzle_Job_Params] [varchar](2000) NULL,
	[Spark_Config] [varchar](1000) NULL,
	[Run_Stage] [varchar](1000) NULL
);


CREATE TABLE [dbo].[JBS_JOB](
	[tablename] [varchar](100) NULL,
	[filename] [varchar](100) NULL
);

CREATE TABLE [dbo].[JBS_JOB_EMAILS](
	[id] [int] NULL,
	[team] [varchar](100) NULL,
	[email] [varchar](1000) NULL
);

CREATE TABLE [dbo].[JBS_JOB_v2](
	[tablename] [varchar](8000) NULL,
	[filename] [varchar](1000) NULL
);

