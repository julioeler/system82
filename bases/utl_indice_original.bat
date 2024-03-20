@echo off
cls
echo ==========================================================
echo                  Atualizacao do PHL8.2
echo ==========================================================
echo             *** Seja paciente. Aguarde! ***
echo ==========================================================
retag 001_cal unlock
retag 001_cdu unlock
retag 001_cxa unlock
retag 001_emp unlock
retag 001_log unlock
retag 001_ser unlock
retag 001_ser_fmt unlock
retag 001_tbo unlock
retag 001_tbo_fmt unlock
retag 001_usc unlock
retag phl_acv unlock
retag phl_acv_fmt unlock
retag phl_aqu unlock
retag phl_ass unlock
retag phl_aut unlock
retag phl_cnf unlock
retag phl_cnt unlock
retag phl_col unlock
retag phl_cpa unlock
retag phl_cur unlock
retag phl_for unlock
retag phl_for_fmt unlock
retag phl_gen unlock
retag phl_idm unlock
retag phl_idx unlock
retag phl_mec unlock
retag phl_nda unlock
retag phl_pen unlock
retag phl_per unlock
retag phl_pqt unlock
retag phl_prc unlock
retag phl_pwd unlock
retag phl_rel unlock
retag phl_res unlock
retag phl_rgl unlock
retag phl_set unlock
retag phl_spt unlock
retag phl_tdo unlock
retag phl_tpr unlock
retag phl_usr unlock
retag phl_usr_fmt unlock
retag phl_voc unlock
echo ==========================================================
echo +++ Iniciando processo de atualizacao dos indices
echo ==========================================================
echo +++ Calendario
mx 001_cal fst=@ uctab=uctab actab=actab fullinv=001_cal -all now
echo +++ Tabela de classificacao
mx 001_cdu fst=@ uctab=uctab actab=actab fullinv=001_cdu -all now
echo +++ Livro caixa
mx 001_cxa fst=@ uctab=uctab actab=actab fullinv=001_cxa -all now
echo +++ Emprestimos
mx 001_emp fst=@ uctab=uctab actab=actab fullinv=001_emp -all now
echo +++ Historicos
mx 001_log fst=@ uctab=uctab actab=actab fullinv=001_log -all now
echo +++ Kardex
mx 001_ser fst=@ uctab=uctab actab=actab fullinv=001_ser -all now
echo +++ Formulario do kardex
mx 001_ser_fmt fst=@ uctab=uctab actab=actab fullinv=001_ser_fmt -all now
echo +++ Tombos
mx 001_tbo fst=@ uctab=uctab actab=actab fullinv=001_tbo -all now
echo +++ Formulario do tombo
mx 001_tbo_fmt fst=@ uctab=uctab actab=actab fullinv=001_tbo_fmt -all now
echo +++ Uso da colecao
mx 001_usc fst=@ uctab=uctab actab=actab fullinv=001_usc -all now
echo +++ Catalogo
mx phl_acv fst=@ uctab=uctab actab=actab fullinv=phl_acv -all now
echo +++ Formularios do catalogo
mx phl_acv_fmt fst=@ uctab=uctab actab=actab fullinv=phl_acv_fmt -all now
echo +++ Tipo de aquisicao
mx phl_aqu fst=@ uctab=uctab actab=actab fullinv=phl_aqu -all now
echo +++ Tipo de assinatura
mx phl_ass fst=@ uctab=uctab actab=actab fullinv=phl_ass -all now
echo +++ Autoridades
mx phl_aut fst=@ uctab=uctab actab=actab fullinv=phl_aut -all now
echo +++ Sistema
mx phl_cnf fst=@ uctab=uctab actab=actab fullinv=phl_cnf -all now
echo +++ Tipo de conteudo
mx phl_cnt fst=@ uctab=uctab actab=actab fullinv=phl_cnt -all now
echo +++ Tipo de colecao
mx phl_col fst=@ uctab=uctab actab=actab fullinv=phl_col -all now
echo +++ Sugestoes de compra
mx phl_cpa fst=@ uctab=uctab actab=actab fullinv=phl_cpa -all now
echo +++ Tipo de curso
mx phl_cur fst=@ uctab=uctab actab=actab fullinv=phl_cur -all now
echo +++ Fornecedores
mx phl_for fst=@ uctab=uctab actab=actab fullinv=phl_for -all now
echo +++ Formulario de fornecedores
mx phl_for_fmt fst=@ uctab=uctab actab=actab fullinv=phl_for_fmt -all now
echo +++ Tipo de genero
mx phl_gen fst=@ uctab=uctab actab=actab fullinv=phl_gen -all now
echo +++ Tipo de idioma
mx phl_idm fst=@ uctab=uctab actab=actab fullinv=phl_idm -all now
echo +++ Areas do conhecimento
mx phl_mec fst=@ uctab=uctab actab=actab fullinv=phl_mec -all now
echo +++ Nivel arquivistico
mx phl_nda fst=@ uctab=uctab actab=actab fullinv=phl_nda -all now
echo +++ Penalidades
mx phl_pen fst=@ uctab=uctab actab=actab fullinv=phl_pen -all now
echo +++ Periodos
mx phl_per fst=@ uctab=uctab actab=actab fullinv=phl_per -all now
echo +++ Prazos e quantidades
mx phl_pqt fst=@ uctab=uctab actab=actab fullinv=phl_pqt -all now
echo +++ Procedencia
mx phl_prc fst=@ uctab=uctab actab=actab fullinv=phl_prc -all now
echo +++ Permissoes
mx phl_pwd fst=@ uctab=uctab actab=actab fullinv=phl_pwd -all now
echo +++ Relatorios personalizados
mx phl_rel fst=@ uctab=uctab actab=actab fullinv=phl_rel -all now
echo +++ Reservas
mx phl_res fst=@ uctab=uctab actab=actab fullinv=phl_res -all now
echo +++ Tipo de usuario
mx phl_rgl fst=@ uctab=uctab actab=actab fullinv=phl_rgl -all now
echo +++ Bibliotecas
mx phl_set fst=@ uctab=uctab actab=actab fullinv=phl_set -all now
echo +++ Tipo de suporte
mx phl_spt fst=@ uctab=uctab actab=actab fullinv=phl_spt -all now
echo +++ Tipo de documento
mx phl_tdo fst=@ uctab=uctab actab=actab fullinv=phl_tdo -all now
echo +++ Tipo de periodicidade
mx phl_tpr fst=@ uctab=uctab actab=actab fullinv=phl_tpr -all now
echo +++ Usuarios
mx phl_usr fst=@ uctab=uctab actab=actab fullinv=phl_usr -all now
echo +++ Formulario do usuario
mx phl_usr_fmt fst=@ uctab=uctab actab=actab fullinv=phl_usr_fmt -all now
echo +++ Vocabulario
mx phl_voc fst=@ uctab=uctab actab=actab fullinv=phl_voc -all now
start c:\phl82\tiny c:\phl82 8080
start iexplore.exe http://127.0.0.1:8080/phl82/index.html
exit
