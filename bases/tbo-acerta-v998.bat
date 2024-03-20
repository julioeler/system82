@echo off
echo.
echo Acertar campo [998] (mfn de backup) e campo [997] (mfn do titulo)
pause

echo Criar invertido temporario do acervo
mx phl_acv "fst=1 0 |TIT=|v2/" uctab=uctab fullinv=acv-tit tell=10000 -all now

if exist 001_tbo_new.mst del 001_tbo_new.mst
if exist 001_tbo_new.xrf del 001_tbo_new.xrf

mx 001_tbo "proc='d997','a997~',ref(['phl_acv']l(['acv-tit'],'TIT='v800),mfn(1)),'~'" "proc='d998','a998~',mfn(1),'~'" "proc='s'" create=001_tbo_new tell=10000 -all now

:END
pause
