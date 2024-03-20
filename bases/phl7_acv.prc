'd3d5d6d7d40d90d900',
,if v6:'a' 
 then
  ,if s(v5,v6)='Sa' 
    then 
      'a6~as~' 
        else 
         'a6~am~'
   ,fi,
 else
  'a6~'v6'~'
,fi,
'a3~',v3[1]^a,'~',
,(,select v40.2
 case 'pt':'a40~1~',
 case 'es':'a40~2~',
 case 'en':'a40~3~',
 case 'it':'a40~4~',
 case 'fr':'a40~5~',
 case 'Pt':'a40~1~',
 case 'Es':'a40~2~',
 case 'En':'a40~3~',
 case 'It':'a40~4~',
 case 'Fr':'a40~5~',
 elsecase 'a40~1~',
 endsel,
,)
'a103~',v3[1]^b,'~',
,select v5
 case 'L':'a5~7~'
 case 'S':'a5~16~'
 case 'E':'a5~4~'
 case 'T':'a5~21~'
 case 'V':'a5~22~'
 case 'A':'a5~1~'
 elsecase 'a5~12~'
endsel,
,if a(v22) then 'a22~9~' fi,/
,if a(v64) then 'a64~[s.d.]~' fi,
,if size(v64)=4 and a(v65) then 'a65~'v64'0000~' fi,
,if a(v66) then 'a66~[s.l.]~' fi,
,if a(v62) then 'a62~[s.n.]~' fi,
,if a(v20) and a(v38) then 'a20~[s.p.]~' fi
,if p(v7) then ('a7~^a'v7'~') fi,
,if p(v9) then ('a7~^a'v9'~') fi,
,if v90='0' then 'a90~b~' else 'a90~c~' fi,
'a998~'mfn(1)'~',