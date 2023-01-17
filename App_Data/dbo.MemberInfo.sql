CREATE TABLE [dbo].[MemberInfo] (
    [M_name]  NVARCHAR (50)  NULL,
    [M_dob]   NVARCHAR (50)  NULL,
    [M_cn]    NVARCHAR (50)  NULL,
    [M_mail]  NVARCHAR (50)  NULL,
    [M_state] NVARCHAR (50)  NULL,
    [M_city]  NVARCHAR (50)  NULL,
    [M_pc]    NVARCHAR (50)  NULL,
    [M_fa]    NVARCHAR (MAX) NULL,
    [M_uid]   NVARCHAR (50)  NOT NULL,
    [M_pw]    NVARCHAR (50)  NULL,
    [ac_stat] NVARCHAR (50)  NULL,
    [emailverify] NVARCHAR(50) NULL, 
    PRIMARY KEY CLUSTERED ([M_uid] ASC)
);

