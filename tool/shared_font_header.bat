xxd -s 0x0b -p -l 3 %1 >%~n1_size.txt
xxd %1| xxd -r -s 0x80 > shared_font.bin
echo 00: 02 | xxd -r - shared_font.bin
echo 04: 01 | xxd -r - shared_font.bin
for /f "tokens=1 delims=" %%i in (%~n1_size.txt) do echo 08: %%i | xxd -r - shared_font.bin
echo 83: 55 | xxd -r - shared_font.bin
del %~n1_size.txt
pause
