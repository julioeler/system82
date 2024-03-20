@echo off
if exist "c:\phl81\cgi-bin\phl81\bases" goto INICIO
goto ERRO
:INICIO
echo +++ Desbloqueando bases de dados
echo 001_cal
retag \phl81\cgi-bin\phl81\bases\001_cal unlock
echo 001_cdu
retag \phl81\cgi-bin\phl81\bases\001_cdu unlock
echo 001_cxa
retag \phl81\cgi-bin\phl81\bases\001_cxa unlock
echo 001_emp
retag \phl81\cgi-bin\phl81\bases\001_emp unlock
echo 001_log
retag \phl81\cgi-bin\phl81\bases\001_log unlock
echo 001_ser
retag \phl81\cgi-bin\phl81\bases\001_ser unlock
echo 001_tbo
retag \phl81\cgi-bin\phl81\bases\001_tbo unlock
echo phl_acv
retag \phl81\cgi-bin\phl81\bases\phl_acv unlock
echo phl_aqu
retag \phl81\cgi-bin\phl81\bases\phl_aqu unlock
echo phl_ass
retag \phl81\cgi-bin\phl81\bases\phl_ass unlock
echo phl_aut
retag \phl81\cgi-bin\phl81\bases\phl_aut unlock
echo phl_cnf
retag \phl81\cgi-bin\phl81\bases\phl_cnf unlock
echo phl_cnt
retag \phl81\cgi-bin\phl81\bases\phl_cnt unlock
echo phl_col
retag \phl81\cgi-bin\phl81\bases\phl_col unlock
echo phl_cpa
retag \phl81\cgi-bin\phl81\bases\phl_cpa unlock
echo phl_cur
retag \phl81\cgi-bin\phl81\bases\phl_cur unlock
echo phl_for
retag \phl81\cgi-bin\phl81\bases\phl_for unlock
echo phl_gen
retag \phl81\cgi-bin\phl81\bases\phl_gen unlock
echo phl_idm
retag \phl81\cgi-bin\phl81\bases\phl_idm unlock
echo phl_mec
retag \phl81\cgi-bin\phl81\bases\phl_mec unlock
echo phl_nda
retag \phl81\cgi-bin\phl81\bases\phl_nda unlock
echo phl_pen
retag \phl81\cgi-bin\phl81\bases\phl_pen unlock
echo phl_per
retag \phl81\cgi-bin\phl81\bases\phl_per unlock
echo phl_prc
retag \phl81\cgi-bin\phl81\bases\phl_prc unlock
echo phl_rel
retag \phl81\cgi-bin\phl81\bases\phl_rel unlock
echo phl_res
retag \phl81\cgi-bin\phl81\bases\phl_res unlock
echo phl_rgl
retag \phl81\cgi-bin\phl81\bases\phl_rgl unlock
echo phl_set
retag \phl81\cgi-bin\phl81\bases\phl_set unlock
echo phl_spt
retag \phl81\cgi-bin\phl81\bases\phl_spt unlock
echo phl_tpr
retag \phl81\cgi-bin\phl81\bases\phl_tpr unlock
echo phl_usr
retag \phl81\cgi-bin\phl81\bases\phl_usr unlock
echo phl_voc
retag \phl81\cgi-bin\phl81\bases\phl_voc unlock

