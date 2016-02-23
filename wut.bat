@echo off
set i=1000
setlocal ENABLEDELAYEDEXPANSION
FOR /F "tokens=1,2,3,4,5" %%a IN (files.txt) DO (
echo INSERT INTO "table" VALUES('%%a',%%b,'2016-01-01 01:01:01.001!i!','2016-01-01 01:01:01.001!i!'^)? >> out.txt
set /a i=i+1
)

