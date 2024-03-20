<!-- Grava Arquivo de log -->

     <function name="005">

     <field action="import" tag="list">1/950,999,3000,4001,9998,9900,7003</field>

     <label>grava_log</label>
     
     <!-- 30/09/2008 06:16:49 --><file action="close" type="database">phl_log</file>

     <do task="update">
       <parm name="db">phl_log</parm>
       <parm name="mfn">New</parm>
       <!-- 30/09/2008 06:16:49 --><field action="define" tag="1105">Isis_Lock</field>
       <!-- 30/09/2008 06:16:49 --><parm name="expire">60</parm>
       <!-- 30/09/2008 06:16:49 --><parm name="lockid"><pft>getenv('REMOTE_ADDR'),x1,v7003.8</pft></parm>
       <field action="define" tag="9996">Isis_Status</field>
       <update>
         <field action="import" tag="list">1/950,999,3000,</field>
         <field action="import" tag="9998">9998</field>
         <write>Unlock</write>
       </update>
     </do>
     <file action="close" type="database">phl_log</file>
     
     <field action="statusdb" tag="1090"><pft>,v3000^x,</pft></field>
     
     <flow action="jump">
       <pft>
         if val(v3000^w)<>0 then 'grava_erro' else 'fim' fi,
       </pft>
     </flow>
     <flow action="exit">1</flow>

     <label>grava_erro</label>
     <!-- 30/09/2008 06:16:49 --><file action="close" type="database">phl_err</file>
     <do task="update">
       <parm name="db">phl_err</parm>
       <parm name="mfn">New</parm>
       <!-- 30/09/2008 06:16:49 --><field action="define" tag="1105">Isis_Lock</field>
       <!-- 30/09/2008 06:16:49 --><parm name="expire">60</parm>
       <!-- 30/09/2008 06:16:49 --><parm name="lockid"><pft>getenv('REMOTE_ADDR'),x1,s(date).8</pft></parm>
       <field action="define" tag="9997">Isis_Status</field>
       <update>
         <field action="import" tag="list">,1090,3000,</field>
         <field action="add" tag="1"><pft>,'^a'v3000^z,'^b'v3000^x,'^c'v3000^y,'^d'v3000^w,</pft></field>
         <field action="add" tag="2"><pft>,v1090,</pft></field>
         <field action="delete" tag="list">1090,3000</field>
         <write>Unlock</write>
       </update>
     </do>
     <file action="close" type="database">phl_err</file>

<!-- Encerra funcao -->
     <label>fim</label>
     </function>
