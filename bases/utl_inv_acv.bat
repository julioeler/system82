@echo off
cls
echo ==========================================================
echo                  Atualizacao do PHL8.2
echo ==========================================================
echo             *** Seja paciente. Aguarde! ***
echo ==========================================================
rem retag 001_tbo unlock tell=1000
rem retag 001_tbo_fmt unlock tell=10
retag phl_acv unlock tell=1000
retag phl_acv_fmt unlock tell=10
echo ==========================================================
echo +++ Iniciando processo de atualizacao dos indices
echo ==========================================================
pause
rem echo +++ Formulario do tombo
rem mx 001_tbo_fmt fst=@ uctab=uctab actab=actab fullinv=001_tbo_fmt tell=10 -all now
rem echo +++ Tombos
rem mx 001_tbo fst=@ uctab=uctab actab=actab fullinv=001_tbo tell=1000 -all now
rem echo +++ Formulario do catalogo
rem mx phl_acv_fmt fst=@ uctab=uctab actab=actab fullinv=phl_acv_fmt tell=10 -all now
echo +++ Catalogo
mx phl_acv fst=@ uctab=uctab actab=actab fullinv=phl_acv tell=1000 -all now
exit
