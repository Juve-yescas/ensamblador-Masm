@ECHO OFF
set arg1=%1
echo %arg1%.exe >> compiled.txt
del c:\Masm\%arg1%.exe
cd Masm
ml c:/projects/%arg1%.asm
if exist c:\Masm\%arg1%.LNK del c:\Masm\%arg1%.LNK
if exist c:\Masm\%arg1%.OBJ del c:\Masm\%arg1%.OBJ
if exist c:\Masm\%arg1%.exe cls
if exist c:\Masm\%arg1%.exe %arg1%.exe
cd..
echo.