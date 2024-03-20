@echo off
cls
echo ==========================================================
echo                  Atualizacao do PHL8.2
echo ==========================================================
echo             *** Seja paciente. Aguarde! ***
echo ==========================================================
retag 001_ser unlock tell=100
retag 001_ser_fmt unlock tell=10
echo ==========================================================
echo +++ Iniciando processo de atualizacao dos indices
echo ==========================================================
pause
echo +++ Formulario do kardex
rem mx 001_ser_fmt fst=@ uctab=uctab actab=actab fullinv=001_ser_fmt tell=10 -all now
echo +++ Kardex
mx 001_ser fst=@ uctab=uctab actab=actab fullinv=001_ser tell=100 -all now
exit
