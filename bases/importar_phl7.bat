@echo off
if exist "c:\phl7\cgi-bin\phl7\bases" goto INICIO
goto ERRO
:INICIO
echo +++ Desbloqueando bases de dados de origem
retag \phl7\cgi-bin\phl7\bases\001_cdu unlock
retag \phl7\cgi-bin\phl7\bases\001_cxa unlock
retag \phl7\cgi-bin\phl7\bases\001_emp unlock
retag \phl7\cgi-bin\phl7\bases\001_log unlock
retag \phl7\cgi-bin\phl7\bases\001_ser unlock
retag \phl7\cgi-bin\phl7\bases\001_tbo unlock
retag \phl7\cgi-bin\phl7\bases\phl_acv unlock
retag \phl7\cgi-bin\phl7\bases\phl_aut unlock
retag \phl7\cgi-bin\phl7\bases\phl_cnf unlock
retag \phl7\cgi-bin\phl7\bases\phl_cpa unlock
retag \phl7\cgi-bin\phl7\bases\phl_for unlock
retag \phl7\cgi-bin\phl7\bases\phl_pen unlock
retag \phl7\cgi-bin\phl7\bases\phl_set unlock
retag \phl7\cgi-bin\phl7\bases\phl_usr unlock
retag \phl7\cgi-bin\phl7\bases\phl_voc unlock

echo +++ Eliminando caracteres invalidos
mxcp \phl7\cgi-bin\phl7\bases\001_cdu create=\phl7\cgi-bin\phl7\bases\xcdu clean log=/phl7/cgi-bin/phl7/bases/xerro.txt
mxcp \phl7\cgi-bin\phl7\bases\001_cxa create=\phl7\cgi-bin\phl7\bases\xcxa clean log=/phl7/cgi-bin/phl7/bases/xerro.txt
mxcp \phl7\cgi-bin\phl7\bases\001_emp create=\phl7\cgi-bin\phl7\bases\xemp clean log=/phl7/cgi-bin/phl7/bases/xerro.txt
mxcp \phl7\cgi-bin\phl7\bases\001_log create=\phl7\cgi-bin\phl7\bases\xlog clean log=/phl7/cgi-bin/phl7/bases/xerro.txt
mxcp \phl7\cgi-bin\phl7\bases\001_ser create=\phl7\cgi-bin\phl7\bases\xser clean log=/phl7/cgi-bin/phl7/bases/xerro.txt
mxcp \phl7\cgi-bin\phl7\bases\001_tbo create=\phl7\cgi-bin\phl7\bases\xtbo clean log=/phl7/cgi-bin/phl7/bases/xerro.txt
mxcp \phl7\cgi-bin\phl7\bases\phl_acv create=\phl7\cgi-bin\phl7\bases\xacv clean log=/phl7/cgi-bin/phl7/bases/xerro.txt
mxcp \phl7\cgi-bin\phl7\bases\phl_aut create=\phl7\cgi-bin\phl7\bases\xaut clean log=/phl7/cgi-bin/phl7/bases/xerro.txt
mxcp \phl7\cgi-bin\phl7\bases\phl_cnf create=\phl7\cgi-bin\phl7\bases\xcnf clean log=/phl7/cgi-bin/phl7/bases/xerro.txt
mxcp \phl7\cgi-bin\phl7\bases\phl_cpa create=\phl7\cgi-bin\phl7\bases\xcpa clean log=/phl7/cgi-bin/phl7/bases/xerro.txt
mxcp \phl7\cgi-bin\phl7\bases\phl_for create=\phl7\cgi-bin\phl7\bases\xfor clean log=/phl7/cgi-bin/phl7/bases/xerro.txt
mxcp \phl7\cgi-bin\phl7\bases\phl_pen create=\phl7\cgi-bin\phl7\bases\xpen clean log=/phl7/cgi-bin/phl7/bases/xerro.txt
mxcp \phl7\cgi-bin\phl7\bases\phl_set create=\phl7\cgi-bin\phl7\bases\xset clean log=/phl7/cgi-bin/phl7/bases/xerro.txt
mxcp \phl7\cgi-bin\phl7\bases\phl_usr create=\phl7\cgi-bin\phl7\bases\xusr clean log=/phl7/cgi-bin/phl7/bases/xerro.txt
mxcp \phl7\cgi-bin\phl7\bases\phl_voc create=\phl7\cgi-bin\phl7\bases\xvoc clean log=/phl7/cgi-bin/phl7/bases/xerro.txt

