@echo off
cls
echo ==========================================================
echo                  Atualizacao do PHL8.2
echo ==========================================================
echo             *** Seja paciente. Aguarde! ***
echo ==========================================================
retag phl_usr unlock tell=100
retag phl_usr_fmt unlock tell=10
echo ==========================================================
echo +++ Iniciando processo de atualizacao dos indices
echo ==========================================================
pause
echo +++ Usuarios
mx phl_usr fst=@ uctab=uctab actab=actab fullinv=phl_usr tell=100 -all now
exit
