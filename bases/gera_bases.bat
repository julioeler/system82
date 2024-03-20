id2i 001_cal.seq create=001_cal
id2i 001_cdu.seq create=001_cdu
id2i 001_ser_fmt.seq create=001_ser_fmt
id2i 001_tbo_fmt.seq create=001_tbo_fmt
id2i phl_tdo.seq create=phl_tdo
id2i phl_acv_fmt.seq create=phl_acv_fmt
id2i phl_cut.seq create=phl_cut
id2i phl_cnf.seq create=phl_cnf
id2i phl_for_fmt.seq create=phl_for_fmt
id2i phl_gen.seq create=phl_gen
id2i phl_mec.seq create=phl_mec
id2i phl_pwd.seq create=phl_pwd
id2i phl_rgl.seq create=phl_rgl
id2i phl_set.seq create=phl_set
id2i phl_usr_fmt.seq create=phl_usr_fmt
id2i phl_aqu.seq create=phl_aqu
id2i phl_ass.seq create=phl_ass
id2i phl_cnt.seq create=phl_cnt
id2i phl_idm.seq create=phl_idm
id2i phl_per.seq create=phl_per
id2i phl_prc.seq create=phl_prc
id2i phl_spt.seq create=phl_spt
id2i phl_tpr.seq create=phl_tpr
id2i phl_col.seq create=phl_col
id2i phl_rel.seq create=phl_rel
id2i phl_nda.seq create=phl_nda
id2i phl_cur.seq create=phl_cur
id2i phl_pqt.seq create=phl_pqt
id2i phl_giz.seq create=phl_giz

echo 1 > 001_tbo.ctl
echo 1 > phl_usr.ctl

mx null create=phl_log count=0 -all now
mx null create=phl_err count=0 -all now
mx null create=phl_idx count=0 -all now
mx null create=001_cxa count=0 "fst=1 0 v1/" fullinv=001_cxa -all now
mx null create=001_emp count=0 "fst=1 0 v1/" fullinv=001_emp -all now
mx null create=001_log count=0 "fst=1 0 v1/" fullinv=001_log -all now
mx null create=001_ser count=0 "fst=1 0 v1/" fullinv=001_ser -all now
mx null create=001_tbo count=0 "fst=1 0 v1/" fullinv=001_tbo -all now
mx null create=001_usc count=0 "fst=1 0 v1/" fullinv=001_usc -all now
mx null create=phl_acv count=0 "fst=1 0 v1/" fullinv=phl_acv -all now
mx null create=phl_cpa count=0 "fst=1 0 v1/" fullinv=phl_cpa -all now
mx null create=phl_res count=0 "fst=1 0 v1/" fullinv=phl_res -all now
mx null create=phl_usr count=0 "fst=1 0 v1/" fullinv=phl_usr -all now
mx null create=phl_voc count=0 "fst=1 0 v1/" fullinv=phl_voc -all now
mx null create=phl_for count=0 "fst=1 0 v1/" fullinv=phl_for -all now
mx null create=phl_pen count=0 "fst=1 0 v1/" fullinv=phl_pen -all now
mx null create=phl_aut count=0 "fst=1 0 v1/" fullinv=phl_aut -all now

mx 001_cal fst=@ uctab=uctab actab=actab fullinv=001_cal -all now
mx 001_cdu fst=@ uctab=uctab actab=actab fullinv=001_cdu -all now
mx 001_ser_fmt fst=@ uctab=uctab actab=actab fullinv=001_ser_fmt -all now
mx 001_tbo_fmt fst=@ uctab=uctab actab=actab fullinv=001_tbo_fmt -all now
mx phl_rel fst=@ uctab=uctab actab=actab fullinv=phl_rel -all now
mx phl_acv_fmt fst=@ uctab=uctab actab=actab fullinv=phl_acv_fmt -all now
mx phl_cut fst=@ uctab=uctab actab=actab fullinv=phl_cut -all now
mx phl_cnf fst=@ uctab=uctab actab=actab fullinv=phl_cnf -all now
mx phl_for_fmt fst=@ uctab=uctab actab=actab fullinv=phl_for_fmt -all now
mx phl_gen fst=@ uctab=uctab actab=actab fullinv=phl_gen -all now
mx phl_nda fst=@ uctab=uctab actab=actab fullinv=phl_nda -all now
mx phl_mec fst=@ uctab=uctab actab=actab fullinv=phl_mec -all now
mx phl_pwd fst=@ uctab=uctab actab=actab fullinv=phl_pwd -all now
mx phl_rgl fst=@ uctab=uctab actab=actab fullinv=phl_rgl -all now
mx phl_set fst=@ uctab=uctab actab=actab fullinv=phl_set -all now
mx phl_pqt fst=@ uctab=uctab actab=actab fullinv=phl_pqt -all now
mx phl_usr_fmt fst=@ uctab=uctab actab=actab fullinv=phl_usr_fmt -all now

mx phl_aqu fst=@ uctab=uctab actab=actab fullinv=phl_aqu -all now
mx phl_ass fst=@ uctab=uctab actab=actab fullinv=phl_ass -all now
mx phl_cnt fst=@ uctab=uctab actab=actab fullinv=phl_cnt -all now
mx phl_idm fst=@ uctab=uctab actab=actab fullinv=phl_idm -all now
mx phl_per fst=@ uctab=uctab actab=actab fullinv=phl_per -all now
mx phl_prc fst=@ uctab=uctab actab=actab fullinv=phl_prc -all now
mx phl_spt fst=@ uctab=uctab actab=actab fullinv=phl_spt -all now
mx phl_tpr fst=@ uctab=uctab actab=actab fullinv=phl_tpr -all now
mx phl_col fst=@ uctab=uctab actab=actab fullinv=phl_col -all now
mx phl_cur fst=@ uctab=uctab actab=actab fullinv=phl_cur -all now
mx phl_tdo fst=@ uctab=uctab actab=actab fullinv=phl_tdo -all now
