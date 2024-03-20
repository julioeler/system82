'd3d5d7d22d26d40d71d79d820d85d1234',
'a3~'v3^a'~',/
'a103~'v3^b'~',/
,if a(v64) then 'a64~[s.d.]~' fi,
,if size(v64)=4 and a(v65) then 'a65~'v64'0000~' fi,
,if a(v66) then 'a66~[s.l.]~' fi,
,if a(v62) then 'a62~[s.n.]~' fi,
,if a(v20) and a(v38) then 'a20~[s.p.]~' fi
'a998~'mfn(1)'~'
,if p(v7) then ('a7~^a'v7'~') fi,
,select v5.1
case 'S':'a5~16~'
case 'L':'a5~7~'
case 'T':'a5~21~'
case 'E':'a5~4~'
case 'C':'a5~2~'
case 'A':'a5~1~'
case 'F':'a5~5~'
case 'J':'a5~6~'
case 'G':'a5~9~'
case 'U':'a5~12~'
case 'V':'a5~22~'
case 'X':'a5~19~'
elsecase 'a5~12~'
endsel,
(,if v40^b<>'' then
   ,if v40.2='Pt' then 'a40~1~' fi
   ,if v40.2='Es' then 'a40~2~' fi
   ,if v40.2='En' then 'a40~3~' fi
   ,if v40.2='Fr' then 'a40~5~' fi
   ,if v40.2='It' then 'a40~4~' fi
  fi,)
,if a(v40) then 'a40~1~' fi,

,select v22.1
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
elsecase 'a22~9~'
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
elsecase 'a71~~'
endsel,
,fi,
,if size(v85)>1 then 'a85~'mhu,v85,mpl'~' fi,
