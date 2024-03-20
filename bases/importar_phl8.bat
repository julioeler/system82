@echo off
if exist "\phl8\cgi-bin\phl8\bases" goto INICIO
goto ERRO
:INICIO
retag \phl8\cgi-bin\phl8\bases\001_cdu unlock
retag \phl8\cgi-bin\phl8\bases\001_cxa unlock
retag \phl8\cgi-bin\phl8\bases\001_emp unlock
retag \phl8\cgi-bin\phl8\bases\001_log unlock
retag \phl8\cgi-bin\phl8\bases\001_ser unlock
retag \phl8\cgi-bin\phl8\bases\001_tbo unlock
retag \phl8\cgi-bin\phl8\bases\phl_acv unlock
retag \phl8\cgi-bin\phl8\bases\phl_aut unlock
retag \phl8\cgi-bin\phl8\bases\phl_cnf unlock
retag \phl8\cgi-bin\phl8\bases\phl_cpa unlock
retag \phl8\cgi-bin\phl8\bases\phl_cur unlock
retag \phl8\cgi-bin\phl8\bases\phl_for unlock
retag \phl8\cgi-bin\phl8\bases\phl_pen unlock
retag \phl8\cgi-bin\phl8\bases\phl_set unlock
retag \phl8\cgi-bin\phl8\bases\phl_usr unlock
retag \phl8\cgi-bin\phl8\bases\phl_voc unlock

echo +++ Eliminando caracteres invalidos
mxcp \phl8\cgi-bin\phl8\bases\001_cdu create=\phl8\cgi-bin\phl8\bases\xcdu clean log=\phl8\cgi-bin\phl8\bases\xerro.txt
mxcp \phl8\cgi-bin\phl8\bases\001_cxa create=\phl8\cgi-bin\phl8\bases\xcxa clean log=\phl8\cgi-bin\phl8\bases\xerro.txt
mxcp \phl8\cgi-bin\phl8\bases\001_emp create=\phl8\cgi-bin\phl8\bases\xemp clean log=\phl8\cgi-bin\phl8\bases\xerro.txt
mxcp \phl8\cgi-bin\phl8\bases\001_log create=\phl8\cgi-bin\phl8\bases\xlog clean log=\phl8\cgi-bin\phl8\bases\xerro.txt
mxcp \phl8\cgi-bin\phl8\bases\001_ser create=\phl8\cgi-bin\phl8\bases\xser clean log=\phl8\cgi-bin\phl8\bases\xerro.txt
mxcp \phl8\cgi-bin\phl8\bases\001_tbo create=\phl8\cgi-bin\phl8\bases\xtbo clean log=\phl8\cgi-bin\phl8\bases\xerro.txt
mxcp \phl8\cgi-bin\phl8\bases\phl_acv create=\phl8\cgi-bin\phl8\bases\xacv clean log=\phl8\cgi-bin\phl8\bases\xerro.txt
mxcp \phl8\cgi-bin\phl8\bases\phl_aut create=\phl8\cgi-bin\phl8\bases\xaut clean log=\phl8\cgi-bin\phl8\bases\xerro.txt
mxcp \phl8\cgi-bin\phl8\bases\phl_cur create=\phl8\cgi-bin\phl8\bases\xcur clean log=\phl8\cgi-bin\phl8\bases\xerro.txt
mxcp \phl8\cgi-bin\phl8\bases\phl_cpa create=\phl8\cgi-bin\phl8\bases\xcpa clean log=\phl8\cgi-bin\phl8\bases\xerro.txt
mxcp \phl8\cgi-bin\phl8\bases\phl_cnf create=\phl8\cgi-bin\phl8\bases\xcnf clean log=\phl8\cgi-bin\phl8\bases\xerro.txt
mxcp \phl8\cgi-bin\phl8\bases\phl_for create=\phl8\cgi-bin\phl8\bases\xfor clean log=\phl8\cgi-bin\phl8\bases\xerro.txt
mxcp \phl8\cgi-bin\phl8\bases\phl_pen create=\phl8\cgi-bin\phl8\bases\xpen clean log=\phl8\cgi-bin\phl8\bases\xerro.txt
mxcp \phl8\cgi-bin\phl8\bases\phl_set create=\phl8\cgi-bin\phl8\bases\xset clean log=\phl8\cgi-bin\phl8\bases\xerro.txt
mxcp \phl8\cgi-bin\phl8\bases\phl_usr create=\phl8\cgi-bin\phl8\bases\xusr clean log=\phl8\cgi-bin\phl8\bases\xerro.txt
mxcp \phl8\cgi-bin\phl8\bases\phl_voc create=\phl8\cgi-bin\phl8\bases\xvoc clean log=\phl8\cgi-bin\phl8\bases\xerro.txt