echo +++ Eliminando caracteres invalidos
mxcp \phl81\cgi-bin\phl81\bases\001_cal create=\phl81\cgi-bin\phl81\bases\xcal log=\phl81\cgi-bin\phl81\bases\xerro.txt
mxcp \phl81\cgi-bin\phl81\bases\001_cdu create=\phl81\cgi-bin\phl81\bases\xcdu log=\phl81\cgi-bin\phl81\bases\xerro.txt
mxcp \phl81\cgi-bin\phl81\bases\001_cxa create=\phl81\cgi-bin\phl81\bases\xcxa log=\phl81\cgi-bin\phl81\bases\xerro.txt
mxcp \phl81\cgi-bin\phl81\bases\001_emp create=\phl81\cgi-bin\phl81\bases\xemp log=\phl81\cgi-bin\phl81\bases\xerro.txt
mxcp \phl81\cgi-bin\phl81\bases\001_log create=\phl81\cgi-bin\phl81\bases\xlog log=\phl81\cgi-bin\phl81\bases\xerro.txt
mxcp \phl81\cgi-bin\phl81\bases\001_ser create=\phl81\cgi-bin\phl81\bases\xser log=\phl81\cgi-bin\phl81\bases\xerro.txt
mxcp \phl81\cgi-bin\phl81\bases\001_tbo create=\phl81\cgi-bin\phl81\bases\xtbo log=\phl81\cgi-bin\phl81\bases\xerro.txt
mxcp \phl81\cgi-bin\phl81\bases\phl_acv create=\phl81\cgi-bin\phl81\bases\xacv log=\phl81\cgi-bin\phl81\bases\xerro.txt
mxcp \phl81\cgi-bin\phl81\bases\phl_aqu create=\phl81\cgi-bin\phl81\bases\xaqu log=\phl81\cgi-bin\phl81\bases\xerro.txt
mxcp \phl81\cgi-bin\phl81\bases\phl_ass create=\phl81\cgi-bin\phl81\bases\xass log=\phl81\cgi-bin\phl81\bases\xerro.txt
mxcp \phl81\cgi-bin\phl81\bases\phl_aut create=\phl81\cgi-bin\phl81\bases\xaut log=\phl81\cgi-bin\phl81\bases\xerro.txt
mxcp \phl81\cgi-bin\phl81\bases\phl_cnf create=\phl81\cgi-bin\phl81\bases\xcnf log=\phl81\cgi-bin\phl81\bases\xerro.txt
mxcp \phl81\cgi-bin\phl81\bases\phl_cnt create=\phl81\cgi-bin\phl81\bases\xcnt log=\phl81\cgi-bin\phl81\bases\xerro.txt
mxcp \phl81\cgi-bin\phl81\bases\phl_col create=\phl81\cgi-bin\phl81\bases\xcol log=\phl81\cgi-bin\phl81\bases\xerro.txt
mxcp \phl81\cgi-bin\phl81\bases\phl_cpa create=\phl81\cgi-bin\phl81\bases\xcpa log=\phl81\cgi-bin\phl81\bases\xerro.txt
mxcp \phl81\cgi-bin\phl81\bases\phl_cur create=\phl81\cgi-bin\phl81\bases\xcur log=\phl81\cgi-bin\phl81\bases\xerro.txt
mxcp \phl81\cgi-bin\phl81\bases\phl_for create=\phl81\cgi-bin\phl81\bases\xfor log=\phl81\cgi-bin\phl81\bases\xerro.txt
mxcp \phl81\cgi-bin\phl81\bases\phl_gen create=\phl81\cgi-bin\phl81\bases\xgen log=\phl81\cgi-bin\phl81\bases\xerro.txt
mxcp \phl81\cgi-bin\phl81\bases\phl_idm create=\phl81\cgi-bin\phl81\bases\xidm log=\phl81\cgi-bin\phl81\bases\xerro.txt
mxcp \phl81\cgi-bin\phl81\bases\phl_mec create=\phl81\cgi-bin\phl81\bases\xmec log=\phl81\cgi-bin\phl81\bases\xerro.txt
mxcp \phl81\cgi-bin\phl81\bases\phl_nda create=\phl81\cgi-bin\phl81\bases\xnda log=\phl81\cgi-bin\phl81\bases\xerro.txt
mxcp \phl81\cgi-bin\phl81\bases\phl_pen create=\phl81\cgi-bin\phl81\bases\xpen log=\phl81\cgi-bin\phl81\bases\xerro.txt
mxcp \phl81\cgi-bin\phl81\bases\phl_per create=\phl81\cgi-bin\phl81\bases\xper log=\phl81\cgi-bin\phl81\bases\xerro.txt
mxcp \phl81\cgi-bin\phl81\bases\phl_prc create=\phl81\cgi-bin\phl81\bases\xprc log=\phl81\cgi-bin\phl81\bases\xerro.txt
mxcp \phl81\cgi-bin\phl81\bases\phl_rel create=\phl81\cgi-bin\phl81\bases\xrel log=\phl81\cgi-bin\phl81\bases\xerro.txt
mxcp \phl81\cgi-bin\phl81\bases\phl_res create=\phl81\cgi-bin\phl81\bases\xres log=\phl81\cgi-bin\phl81\bases\xerro.txt
mxcp \phl81\cgi-bin\phl81\bases\phl_rgl create=\phl81\cgi-bin\phl81\bases\xrgl log=\phl81\cgi-bin\phl81\bases\xerro.txt
mxcp \phl81\cgi-bin\phl81\bases\phl_set create=\phl81\cgi-bin\phl81\bases\xset log=\phl81\cgi-bin\phl81\bases\xerro.txt
mxcp \phl81\cgi-bin\phl81\bases\phl_spt create=\phl81\cgi-bin\phl81\bases\xspt log=\phl81\cgi-bin\phl81\bases\xerro.txt
mxcp \phl81\cgi-bin\phl81\bases\phl_tpr create=\phl81\cgi-bin\phl81\bases\xtpr log=\phl81\cgi-bin\phl81\bases\xerro.txt
mxcp \phl81\cgi-bin\phl81\bases\phl_usr create=\phl81\cgi-bin\phl81\bases\xusr log=\phl81\cgi-bin\phl81\bases\xerro.txt
mxcp \phl81\cgi-bin\phl81\bases\phl_voc create=\phl81\cgi-bin\phl81\bases\xvoc log=\phl81\cgi-bin\phl81\bases\xerro.txt

