@echo off
cls
echo ==========================================================
echo           Desbloquear bases de dados do PHL8.2
echo ==========================================================
echo.
echo Pressione qualquer tecla para continuar ou Ctrl+C para cancelar
echo.
pause > nul
cd ..\bases
call utl_unlock.bat
cd ..\doc
echo.
echo Fim do servico
echo.
echo Pressione qualquer tecla para terminar
echo.
pause > nul
:END