echo +++ Importando base de dados
mx \phl8\cgi-bin\phl8\bases\xpen create=\phl82\bases\phl_pen -all now
mx \phl8\cgi-bin\phl8\bases\xcxa create=\phl82\bases\001_cxa -all now
mx \phl8\cgi-bin\phl8\bases\xfor create=\phl82\bases\phl_for -all now
mx \phl8\cgi-bin\phl8\bases\xvoc create=\phl82\bases\phl_voc -all now
mx \phl8\cgi-bin\phl8\bases\xaut create=\phl82\bases\phl_aut -all now
mx \phl8\cgi-bin\phl8\bases\xcdu create=\phl82\bases\001_cdu -all now
mx \phl8\cgi-bin\phl8\bases\xcpa create=\phl82\bases\phl_cpa -all now
mx \phl82\bases\phl_cnf copy=\phl82\bases\phl_cnf "proc=@\phl82\bases\phl8_cnf.prc" "proc='s'" -all now
mx \phl82\bases\phl_set copy=\phl82\bases\phl_set "proc=@\phl82\bases\phl8_set.prc" "proc='s'" -all now

echo +++ Importando base de dados do catalogo
mx \phl8\cgi-bin\phl8\bases\xacv create=\phl8\cgi-bin\phl8\bases\xacv1 "proc=@\phl82\bases\phl8_acv.prc" "proc='s'" -all now
mxcp \phl8\cgi-bin\phl8\bases\xacv1 create=\phl82\bases\phl_acv clean mintag=1 maxtag=999 log=\phl8\cgi-bin\phl8\bases\erro.log

echo +++ Importando base de dados de tombo
echo     Eliminando registros sem numero de identificacao do titulo
mx \phl8\cgi-bin\phl8\bases\xtbo copy=\phl8\cgi-bin\phl8\bases\xtbo "proc=if a(v800) then 'd*' fi" -all now
mx \phl8\cgi-bin\phl8\bases\xtbo copy=\phl8\cgi-bin\phl8\bases\xtbo "proc=if a(v801) then 'd*' fi" -all now

mx \phl82\bases\phl_acv "fst=1 0 v2/" uctab=\phl82\bases\uctab fullinv=\phl82\bases\phl_acv -all now

echo     Criando ligacao entre a base de dados de tombo e o catalogo
mx \phl8\cgi-bin\phl8\bases\xtbo create=\phl8\cgi-bin\phl8\bases\xtbo1 "join=\phl82\bases\phl_acv,997:998=v800" jmax=1 -all now
mxcp \phl8\cgi-bin\phl8\bases\xtbo1 create=\phl8\cgi-bin\phl8\bases\xtbo2 clean log=\phl8\cgi-bin\phl8\bases\erro.log
mx \phl8\cgi-bin\phl8\bases\xtbo2 create=\phl82\bases\001_tbo uctab=\phl82\bases\uctab "proc=@\phl82\bases\phl8_tbo.prc" -all now
mx \phl82\bases\001_tbo copy=\phl82\bases\001_tbo "proc='s'" -all now

echo +++ Gerando indice de tombos.
echo     Isto pode levar alguns minutos. Seja paciente!
mx \phl82\bases\001_tbo fst=@\phl82\bases\001_tbo.fst uctab=\phl82\bases\uctab actab=\phl82\bases\actab fullinv=\phl82\bases\001_tbo -all now
echo +++ Atualizando campo #007 do catalogo
mx \phl82\bases\phl_acv copy=\phl82\bases\phl_acv "join=\phl82\bases\001_tbo,803,801,807,819,820,300:998='TIT='v2" "proc='d1234d7d32001d801d803d807d819d820d300',if p(v801) then ('a7~^a'v801,'^b'v803,'^c'v819,'^d'v820,'^e'v807,'^m'v300'~') fi" "proc='s'" -all now

