'd3d5d7d22d26d40d71d79d820d85d91d92d103d105d114d116d117d118d119d1234',
'a3~'v3^a'~',/
'a103~'v3^b'~',/
,if size(v64)=4 and a(v65) then 'a65~'v64'0000~' fi,
/* 20110712 Zedu - suspenso criar campo - ,if a(v64) then 'a64~[s.d.]~' fi, */
/* 20110712 Zedu - suspenso criar campo - ,if a(v66) then 'a66~[s.l.]~' fi, */
/* 20110712 Zedu - suspenso criar campo - ,if a(v62) then 'a62~[s.n.]~' fi, */
/* 20110712 Zedu - suspenso criar campo - ,if a(v20) and a(v38) then 'a20~[s.p.]~' fi */
'a998~'mfn(1)'~'
,if p(v7) then ('a7~^a'v7'~') fi,

,select v5.1
case 'A':'a5~1~'
case 'B':'a5~27~'
case 'C':'a5~2~'
case 'D':'a5~13~'
case 'E':'a5~4~'
case 'F':'a5~5~'
case 'G':'a5~9~'
case 'H':'a5~18~'
case 'J':'a5~6~'
case 'K':'a5~29~'
case 'L':'a5~7~'
case 'N':'a5~10~'
case 'O':'a5~28~'
case 'P':'a5~14~'
case 'R':'a5~17~'
case 'S':'a5~16~'
case 'T':'a5~21~'
case 'U':'a5~12~'
case 'V':'a5~22~'
case 'W':'a5~32~'
case 'X':'a5~19~'
case 'Y':'a5~30~'
case 'Z':'a5~31~'
elsecase 'a5~12~'
endsel,

(,if v40^b<>'' then
   ,if v40.2='Pt' then 'a40~1~' fi
   ,if v40.2='Es' then 'a40~2~' fi
   ,if v40.2='En' then 'a40~3~' fi
   ,if v40.2='It' then 'a40~4~' fi
   ,if v40.2='Fr' then 'a40~5~' fi
   ,if v40.2='De' then 'a40~6~' fi
   ,if v40.2='Ja' then 'a40~7~' fi
   ,if v40.2='La' then 'a40~8~' fi
   ,if v40.2='Ou' then 'a40~9~' fi
   ,if v40.2='??' then 'a40~10~' fi
   ,if v40.2='Ru' then 'a40~11~' fi
   ,if v40.2='Ma' then 'a40~12~' fi
  fi,)
/*,if a(v40) then 'a40~1~' fi, 20110713 - suspenso "portugues" como default */

,select v22.1
case 'B':'a22~41~'
case 'C':'a22~3~'
case 'D':'a22~4~'
case 'E':'a22~5~'
case 'F':'a22~6~'
case 'G':'a22~7~'
case 'H':'a22~8~'
case 'J':'a22~10~'
case 'K':'a22~11~'
case 'L':'a22~12~'
case 'M':'a22~13~'
elsecase /*'a22~9~' 20110713 - suspenso "impresso" como default */
endsel,

,if p(v71) then
,select v71.1
case 'A':'a71~1~'
case 'B':'a71~2~'
case 'C':'a71~3~'
case 'D':'a71~5~'
case 'E':'a71~4~'
case 'F':'a71~6~'
case 'G':'a71~10~'
case 'H':'a71~11~'
case 'I':'a71~14~'
case 'J':'a71~15~'
case 'K':'a71~16~'
case 'L':'a71~18~'
case 'M':'a71~19~'
case 'N':'a71~34~'
case 'O':'a71~23~'
case 'P':'a71~28~'
case 'Q':'a71~12~'
case 'R':'a71~27~'
case 'S':'a71~22~'
case 'T':'a71~21~'
elsecase 'a71~42~'
endsel,
,fi,

,if p(v26) then
,select v26.1
case 'F':'a26~4~'
case 'M':'a26~3~'
case 'R':'a26~1~'
case 'V':'a26~22~'
elsecase 
endsel,
,fi,

,if size(v85)>1 then 'a85~'mhu,v85,mpl'~' fi,
,if p(v91) then ('a81~'v91'~') fi,
,if p(v92) then ('a80~'v92'~') fi,
,if p(v103) then ('a114~'v103'~') fi,
,if p(v105) then ('a116~'v105'~') fi,
,if p(v114) then ('a36~'v114'~') fi,
,if p(v116) then ('a37~'v116'~') fi,
,if p(v117) then ('a97~'v117'~') fi,
,if p(v118) then ('a98~'v118'~') fi,
,if p(v119) then ('a99~'v119'~') fi,
