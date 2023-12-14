cd "src"
"C:\Program Files\7-Zip\7z.exe" a -tzip ..\src.zip *
cd ..
call cmp.bat src.zip
pause
