'd700d713d723d730d1234'
'a700~'v701'~',
'a713~',mhu,v713,mpl'~',
,select v723.1
case 'A':'a723~1~'  /*Academico*/
case 'B':'a723~12~' /*Biblioteca*/
case 'C':           /*Encadernacao*/
case 'D':'a723~15~' /*Desligado*/
case 'E':'a723~4~'  /*Especial*/
case 'F':'a723~3~'  /*Funcionario*/
case 'G':'a723~5~'  /**/
case 'N':'a723~11~' /*Nucleo*/
case 'O':'a723~5~'  /*Outro*/
case 'P':'a723~2~'  /*Professor*/
case 'S':'a723~10~' /*Setor*/
elsecase 'a723~5~'  /*Outro*/
endsel,
'a730~001~',
if a(v998) then 'a998~'mfn(1)'~' fi,