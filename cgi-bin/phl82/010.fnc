<!-- Gera cookie -->

     <function name="010">

     <!-- Importa variaveis para uso da funcao -->
          <field action="import" tag="list">3000,3003</field>
          
          <!--
          ^a - idioma
          ^b - cipar
          ^c - copyright
          ^d - data da conexao
          ^e - REMOTE_ADDR
          ^f - SERVER_SOFTWARE
          ^g - SERVER_PORT
          ^h - REQUEST_METHOD
          ^i - PATH_INFO
          ^j - PATH_TRANSLATED
          ^k - SCRIPT_NAME
          ^l - REMOTE_HOST
          ^1 - biblioteca do funcionário
          ^2 - matricula do usuário ou login do funcionário
          ^3 - status
          ^4 - MFN: phl_pwd
          ^5 - senha do usuário
          ^6 - SERVER_NAME
          ^7 - Registro da biblioteca
          -->

      <file action="close" type="database">phl_idx</file>

      <do task="update">
       <parm name="db">phl_idx</parm>
       <parm name="mfn">New</parm>
       <field action="define" tag="1105">Isis_Lock</field>
       <parm name="lockid"><pft>getenv('REMOTE_ADDR'),x1,s(date).8</pft></parm>
       <field action="define" tag="1003">Isis_Status</field>
       <update>
         <field action="import" tag="list">3000,3003</field>
         <field action="replace" tag="3000">
         <pft>,
         '^a',v3000^a,
         '^b',v3000^b,
         '^c',v3000^c,
         '^d',v3000^d,
         '^e',v3000^e,
         '^f',getenv('SERVER_SOFTWARE'),
         '^g',getenv('SERVER_PORT'),
         '^h',getenv('REQUEST_METHOD'),
         '^i',getenv('PATH_INFO'),
         '^j',getenv('PATH_TRANSLATED'),
         '^k',getenv('SCRIPT_NAME'),
         '^l',getenv('REMOTE_HOST'),
              v3003,
         '^6'getenv('SERVER_NAME')
         '^7'ref(['phl_set']l(['phl_set']'ACV='v3003^1),v638)
         </pft>
         </field>
         <field action="export" tag="list">3000</field>
         <field action="delete" tag="list">3003</field>
         <write>Unlock</write>
         
         <!-- verifica o modo de armazenamento da referencia ao registro de conexao -->
              <flow action="jump">
                <pft>
                  ,if ref(['phl_cnf']1,v219)='C' then 'cookie' else 'tempfile' fi,
                </pft>
              </flow>
              <flow action="exit">1</flow>

         <!-- Armazena dados da sessao corrente em cookie no cliente -->
              <label>cookie</label>
              <display><pft>'<script>document.cookie = "phl=^m'mfn'^c'v3000^b'";</script>'</pft></display>
              <flow action="jump">saida</flow>

         <!-- Armazena dados da sessao corrente em tempfile do servidor -->
              <label>tempfile</label>
              <file action="create" type="tempfile">4001</file>
              <file action="append" type="output"><pft>,v4001,</pft></file>
              <display><pft>,'^m'mfn'^c'v3000^b,</pft></display>
              <file action="close" type="output"><pft>,v4001,</pft></file>
              <field action="export" tag="list">4001</field>

       <label>saida</label>
       </update>
     </do>
          
     <!-- Exporta variável 3000 para uso do script -->
          <field action="export" tag="list">3000,4001</field>

</function>