echo +++ Importado bases de dados
mx \phl81\cgi-bin\phl81\bases\xacv create=\phl82\bases\phl_acv "proc=@\phl82\bases\phl81_acv.prc" "proc='s'" -all now
mx \phl81\cgi-bin\phl81\bases\xaqu create=\phl82\bases\phl_aqu "proc=if a(v998) then 'a998~'mfn(1)'~' fi" "proc='s'" -all now
mx \phl81\cgi-bin\phl81\bases\xass create=\phl82\bases\phl_ass "proc=if a(v998) then 'a998~'mfn(1)'~' fi" "proc='s'" -all now
mx \phl81\cgi-bin\phl81\bases\xaut create=\phl82\bases\phl_aut "proc=if a(v998) then 'a998~'mfn(1)'~' fi" "proc='s'" -all now
mx \phl81\cgi-bin\phl81\bases\xcal create=\phl82\bases\001_cal -all now
mx \phl81\cgi-bin\phl81\bases\xcdu create=\phl82\bases\001_cdu "proc=if a(v998) then 'a998~'mfn(1)'~' fi" "proc='s'" -all now
mx \phl81\cgi-bin\phl81\bases\xcnt create=\phl82\bases\phl_cnt "proc=if a(v998) then 'a998~'mfn(1)'~' fi" "proc='s'" -all now
mx \phl81\cgi-bin\phl81\bases\xcol create=\phl82\bases\phl_col "proc='d370',if a(v998) then 'a998~'mfn(1)'~' fi,'a370~/phl82/img/069.gif~'" "proc='s'" -all now
mx \phl81\cgi-bin\phl81\bases\xcpa create=\phl82\bases\phl_cpa "proc=if a(v998) then 'a998~'mfn(1)'~' fi" "proc='s'" -all now
mx \phl81\cgi-bin\phl81\bases\xcur create=\phl82\bases\phl_cur "proc=if a(v998) then 'a998~'mfn(1)'~' fi" "proc='s'" -all now
mx \phl81\cgi-bin\phl81\bases\xcxa create=\phl82\bases\001_cxa "proc=if a(v998) then 'a998~'mfn(1)'~' fi" "proc='s'" -all now
mx \phl81\cgi-bin\phl81\bases\xfor create=\phl82\bases\phl_for "proc=if a(v998) then 'a998~'mfn(1)'~' fi" "proc='s'" -all now
mx \phl81\cgi-bin\phl81\bases\xgen create=\phl82\bases\phl_gen "proc=if a(v998) then 'a998~'mfn(1)'~' fi" "proc='s'" -all now
mx \phl81\cgi-bin\phl81\bases\xidm create=\phl82\bases\phl_idm "proc=if a(v998) then 'a998~'mfn(1)'~' fi" "proc='s'" -all now
mx \phl81\cgi-bin\phl81\bases\xnda create=\phl82\bases\phl_nda "proc=if a(v998) then 'a998~'mfn(1)'~' fi" "proc='s'" -all now
mx \phl81\cgi-bin\phl81\bases\xpen create=\phl82\bases\phl_pen -all now
mx \phl81\cgi-bin\phl81\bases\xper create=\phl82\bases\phl_per "proc=if a(v998) then 'a998~'mfn(1)'~' fi" "proc='s'" -all now
mx \phl81\cgi-bin\phl81\bases\xprc create=\phl82\bases\phl_prc "proc=if a(v998) then 'a998~'mfn(1)'~' fi" "proc='s'" -all now
mx \phl81\cgi-bin\phl81\bases\xrel create=\phl82\bases\phl_rel "proc=if a(v998) then 'a998~'mfn(1)'~' fi" "proc='s'" -all now
mx \phl81\cgi-bin\phl81\bases\xres create=\phl82\bases\phl_res -all now
mx \phl81\cgi-bin\phl81\bases\xrgl create=\phl82\bases\phl_rgl "proc=if a(v998) then 'a998~'mfn(1)'~' fi" "proc='s'" -all now
mx \phl81\cgi-bin\phl81\bases\xset create=\phl82\bases\phl_set "proc='d638'"  "proc=if a(v998) then 'a998~'mfn(1)'~' fi" "proc='s'" -all now
mx \phl81\cgi-bin\phl81\bases\xspt create=\phl82\bases\phl_spt "proc='d370',if a(v998) then 'a998~'mfn(1)'~' fi,'a370~'replace(v370,'/phl81/','/phl82/')'~'" "proc='s'" -all now
mx \phl81\cgi-bin\phl81\bases\xtpr create=\phl82\bases\phl_tpr "proc=if a(v998) then 'a998~'mfn(1)'~' fi" "proc='s'" -all now
mx \phl81\cgi-bin\phl81\bases\xvoc create=\phl82\bases\phl_voc "proc=if a(v998) then 'a998~'mfn(1)'~' fi" "proc='s'" -all now
mx \phl81\cgi-bin\phl81\bases\xusr create=\phl82\bases\phl_usr "proc='d998','a998~'mfn(1)'~'," "proc='s'" -all now
mx \phl81\cgi-bin\phl81\bases\xser create=\phl82\bases\001_ser "proc='d998','a998~'mfn(1)'~'," "proc='s'" -all now

