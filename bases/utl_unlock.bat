@echo off
cls
echo ==========================================================
echo           Desbloquear bases de dados do PHL8.2
echo ==========================================================
echo             *** Seja paciente. Aguarde! ***
echo ==========================================================
@echo on

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
retag phl_voc unlock tell=10
@echo off
