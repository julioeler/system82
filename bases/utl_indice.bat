@echo off
cls
echo ==========================================================
echo                  Atualizacao do PHL8.2
echo ==========================================================
echo             *** Seja paciente. Aguarde! ***
echo ==========================================================
retag 001_cal unlock tell=1000
retag 001_cdu unlock tell=1000
retag 001_cxa unlock tell=10
retag 001_emp unlock tell=100
retag 001_log unlock tell=100
retag 001_ser unlock tell=100
retag 001_ser_fmt unlock tell=10
retag 001_tbo unlock tell=1000
retag 001_tbo_fmt unlock tell=10
retag 001_usc unlock tell=100

retag phl_acv unlock tell=1000
retag phl_acv_fmt unlock tell=10
retag phl_aqu unlock tell=10
retag phl_ass unlock tell=10
retag phl_aut unlock tell=1000
retag phl_cnf unlock tell=10
retag phl_cnt unlock tell=10
retag phl_cpa unlock tell=100
retag phl_col unlock tell=10
retag phl_cur unlock tell=100
retag phl_cut unlock tell=100
retag phl_for unlock tell=100
retag phl_for_fmt unlock tell=10
retag phl_gen unlock tell=10
retag phl_giz unlock tell=10
retag phl_idm unlock tell=10
retag phl_idx unlock tell=100
retag phl_mec unlock tell=10
retag phl_nda unlock tell=10
retag phl_pen unlock tell=10
retag phl_per unlock tell=10
retag phl_pqt unlock tell=10
retag phl_prc unlock tell=10
retag phl_pwd unlock tell=10
retag phl_rel unlock tell=10
retag phl_res unlock tell=100
retag phl_rgl unlock tell=10
retag phl_set unlock tell=10
retag phl_spt unlock tell=10
retag phl_usr unlock tell=100
retag phl_usr_fmt unlock tell=10
retag phl_tdo unlock tell=10
retag phl_tpr unlock tell=10
retag phl_voc unlock tell=1000
echo ==========================================================
echo +++ Iniciando processo de atualizacao dos indices
echo ==========================================================
echo +++ Calendario
mx 001_cal fst=@ uctab=uctab actab=actab fullinv=001_cal tell=1000 -all now
echo +++ Tabela de classificacao
mx 001_cdu fst=@ uctab=uctab actab=actab fullinv=001_cdu tell=1000 -all now
echo +++ Livro caixa
mx 001_cxa fst=@ uctab=uctab actab=actab fullinv=001_cxa tell=100 -all now
echo +++ Emprestimos
mx 001_emp fst=@ uctab=uctab actab=actab fullinv=001_emp tell=100 -all now
echo +++ Historicos
mx 001_log fst=@ uctab=uctab actab=actab fullinv=001_log tell=100 -all now
echo +++ Kardex
mx 001_ser fst=@ uctab=uctab actab=actab fullinv=001_ser tell=100 -all now
echo +++ Formulario do kardex
mx 001_ser_fmt fst=@ uctab=uctab actab=actab fullinv=001_ser_fmt tell=10 -all now
echo +++ Tombos
mx 001_tbo fst=@ uctab=uctab actab=actab fullinv=001_tbo tell=1000 -all now
echo +++ Formulario do tombo
mx 001_tbo_fmt fst=@ uctab=uctab actab=actab fullinv=001_tbo_fmt tell=10 -all now
echo +++ Uso da colecao
mx 001_usc fst=@ uctab=uctab actab=actab fullinv=001_usc tell=100 -all now
echo +++ Catalogo
mx phl_acv fst=@ uctab=uctab actab=actab fullinv=phl_acv tell=1000 -all now
echo +++ Formulario do catalogo
mx phl_acv_fmt fst=@ uctab=uctab actab=actab fullinv=phl_acv_fmt tell=10 -all now
echo +++ Tipo de aquisicao
mx phl_aqu fst=@ uctab=uctab actab=actab fullinv=phl_aqu tell=10 -all now
echo +++ Tipo de assinatura
mx phl_ass fst=@ uctab=uctab actab=actab fullinv=phl_ass tell=10 -all now
echo +++ Autoridades
mx phl_aut fst=@ uctab=uctab actab=actab fullinv=phl_aut tell=1000 -all now
echo +++ Sistema
mx phl_cnf fst=@ uctab=uctab actab=actab fullinv=phl_cnf tell=10 -all now
echo +++ Tipo de conteudo
mx phl_cnt fst=@ uctab=uctab actab=actab fullinv=phl_cnt tell=10 -all now
echo +++ Tipo de colecao
mx phl_col fst=@ uctab=uctab actab=actab fullinv=phl_col tell=10 -all now
echo +++ Sugestoes de compra
mx phl_cpa fst=@ uctab=uctab actab=actab fullinv=phl_cpa tell=100 -all now
echo +++ Tipo de curso
mx phl_cur fst=@ uctab=uctab actab=actab fullinv=phl_cur tell=100 -all now
echo +++ Fornecedores
mx phl_for fst=@ uctab=uctab actab=actab fullinv=phl_for tell=100 -all now
echo +++ Formulario de fornecedores
mx phl_for_fmt fst=@ uctab=uctab actab=actab fullinv=phl_for_fmt tell=10 -all now
echo +++ Tipo de genero
mx phl_gen fst=@ uctab=uctab actab=actab fullinv=phl_gen tell=10 -all now
echo +++ Tipo de idioma
mx phl_idm fst=@ uctab=uctab actab=actab fullinv=phl_idm tell=10 -all now
echo +++ Areas do conhecimento
mx phl_mec fst=@ uctab=uctab actab=actab fullinv=phl_mec tell=10 -all now
echo +++ Nivel arquivistico
mx phl_nda fst=@ uctab=uctab actab=actab fullinv=phl_nda tell=10 -all now
echo +++ Penalidades
mx phl_pen fst=@ uctab=uctab actab=actab fullinv=phl_pen tell=10 -all now
echo +++ Periodos
mx phl_per fst=@ uctab=uctab actab=actab fullinv=phl_per tell=10 -all now
echo +++ Prazos e quantidades
mx phl_pqt fst=@ uctab=uctab actab=actab fullinv=phl_pqt tell=10 -all now
echo +++ Procedencia
mx phl_prc fst=@ uctab=uctab actab=actab fullinv=phl_prc tell=10 -all now
echo +++ Permissoes
mx phl_pwd fst=@ uctab=uctab actab=actab fullinv=phl_pwd tell=10 -all now
echo +++ Relatorios personalizados
mx phl_rel fst=@ uctab=uctab actab=actab fullinv=phl_rel tell=10 -all now
echo +++ Reservas
mx phl_res fst=@ uctab=uctab actab=actab fullinv=phl_res tell=100 -all now
echo +++ Tipo de usuario
mx phl_rgl fst=@ uctab=uctab actab=actab fullinv=phl_rgl tell=10 -all now
echo +++ Bibliotecas
mx phl_set fst=@ uctab=uctab actab=actab fullinv=phl_set tell=10 -all now
echo +++ Tipo de suporte
mx phl_spt fst=@ uctab=uctab actab=actab fullinv=phl_spt tell=10 -all now
echo +++ Tipo de documento
mx phl_tdo fst=@ uctab=uctab actab=actab fullinv=phl_tdo tell=10 -all now
echo +++ Tipo de periodicidade
mx phl_tpr fst=@ uctab=uctab actab=actab fullinv=phl_tpr tell=10 -all now
echo +++ Usuarios
mx phl_usr fst=@ uctab=uctab actab=actab fullinv=phl_usr tell=100 -all now
echo +++ Formulario do usuario
mx phl_usr_fmt fst=@ uctab=uctab actab=actab fullinv=phl_usr_fmt tell=10 -all now
echo +++ Vocabulario
mx phl_voc fst=@ uctab=uctab actab=actab fullinv=phl_voc tell=1000 -all now
rem start c:\phl82\tiny c:\phl82 8080
rem start iexplore.exe http://127.0.0.1:8080/phl82/index.html
exit