echo +++ Importando base de dados de usuarios
mx \phl8\cgi-bin\phl8\bases\xusr create=\phl82\bases\phl_usr "proc=@\phl82\bases\phl8_usr.prc" -all now
mx \phl82\bases\phl_usr copy=\phl82\bases\phl_usr "proc='s'" -all now

echo +++ Importando base de dados kardex
mx \phl8\cgi-bin\phl8\bases\xser create=\phl82\bases\001_ser "proc=@\phl82\bases\phl8_ser.prc" -all now
mx \phl82\bases\001_ser copy=\phl82\bases\001_ser "proc='s'" -all now

echo +++ Importando base de dados de historico
mx \phl8\cgi-bin\phl8\bases\xlog "pft=(v910/)" lw=512 now > \phl8\cgi-bin\phl8\bases\xlog.txt
mx seq=\phl8\cgi-bin\phl8\bases\xlog.txt create=\phl8\cgi-bin\phl8\bases\xlog1 -all now
mx \phl8\cgi-bin\phl8\bases\xlog1 "join=\phl82\bases\phl_acv,998='TIT='v1^a" jmax=1 create=\phl8\cgi-bin\phl8\bases\xlog2 "proc='d*','a910~'v1,'^f'v998'~'" -all now
mx \phl8\cgi-bin\phl8\bases\xlog2 "join=\phl82\bases\phl_usr,998='USR='v910^u" jmax=1 create=\phl8\cgi-bin\phl8\bases\xlog3 "proc='d*','a910~'v910,'^k'v998'~'" -all now
mx \phl8\cgi-bin\phl8\bases\xlog3 create=\phl82\bases\001_log "proc=@\phl82\bases\phl8_tbo.prc" -all now

echo +++ Importando base de dados de emprestimo
mx \phl8\cgi-bin\phl8\bases\xemp "join=\phl82\bases\phl_acv,998='TIT='v900^a" jmax=1 create=\phl8\cgi-bin\phl8\bases\xemp1 "proc='d*','a900~'v900,'^f'v998'~'" -all now
mx \phl8\cgi-bin\phl8\bases\xemp1 "join=\phl82\bases\phl_usr,998='USR='v900^u" jmax=1 create=\phl8\cgi-bin\phl8\bases\xemp2 "proc='d*','a900~'v900,'^k'v998'~'" -all now
mx \phl8\cgi-bin\phl8\bases\xemp2 create=\phl82\bases\001_emp "proc=@\phl82\bases\phl8_emp.prc" -all now

