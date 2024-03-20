<!-- Funcao de atualiza��o da base de dados do vocabulario -->

     <function name="401">

<!-- Importa para a funcao as vari�veis de configuracao -->
     <field action="import" tag="list">87,3000</field>
     <field action="replace" split="occ" tag="87"><pft>(v87/)</pft></field>

     <list action="load" type="freq"><pft>(v87^*/,v87^s/)</pft></list>
        
     <do task="list">
       <field action="define" tag="401">Isis_Item</field>
       <loop>
       <field action="import" tag="list">3000</field>

       <flow action="jump">
        <pft>
         ,if npost(['phl_voc']'DES='v401)=0 then 'grava_voc' else 'loop' fi,
         </pft>
       </flow>

      <label>grava_voc</label>
      <file action="close" type="database">phl_voc</file>

      <do task="update">
        <parm name="db">phl_voc</parm>
        <parm name="mfn">New</parm>
        <parm name="fst"><pft>cat('phl_voc.fst')</pft></parm>
        <field action="define" tag="1003">Isis_Status</field>
        <field action="define" tag="1105">Isis_Lock</field>
        <parm name="lockid"><pft>getenv('REMOTE_ADDR'),x1,s(date).8</pft></parm>
        <update>
          <field action="import" tag="list">401,3000</field>
          <field action="add" tag="999"><pft>'^d's(date).8,'^h's(date)*9.4,'^b'v3000^2,</pft></field>
          <field action="delete" tag="list">3000</field>
          <write>Unlock</write>
        </update>
      </do>
      <file action="close" type="database">phl_voc</file>
      <label>loop</label>
    </loop>
  </do>
  <list action="delete">now</list>
  
</function>