echo +++ Atualizando base do sistema
mx \phl82\bases\phl_cnf copy=\phl82\bases\phl_cnf "proc='d200','a200~'ref(['\phl81\cgi-bin\phl81\bases\xcnf']1,v200)'~'" -all now

echo +++ Criando base tombo
mx \phl82\bases\phl_acv "fst=1 0 v2/" uctab=\phl82\bases\uctab fullinv=\phl82\bases\phl_acv -all now
mx \phl81\cgi-bin\phl81\bases\xtbo create=\phl81\cgi-bin\phl81\bases\xtbo1 "proc='d995d997d998'" -all now
mx \phl81\cgi-bin\phl81\bases\xtbo1 create=\phl81\cgi-bin\phl81\bases\xtbo2 "join=\phl82\bases\phl_acv,995:998=v800" jmax=1 -all now
mx \phl81\cgi-bin\phl81\bases\xtbo2 create=\phl82\bases\001_tbo uctab=\phl82\bases\uctab "proc=@\phl82\bases\phl81_tbo.prc" "proc='s'" -all now

echo +++ Gerando indice de tombos.
mx c:\phl82\bases\001_tbo fst=@c:\phl82\bases\001_tbo.fst uctab=c:\phl82\bases\uctab actab=c:\phl82\bases\actab fullinv=c:\phl82\bases\001_tbo -all now

echo +++ Atualizando campo #007 do catalogo
mx c:\phl82\bases\phl_acv copy=c:\phl82\bases\phl_acv "join=c:\phl82\bases\001_tbo,803,801,807,819,820,300:998='TIT='v2" "proc='d1234d7d32001d801d803d807d819d820d300',if p(v7) then ('a7~^a'v801,'^b'v803,'^c'v819,'^d'v820,'^e'v807,'^m'v300'~') fi," "proc='s'" -all now

