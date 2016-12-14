REM This batch files compiles Acteo java source code and
REM moves the class files to the class folders.
REM USE: just double click.
REM Authors: Acteo Devs
javac src/gr/acteo/*.java
move /y src\gr\acteo\*.class class\gr\acteo\
echo 'Compliling Done'
pause
