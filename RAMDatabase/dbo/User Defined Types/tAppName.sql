﻿CREATE TYPE [dbo].[tAppName]
    FROM VARCHAR (280) NOT NULL;


GO
GRANT REFERENCES
    ON TYPE::[dbo].[tAppName] TO PUBLIC;

