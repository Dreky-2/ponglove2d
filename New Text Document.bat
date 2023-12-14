cd "src"
"C:\Program Files\7-Zip\7z.exe" a -tzip ..\src.zip *
cd ..
call build.bat src.zip
pause
