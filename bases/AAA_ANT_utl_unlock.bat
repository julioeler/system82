@echo off
cls
echo ==========================================================
echo           Desbloquear bases de dados do PHL8.2
echo ==========================================================
echo             *** Seja paciente. Aguarde! ***
echo ==========================================================
@echo on

retag I:\Ant\bases\001_cal unlock tell=1000
retag I:\Ant\bases\001_cdu unlock tell=1000
retag I:\Ant\bases\001_cxa unlock tell=10
retag I:\Ant\bases\001_emp unlock tell=100
retag I:\Ant\bases\001_log unlock tell=100
retag I:\Ant\bases\001_ser unlock tell=100
retag I:\Ant\bases\001_ser_fmt unlock tell=10
retag I:\Ant\bases\001_tbo unlock tell=1000
retag I:\Ant\bases\001_tbo_fmt unlock tell=10
retag I:\Ant\bases\001_usc unlock tell=100

retag I:\Ant\bases\phl_acv unlock tell=1000
retag I:\Ant\bases\phl_acv_fmt unlock tell=10
retag I:\Ant\bases\phl_aqu unlock tell=10
retag I:\Ant\bases\phl_ass unlock tell=10
retag I:\Ant\bases\phl_aut unlock tell=1000
retag I:\Ant\bases\phl_cnf unlock tell=10
retag I:\Ant\bases\phl_cnt unlock tell=10
retag I:\Ant\bases\phl_cpa unlock tell=100
retag I:\Ant\bases\phl_col unlock tell=10
retag I:\Ant\bases\phl_cur unlock tell=100
retag I:\Ant\bases\phl_cut unlock tell=100
retag I:\Ant\bases\phl_for unlock tell=100
retag I:\Ant\bases\phl_for_fmt unlock tell=10
retag I:\Ant\bases\phl_gen unlock tell=10
retag I:\Ant\bases\phl_giz unlock tell=10
retag I:\Ant\bases\phl_idm unlock tell=10
retag I:\Ant\bases\phl_idx unlock tell=100
retag I:\Ant\bases\phl_mec unlock tell=10
retag I:\Ant\bases\phl_nda unlock tell=10
retag I:\Ant\bases\phl_pen unlock tell=10
retag I:\Ant\bases\phl_per unlock tell=10
retag I:\Ant\bases\phl_pqt unlock tell=10
retag I:\Ant\bases\phl_prc unlock tell=10
retag I:\Ant\bases\phl_pwd unlock tell=10
retag I:\Ant\bases\phl_rel unlock tell=10
retag I:\Ant\bases\phl_res unlock tell=100
retag I:\Ant\bases\phl_rgl unlock tell=10
retag I:\Ant\bases\phl_set unlock tell=10
retag I:\Ant\bases\phl_spt unlock tell=10
retag I:\Ant\bases\phl_usr unlock tell=100
retag I:\Ant\bases\phl_usr_fmt unlock tell=10
retag I:\Ant\bases\phl_tdo unlock tell=10
retag I:\Ant\bases\phl_tpr unlock tell=10
retag I:\Ant\bases\phl_voc unlock tell=10
@echo off
