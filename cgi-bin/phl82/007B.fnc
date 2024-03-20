<!-- Extrato do usuario -->

     <function name="007">

<!-- Importa variaveis para a funcao -->
     <field action="import" tag="list">951,3000,4001,7003</field>
 
<!-- Verifica emprestimos em todas as bibliotecas -->
     <do task="mfnrange">
       <parm name="db">phl_set</parm>
       <loop>
         <field action="import" tag="951">951</field>
         
             <do task="search">
               <parm name="db"><pft>,v601'_emp',</pft></parm>
               <parm name="expression"><pft>,'USR='v951,</pft></parm>
                 <loop>
                 <field action="import" tag="list">601</field>
                 <list action="load" type="sort">
                   <pft>,
                     '^d'v900^d,
                     '^y'v601,
                     '^oemp',
                     '^t'v900^t,
                     '^a'v900^a,
                     '^n'mfn(1),
                     '^v'v900^v/,
                    </pft>
                 </list>
                 </loop>
             </do>
             <file action="close" type="database"><pft>,v601'_emp',</pft></file>
             </loop>
          </do>
      <file action="close" type="database">phl_set</file>

 <!-- Imprime extrato -->        
      <!-- cabecalho -->
      <!-- <display><htmlpft><pft>,ref(['tab_fmx']120,v4),</pft></htmlpft></display> -->
      <display><htmlpft><pft>
'<!-- FMX000120 -->'/
'<html>'/
'<head>'/
'<style type="text/css">'
'<!--'/
'body {scrollbar-face-color:'ref(['phl_cnf']1,v232,)'; scrollbar-highlight-color:'ref(['phl_cnf']1,v234,)'; scrollbar-3dlight-color:'ref(['phl_cnf']1,v234,)'; scrollbar-darkshadow-color:'ref(['phl_cnf']1,v234,)'; scrollbar-shadow-color:'ref(['phl_cnf']1,v234,)'; scrollbar-arrow-color:'ref(['phl_cnf']1,v234,)'; scrollbar-track-color:'ref(['phl_cnf']1,v234,)'; background-color:'ref(['phl_cnf']1,v234,)'; font-family:'ref(['phl_cnf']1,v235)'; color:'ref(['phl_cnf']1,v233)'; font-size: 12px;}'/
'.titulo {text-align: center; padding:10px; margin:10px auto 20px auto; margin-left: 10px; background-color:'ref(['phl_cnf']1,v236,)'; FONT-WEIGHT: bold; border: solid 1px;}'/
'.botao {background-color:'ref(['phl_cnf']1,v236,)'; FONT-WEIGHT: bold; font-size: 10px; padding:2px; margin-top: 10px; color:'ref(['phl_cnf']1,v233,)';}'/
'table {font-family:'ref(['phl_cnf']1,v235)'; color: #000000; font-size: 12px;}'/
'a {color: 'ref(['phl_cnf']1,v240,)'; font-weight: bold; text-decoration: none;}'/
'a:hover {color: 'ref(['phl_cnf']1,v241,)';}'/
'-->'/
'</style>'/
'</head>'/
'<table align="left" border="0">'/
'<tr><td align="left">'/
'<center><b>',ref(['phl_set']l(['phl_set'],'ACV=',if p(v3000^1) then v3000^1 else '001',fi,),v602),'</b><br><br></center>'/
,'Nome: ',ref(['phl_usr']l(['phl_usr'],'USR='v951),v705,"&nbsp;&nbsp;&nbsp;[ "v701" ]",),'<br>'/
,'Emitido em: 's(date)*6.2,'.'s(date)*4.2,'.',s(date)*0.4'<br><br>'/
'<table border="0" width="100%" cellspacing="1">'/
      </pft></htmlpft></display>

      <!-- detalhe -->
      <do task="list">
        <field action="define" tag="1001">Isis_Current</field>
        <field action="define" tag="1002">Isis_Itens</field>
        <field action="define" tag="1">Isis_Item</field>
        <display><pft>,putenv('multa=0'),</pft></display>
        <loop>
          <field action="import" tag="list">951,3000,7001/7005</field>
          <display><pft>
            /*,ref(['tab_fmx']119,v4),*/
'<!-- FMX000119 (parte) -->'/
(
,if v1^o='emp' then
,,,'<tr>'/
,,,'<td width="25%" align="left" valign="top" style="border-bottom-style:solid; border-width:2px;">',v1^t,'</td>'/
,,,'<td align="left" valign="top" style="border-bottom-style:solid; border-width:2px;">',ref(['phl_acv']l(['phl_acv'],'TIT='v1^a),if v6:'m' then v18 else v30 fi,),'</td>'/
,,,'</tr>'/
,fi
,)
          </pft></display>
        </loop>
      </do>

      <!-- rodape -->
      <!-- <display><htmlpft><pft>,ref(['tab_fmx']118,v4),</pft></htmlpft></display> -->
      <display><htmlpft><pft>
'<!-- FMX000118 -->'/
'</table></div><center>&nbsp;</center>'/
'<center><a href="javascript:print()">','Imprimir</a>'/
'<br>',ref(['phl_set']l(['phl_set'],'ACV=',if p(v3000^1) then v3000^1 else '001',fi,),v602),'</center>'/
'</tr></td></table>'/
'</body></html>'/
      </pft></htmlpft></display>
         
</function>
