@ECHO OFF
SETLOCAL ENABLEDELAYEDEXPANSION

SET "COUNT=30"
IF NOT "%~1"=="" SET "COUNT=%~1"

SET "OUT_DIR=A4_single_tags"

SET /A "LAST_TAG=%COUNT%-1"
ECHO ---------------------------------------------
ECHO Making %COUNT% tags from id 0 to %LAST_TAG% inside "%OUT_DIR%"
ECHO ---------------------------------------------

MKDIR %OUT_DIR% 2> NUL

FOR /L %%i IN (0,1,%LAST_TAG%) DO (
    <NUL SET /P "=."

    SET "NUM=00000%%i"
    SET "PADDED=!NUM:~-5!"
    python make_tag.py --nx 1 --ny 1 --marginx 0.005 --marginy 0.0485 --tsize 0.20 --tspace 0.0 --startid %%i --tfam t36h11 --draw-legend --borderbits 1 "%OUT_DIR%/target-t36h11-tagid-!PADDED!.pdf"
)
ECHO.

ECHO ---------------------------------------------
ECHO Done ^^!