echo +++ Criando novo catalogo
mx \phl7\cgi-bin\phl7\bases\xacv copy=\phl7\cgi-bin\phl7\bases\xacv "proc=if a(v2) then 'a2~PHL'mfn(6)'~' fi" -all now
mx \phl7\cgi-bin\phl7\bases\xacv create=\phl7\cgi-bin\phl7\bases\xacv1 "gizmo=\phl82\bases\phl7_giz" -all now
mx \phl7\cgi-bin\phl7\bases\xacv1 create=\phl7\cgi-bin\phl7\bases\xacv2 "proc=@\phl82\bases\phl7_acv.prc" "proc='s'" -all now
mxcp \phl7\cgi-bin\phl7\bases\xacv2 create=\phl82\bases\phl_acv clean mintag=1 maxtag=999 log=/phl7/cgi-bin/phl7/bases/xerro.txt

echo +++ Padronizando a base de dados de tombo
mx \phl82\bases\phl_acv "fst=1 0 (v1[1]'#'v7^a/)" uctab=\phl82\bases\uctab fullinv=\phl82\bases\phl_acv -all now
mx \phl7\cgi-bin\phl7\bases\xtbo create=\phl7\cgi-bin\phl7\bases\xtbo1 "join=\phl82\bases\phl_acv,800:2,997:998='001#'v801" -all now
mx \phl7\cgi-bin\phl7\bases\xtbo1 create=\phl82\bases\001_tbo "proc=@\phl82\bases\phl7_tbo.prc" "proc='s'" -all now

echo +++ Gerando indice de tombos.
echo     Isto pode levar alguns minutos. Seja paciente!
mx c:\phl82\bases\001_tbo fst=@c:\phl82\bases\001_tbo.fst uctab=c:\phl82\bases\uctab actab=c:\phl82\bases\actab fullinv=c:\phl82\bases\001_tbo -all now
echo +++ Atualizando campo #007 do catalogo
mx c:\phl82\bases\phl_acv copy=c:\phl82\bases\phl_acv "join=c:\phl82\bases\001_tbo,803,801,807,819,820,300:998='TIT='v2" "proc='d1234d7d32001d801d803d807d819d820d300',if p(v7) then ('a7~^a'v801,'^b'v803,'^c'v819,'^d'v820,'^e'v807,'^m'v300'~') fi" "proc='s'" -all now

echo +++ Padronizando a base de dados do kardex
rem mx \phl82\bases\001_ser copy=\phl82\bases\001_ser "proc='a998~'mfn(1)'~'" "proc='s'" -all now

echo +++ Padronizando a base de dados de usuarios
mx \phl7\cgi-bin\phl7\bases\xusr create=\phl82\bases\phl_usr "proc=@\phl82\bases\phl7_usr.prc" "proc='s'" -all now

echo +++ Padronizando a base de dados de historicos
mx \phl82\bases\phl_usr "fst=1 0 v701/" uctab=\phl82\bases\uctab fullinv=\phl82\bases\phl_usr -all now
mx \phl82\bases\phl_acv "fst=1 0 v2/" uctab=\phl82\bases\uctab fullinv=\phl82\bases\phl_acv -all now
mx \phl7\cgi-bin\phl7\bases\xlog "pft=(v910/)" lw=512 now >\phl7\cgi-bin\phl7\bases\xlog.txt
mx seq=\phl7\cgi-bin\phl7\bases\xlog.txt create=\phl7\cgi-bin\phl7\bases\xlog1 "proc='d*','a910~'v1'~'" -all now
mx \phl7\cgi-bin\phl7\bases\xlog1 create=\phl7\cgi-bin\phl7\bases\xlog2 "join=\phl82\bases\phl_usr,998=v910^u" "proc='d*','a910~'v910,'^k'v998'~'" -all now
mx \phl7\cgi-bin\phl7\bases\xlog2 create=\phl7\cgi-bin\phl7\bases\xlog3 "join=\phl82\bases\phl_acv,998=v910^a" "proc='d*','a910~'v910,'^f'v998'~'" -all now
mx \phl7\cgi-bin\phl7\bases\xlog3 create=\phl82\bases\001_log "proc=@\phl82\bases\phl7_log.prc" -all now

echo +++ Padronizando a base de dados de emprestimos
mx \phl7\cgi-bin\phl7\bases\xemp create=\phl7\cgi-bin\phl7\bases\xemp1 "join=\phl82\bases\phl_usr,998=v900^u" "proc='d*','a900~'v900,'^k'v998'~'" -all now
mx \phl7\cgi-bin\phl7\bases\xemp1 create=\phl7\cgi-bin\phl7\bases\xemp2 "join=\phl82\bases\phl_acv,998=v900^a" "proc='d*','a900~'v900,'^f'v998'~'" -all now
mx \phl7\cgi-bin\phl7\bases\xemp2 create=\phl82\bases\001_emp "proc=@\phl82\bases\phl7_emp.prc" -all now