echo +++ Gerando indice das bases de dados.
echo     Seja paciente. Isto pode demorar alguns minutos!
mx \phl82\bases\001_cdu fst=@\phl82\bases\001_cdu.fst uctab=\phl82\bases\uctab actab=\phl82\bases\actab fullinv=\phl82\bases\001_cdu -all now
mx \phl82\bases\001_cxa fst=@\phl82\bases\001_cxa.fst uctab=\phl82\bases\uctab actab=\phl82\bases\actab fullinv=\phl82\bases\001_cxa -all now
mx \phl82\bases\001_emp fst=@\phl82\bases\001_emp.fst uctab=\phl82\bases\uctab actab=\phl82\bases\actab fullinv=\phl82\bases\001_emp -all now
mx \phl82\bases\001_log fst=@\phl82\bases\001_log.fst uctab=\phl82\bases\uctab actab=\phl82\bases\actab fullinv=\phl82\bases\001_log -all now
mx \phl82\bases\001_ser fst=@\phl82\bases\001_ser.fst uctab=\phl82\bases\uctab actab=\phl82\bases\actab fullinv=\phl82\bases\001_ser -all now
mx \phl82\bases\phl_acv fst=@\phl82\bases\phl_acv.fst uctab=\phl82\bases\uctab actab=\phl82\bases\actab fullinv=\phl82\bases\phl_acv -all now
mx \phl82\bases\phl_aqu fst=@\phl82\bases\phl_aqu.fst uctab=\phl82\bases\uctab actab=\phl82\bases\actab fullinv=\phl82\bases\phl_aqu -all now
mx \phl82\bases\phl_ass fst=@\phl82\bases\phl_ass.fst uctab=\phl82\bases\uctab actab=\phl82\bases\actab fullinv=\phl82\bases\phl_ass -all now
mx \phl82\bases\phl_aut fst=@\phl82\bases\phl_aut.fst uctab=\phl82\bases\uctab actab=\phl82\bases\actab fullinv=\phl82\bases\phl_aut -all now
mx \phl82\bases\phl_cnf fst=@\phl82\bases\phl_cnf.fst uctab=\phl82\bases\uctab actab=\phl82\bases\actab fullinv=\phl82\bases\phl_cnf -all now
mx \phl82\bases\phl_cpa fst=@\phl82\bases\phl_cpa.fst uctab=\phl82\bases\uctab actab=\phl82\bases\actab fullinv=\phl82\bases\phl_cpa -all now
mx \phl82\bases\phl_cnt fst=@\phl82\bases\phl_cnt.fst uctab=\phl82\bases\uctab actab=\phl82\bases\actab fullinv=\phl82\bases\phl_cnt -all now
mx \phl82\bases\phl_col fst=@\phl82\bases\phl_col.fst uctab=\phl82\bases\uctab actab=\phl82\bases\actab fullinv=\phl82\bases\phl_col -all now
mx \phl82\bases\phl_cur fst=@\phl82\bases\phl_cur.fst uctab=\phl82\bases\uctab actab=\phl82\bases\actab fullinv=\phl82\bases\phl_cur -all now
mx \phl82\bases\phl_for fst=@\phl82\bases\phl_for.fst uctab=\phl82\bases\uctab actab=\phl82\bases\actab fullinv=\phl82\bases\phl_for -all now
mx \phl82\bases\phl_idm fst=@\phl82\bases\phl_idm.fst uctab=\phl82\bases\uctab actab=\phl82\bases\actab fullinv=\phl82\bases\phl_idm -all now
mx \phl82\bases\phl_pen fst=@\phl82\bases\phl_pen.fst uctab=\phl82\bases\uctab actab=\phl82\bases\actab fullinv=\phl82\bases\phl_pen -all now
mx \phl82\bases\phl_per fst=@\phl82\bases\phl_per.fst uctab=\phl82\bases\uctab actab=\phl82\bases\actab fullinv=\phl82\bases\phl_per -all now
mx \phl82\bases\phl_prc fst=@\phl82\bases\phl_prc.fst uctab=\phl82\bases\uctab actab=\phl82\bases\actab fullinv=\phl82\bases\phl_prc -all now
mx \phl82\bases\phl_rgl fst=@\phl82\bases\phl_rgl.fst uctab=\phl82\bases\uctab actab=\phl82\bases\actab fullinv=\phl82\bases\phl_rgl -all now
mx \phl82\bases\phl_set fst=@\phl82\bases\phl_set.fst uctab=\phl82\bases\uctab actab=\phl82\bases\actab fullinv=\phl82\bases\phl_set -all now
mx \phl82\bases\phl_spt fst=@\phl82\bases\phl_spt.fst uctab=\phl82\bases\uctab actab=\phl82\bases\actab fullinv=\phl82\bases\phl_spt -all now
mx \phl82\bases\phl_tdo fst=@\phl82\bases\phl_tdo.fst uctab=\phl82\bases\uctab actab=\phl82\bases\actab fullinv=\phl82\bases\phl_tdo -all now
mx \phl82\bases\phl_tpr fst=@\phl82\bases\phl_tpr.fst uctab=\phl82\bases\uctab actab=\phl82\bases\actab fullinv=\phl82\bases\phl_tpr -all now
mx \phl82\bases\phl_usr fst=@\phl82\bases\phl_usr.fst uctab=\phl82\bases\uctab actab=\phl82\bases\actab fullinv=\phl82\bases\phl_usr -all now
mx \phl82\bases\phl_voc fst=@\phl82\bases\phl_voc.fst uctab=\phl82\bases\uctab actab=\phl82\bases\actab fullinv=\phl82\bases\phl_voc -all now

echo +++ Eliminando arquivos temporarios
rem del \phl8\cgi-bin\phl8\bases\x*
del \phl82\bases\x*
del \phl82\bases\giz*
echo +++ Fim do procedimento de importacao
exit
:ERRO
cls
echo ===================================================
echo Uma ou mais bases de dados nao foram encontradas
echo na pasta "\phl8\cgi-bin\phl8\bases"
echo O processo de importacao nao pode ser executado!
echo ===================================================