echo +++ Criando base de historico
mx \phl81\cgi-bin\phl81\bases\xlog "pft=(v910/)" lw=512 now > \phl81\cgi-bin\phl81\bases\xlog.txt -all now
mx seq=\phl81\cgi-bin\phl81\bases\xlog.txt create=\phl81\cgi-bin\phl81\bases\xlog1 -all now
mx \phl82\bases\phl_acv "fst=1 0 v2/" uctab=\phl82\bases\uctab actab=\phl82\bases\actab fullinv=\phl82\bases\phl_acv -all now
mx \phl82\bases\phl_usr "fst=1 0 v701/" uctab=\phl82\bases\uctab actab=\phl82\bases\actab fullinv=\phl82\bases\phl_usr -all now
mx \phl81\cgi-bin\phl81\bases\xlog1 "join=\phl82\bases\phl_acv,998=v1^a" jmax=1 create=\phl81\cgi-bin\phl81\bases\xlog2 "proc='d*','a910~'v1,if v1^f='' then '^f'v998 fi,'~'" -all now
mx \phl81\cgi-bin\phl81\bases\xlog2 "join=\phl82\bases\phl_usr,998=v910^u" jmax=1 create=\phl82\bases\001_log "proc='d*','a910~'v910,if v910^k='' then '^k'v998 fi,'~'" -all now

echo +++ Criando base de emprestimo
mx null create=\phl81\cgi-bin\phl81\bases\xemp1 count=0 -all now
mx \phl81\cgi-bin\phl81\bases\xemp append=\phl81\cgi-bin\phl81\bases\xemp1 -all now
mx \phl81\cgi-bin\phl81\bases\xemp1 "join=\phl82\bases\phl_acv,998=v900^a" jmax=1 create=\phl81\cgi-bin\phl81\bases\xemp2 "proc='d*','a900~'v900,if v900^f='' then '^f'v998 fi,'~'" -all now
mx \phl81\cgi-bin\phl81\bases\xemp2 "join=\phl82\bases\phl_usr,998=v900^u" jmax=1 create=\phl82\bases\001_emp "proc='d*','a900~'v900,if v900^k='' then '^k'v998 fi,'~'" -all now