echo +++ Obtendo dados do sistema
mx \phl82\bases\phl_cnf copy=\phl82\bases\phl_cnf "proc='d200','a200~'ref(['\phl7\cgi-bin\phl7\bases\phl_cnf']1,v200)'~'" -all now
mx \phl82\bases\phl_set copy=\phl82\bases\phl_set "proc=@\phl82\bases\phl7_set.prc" -all now

echo +++ Obtendo dados de fornecedores
mx \phl7\cgi-bin\phl7\bases\xfor create=\phl82\bases\phl_for -all now

echo +++ Obtendo dados de penalidades
mx \phl7\cgi-bin\phl7\bases\xpen create=\phl82\bases\phl_pen -all now

echo +++ Obtendo dados do livro caixa
mx \phl7\cgi-bin\phl7\bases\xcxa create=\phl82\bases\001_cxa -all now

echo +++ Obtendo dados de sugestoes de compra
mx \phl7\cgi-bin\phl7\bases\xcpa create=\phl82\bases\phl_cpa -all now

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
mx \phl82\bases\phl_cnt fst=@\phl82\bases\phl_cnt.fst uctab=\phl82\bases\uctab actab=\phl82\bases\actab fullinv=\phl82\bases\phl_cnt -all now
mx \phl82\bases\phl_cpa fst=@\phl82\bases\phl_cpa.fst uctab=\phl82\bases\uctab actab=\phl82\bases\actab fullinv=\phl82\bases\phl_cpa -all now
mx \phl82\bases\phl_cur fst=@\phl82\bases\phl_cur.fst uctab=\phl82\bases\uctab actab=\phl82\bases\actab fullinv=\phl82\bases\phl_cur -all now
mx \phl82\bases\phl_for fst=@\phl82\bases\phl_for.fst uctab=\phl82\bases\uctab actab=\phl82\bases\actab fullinv=\phl82\bases\phl_for -all now
mx \phl82\bases\phl_idm fst=@\phl82\bases\phl_idm.fst uctab=\phl82\bases\uctab actab=\phl82\bases\actab fullinv=\phl82\bases\phl_idm -all now
mx \phl82\bases\phl_pen fst=@\phl82\bases\phl_pen.fst uctab=\phl82\bases\uctab actab=\phl82\bases\actab fullinv=\phl82\bases\phl_pen -all now
mx \phl82\bases\phl_per fst=@\phl82\bases\phl_per.fst uctab=\phl82\bases\uctab actab=\phl82\bases\actab fullinv=\phl82\bases\phl_per -all now
mx \phl82\bases\phl_prc fst=@\phl82\bases\phl_prc.fst uctab=\phl82\bases\uctab actab=\phl82\bases\actab fullinv=\phl82\bases\phl_prc -all now
mx \phl82\bases\phl_rgl fst=@\phl82\bases\phl_rgl.fst uctab=\phl82\bases\uctab actab=\phl82\bases\actab fullinv=\phl82\bases\phl_rgl -all now
mx \phl82\bases\phl_set fst=@\phl82\bases\phl_set.fst uctab=\phl82\bases\uctab actab=\phl82\bases\actab fullinv=\phl82\bases\phl_set -all now
mx \phl82\bases\phl_tdo fst=@\phl82\bases\phl_tdo.fst uctab=\phl82\bases\uctab actab=\phl82\bases\actab fullinv=\phl82\bases\phl_tdo -all now
mx \phl82\bases\phl_tpr fst=@\phl82\bases\phl_tpr.fst uctab=\phl82\bases\uctab actab=\phl82\bases\actab fullinv=\phl82\bases\phl_tpr -all now
mx \phl82\bases\phl_usr fst=@\phl82\bases\phl_usr.fst uctab=\phl82\bases\uctab actab=\phl82\bases\actab fullinv=\phl82\bases\phl_usr -all now
mx \phl82\bases\phl_voc fst=@\phl82\bases\phl_voc.fst uctab=\phl82\bases\uctab actab=\phl82\bases\actab fullinv=\phl82\bases\phl_voc -all now

del \phl7\cgi-bin\phl7\bases\x*
del \phl82\bases\x*
rem del \phl82\bases\giz*
goto FIM
:ERRO
cls
echo ===================================================
echo Uma ou mais bases de dados nao foram encontradas
echo na pasta "c:\phl8\cgi-bin\phl8\bases"
echo O processo de importacao nao pode ser executado!
echo ===================================================
:FIM
echo +++ Finalizado!
