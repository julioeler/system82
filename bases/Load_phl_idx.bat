@echo off
echo.
echo Recriar phl_idx (registros de conexoes)
echo.
echo Pressione qualquer tecla para continuar ou Ctrl+C para cancelar
pause > nul
echo.
mx null create=phl_idx count=0 -all now
rem mx phl_idx fst=@ uctab=uctab actab=actab fullinv=phl_idx -all now tell=10
echo.
echo Fim do servico
pause
