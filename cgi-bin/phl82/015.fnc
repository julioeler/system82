<!-- Numeracao de tombo 
     26/07/2006 14:30:01 Revisado -->
     
     <function name="015">

<!-- Importa variaveis para funcao -->
     <field action="import" tag="list">3000</field>

     <field action="add" tag="600">
      <pft>,ref(['phl_set']l(['phl_set'],'ACV='v3000^1),'^a'v611^a,'^b'v612),</pft>
     </field>
     <file action="close" type="database">phl_set</file>

     <flow action="jump">
        <pft>,if v600^b='N' then 'sem_controle' fi,</pft>
     </flow>

     <field action="statusfile" tag="1091"><pft>,v3000^1'_tbo.ctl',</pft></field>
     <field action="add" tag="2002"><pft>,if v1091^s:'e' then cat(v3000^1'_tbo.ctl'),else '1' fi,</pft></field>

     <file action="create" type="output"><pft>,v3000^1'_tbo.ctl',</pft></file>
     <display><pft>,f(val(v2002)+1,0,0),</pft></display>
     <file action="close" type="output"><pft>,v3000^1'_tbo.ctl',</pft></file>

     <!--Obtem e define tamanho do tombo -->
     <!-- Zedu 200912: modificado para aumentar opcoes de quantidades de digitos -->
     <field action="replace" tag="801">
       <pft>,select v600^a
              case  '4' : f((val(v2002)),4,0)
              case  '6' : f((val(v2002)),6,0)
              case  '7' : f((val(v2002)),7,0)
              case  '8' : f((val(v2002)),8,0)
              case  '9' : f((val(v2002)),9,0)
              case '10' : f((val(v2002)),10,0)
              case '11' : f((val(v2002)),11,0)
              case '12' : f((val(v2002)),12,0)
              elsecase f((val(v2002)),5,0)
             endsel,
       </pft>
     </field>

     <field action="replace" tag="801"><pft>,replace(v801,' ','0'),</pft></field>
 
     <field action="export" tag="801">801</field>

 <label>sem_controle</label>
</function>
