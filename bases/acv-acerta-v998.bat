@echo off
echo.
echo Acertar campo [007] de tombo do monografico e campo [998] (mfn de backup)
pause

echo Criar invertido de tombos
mx 001_tbo fst=@ uctab=uctab actab=actab fullinv=001_tbo tell=10000 -all now

echo.
echo Acertar campo [007] de tombo do monografico e campo [998] (mfn de backup)
if exist phl_acv_new.mst del phl_acv_new.mst
if exist phl_acv_new.xrf del phl_acv_new.xrf
mx phl_acv create=phl_acv_new "join=001_tbo,801,803,807,819,820,300:998='TIT='v2" "proc='d1234d7d32001d801d803d807d819d820d300',if p(v801) then ('a7~','^a'v801,|^b|v803,|^c|v819,|^d|v820,|^e|v807,|^m|v300,'~'),fi" "proc='d998','a998~',mfn(1),'~'" "proc='s'" tell=10000 -all now

:END
pause