echo +++ Gerando indice das bases de dados.
echo     Seja paciente. Isto pode demorar alguns minutos!
mx \phl82\bases\001_cal fst=@\phl82\bases\001_cal.fst uctab=\phl82\bases\uctab actab=\phl82\bases\actab fullinv=\phl82\bases\001_cal -all now
mx \phl82\bases\001_cdu fst=@\phl82\bases\001_cdu.fst uctab=\phl82\bases\uctab actab=\phl82\bases\actab fullinv=\phl82\bases\001_cdu -all now
mx \phl82\bases\001_cxa fst=@\phl82\bases\001_cxa.fst uctab=\phl82\bases\uctab actab=\phl82\bases\actab fullinv=\phl82\bases\001_cxa -all now
mx \phl82\bases\001_emp fst=@\phl82\bases\001_emp.fst uctab=\phl82\bases\uctab actab=\phl82\bases\actab fullinv=\phl82\bases\001_emp -all now
mx \phl82\bases\001_log fst=@\phl82\bases\001_log.fst uctab=\phl82\bases\uctab actab=\phl82\bases\actab fullinv=\phl82\bases\001_log -all now
mx \phl82\bases\001_ser fst=@\phl82\bases\001_ser.fst uctab=\phl82\bases\uctab actab=\phl82\bases\actab fullinv=\phl82\bases\001_ser -all now
mx \phl82\bases\phl_acv fst=@\phl82\bases\phl_acv.fst uctab=\phl82\bases\uctab actab=\phl82\bases\actab fullinv=\phl82\bases\phl_acv -all now
mx \phl82\bases\phl_acv_fmt fst=@\phl82\bases\phl_acv_fmt.fst uctab=\phl82\bases\uctab actab=\phl82\bases\actab fullinv=\phl82\bases\phl_acv_fmt -all now
mx \phl82\bases\phl_aqu fst=@\phl82\bases\phl_aqu.fst uctab=\phl82\bases\uctab actab=\phl82\bases\actab fullinv=\phl82\bases\phl_aqu -all now
mx \phl82\bases\phl_ass fst=@\phl82\bases\phl_ass.fst uctab=\phl82\bases\uctab actab=\phl82\bases\actab fullinv=\phl82\bases\phl_ass -all now
mx \phl82\bases\phl_aut fst=@\phl82\bases\phl_aut.fst uctab=\phl82\bases\uctab actab=\phl82\bases\actab fullinv=\phl82\bases\phl_aut -all now
mx \phl82\bases\phl_cnf fst=@\phl82\bases\phl_cnf.fst uctab=\phl82\bases\uctab actab=\phl82\bases\actab fullinv=\phl82\bases\phl_cnf -all now
mx \phl82\bases\phl_cnt fst=@\phl82\bases\phl_cnt.fst uctab=\phl82\bases\uctab actab=\phl82\bases\actab fullinv=\phl82\bases\phl_cnt -all now
mx \phl82\bases\phl_col fst=@\phl82\bases\phl_col.fst uctab=\phl82\bases\uctab actab=\phl82\bases\actab fullinv=\phl82\bases\phl_col -all now
mx \phl82\bases\phl_cpa fst=@\phl82\bases\phl_cpa.fst uctab=\phl82\bases\uctab actab=\phl82\bases\actab fullinv=\phl82\bases\phl_cpa -all now
mx \phl82\bases\phl_cur fst=@\phl82\bases\phl_cur.fst uctab=\phl82\bases\uctab actab=\phl82\bases\actab fullinv=\phl82\bases\phl_cur -all now
mx \phl82\bases\phl_gen fst=@\phl82\bases\phl_gen.fst uctab=\phl82\bases\uctab actab=\phl82\bases\actab fullinv=\phl82\bases\phl_gen -all now
mx \phl82\bases\phl_idm fst=@\phl82\bases\phl_idm.fst uctab=\phl82\bases\uctab actab=\phl82\bases\actab fullinv=\phl82\bases\phl_idm -all now
mx \phl82\bases\phl_nda fst=@\phl82\bases\phl_nda.fst uctab=\phl82\bases\uctab actab=\phl82\bases\actab fullinv=\phl82\bases\phl_nda -all now
mx \phl82\bases\phl_per fst=@\phl82\bases\phl_per.fst uctab=\phl82\bases\uctab actab=\phl82\bases\actab fullinv=\phl82\bases\phl_per -all now
mx \phl82\bases\phl_prc fst=@\phl82\bases\phl_prc.fst uctab=\phl82\bases\uctab actab=\phl82\bases\actab fullinv=\phl82\bases\phl_prc -all now
mx \phl82\bases\phl_rel fst=@\phl82\bases\phl_rel.fst uctab=\phl82\bases\uctab actab=\phl82\bases\actab fullinv=\phl82\bases\phl_rel -all now
mx \phl82\bases\phl_res fst=@\phl82\bases\phl_res.fst uctab=\phl82\bases\uctab actab=\phl82\bases\actab fullinv=\phl82\bases\phl_res -all now
mx \phl82\bases\phl_rgl fst=@\phl82\bases\phl_rgl.fst uctab=\phl82\bases\uctab actab=\phl82\bases\actab fullinv=\phl82\bases\phl_rgl -all now
mx \phl82\bases\phl_set fst=@\phl82\bases\phl_set.fst uctab=\phl82\bases\uctab actab=\phl82\bases\actab fullinv=\phl82\bases\phl_set -all now
mx \phl82\bases\phl_spt fst=@\phl82\bases\phl_spt.fst uctab=\phl82\bases\uctab actab=\phl82\bases\actab fullinv=\phl82\bases\phl_spt -all now
mx \phl82\bases\phl_tdo fst=@\phl82\bases\phl_tdo.fst uctab=\phl82\bases\uctab actab=\phl82\bases\actab fullinv=\phl82\bases\phl_tdo -all now
mx \phl82\bases\phl_tpr fst=@\phl82\bases\phl_tpr.fst uctab=\phl82\bases\uctab actab=\phl82\bases\actab fullinv=\phl82\bases\phl_tpr -all now
mx \phl82\bases\phl_usr fst=@\phl82\bases\phl_usr.fst uctab=\phl82\bases\uctab actab=\phl82\bases\actab fullinv=\phl82\bases\phl_usr -all now
mx \phl82\bases\phl_voc fst=@\phl82\bases\phl_voc.fst uctab=\phl82\bases\uctab actab=\phl82\bases\actab fullinv=\phl82\bases\phl_voc -all now

del \phl81\cgi-bin\phl81\bases\x*
del \phl82\bases\x*
del \phl82\bases\giz*
echo +++ Fim do procedimento de importacao
exit
:ERRO
cls
echo ===================================================
echo Uma ou mais bases de dados nao foram encontradas
echo na pasta "c:\phl81\cgi-bin\phl81\bases"
echo O processo de importacao nao pode ser executado!
echo ===================================================
