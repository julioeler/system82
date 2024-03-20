<!-- Funcao que obtem dados sobre a biblioteca -->

     <function name="600">

<!-- Importa para a funcao as vari�veis de configuracao -->
     <field action="import" tag="list">3000</field>

     <!-- Carrega na vari�vel 600 informacoes sobre a biblioteca
           600^a = Endere�o da biblioteca
           600^b = Cidade - Estado
           600^c = CEP
           600^d = Logotipo
           600^n = Nome da biblioteca 
           600^r = Nome do bibliotecario responsavel 
           600^e = E-mail da biblioteca
           600^f = Telefone da biblioteca -->
          <field action="add" tag="600">
            <pft>
              ,ref(['phl_set']l(['phl_set'],'ACV='v3000^1),
                '^a'v603,
                '^b'v604," - "v605,
                '^c'v606,
                '^d'v618,
                '^n'v602,
                '^r'v609,
                '^e'v608,
                '^f'v607,
              ),
            </pft>
          </field>
          <file action="close" type="database">phl_set</file>
          
       <field action="replace" tag="600"><pft>,replace(v600,'�','c'),</pft></field>
       <field action="replace" tag="600"><pft>,replace(v600,'&','e'),</pft></field>
       <field action="replace" tag="600"><pft>,replace(v600,'�','a'),</pft></field>
       <field action="replace" tag="600"><pft>,replace(v600,'�','a'),</pft></field>
       <field action="replace" tag="600"><pft>,replace(v600,'�','A'),</pft></field>
       <field action="replace" tag="600"><pft>,replace(v600,'�','a'),</pft></field>
       <field action="replace" tag="600"><pft>,replace(v600,'�','a'),</pft></field>
       <field action="replace" tag="600"><pft>,replace(v600,'�','e'),</pft></field>
       <field action="replace" tag="600"><pft>,replace(v600,'�','E'),</pft></field>
       <field action="replace" tag="600"><pft>,replace(v600,'�','o.'),</pft></field>
       <field action="replace" tag="600"><pft>,replace(v600,'�','e'),</pft></field>
       <field action="replace" tag="600"><pft>,replace(v600,'�','i'),</pft></field>
       <field action="replace" tag="600"><pft>,replace(v600,'�','o'),</pft></field>
       <field action="replace" tag="600"><pft>,replace(v600,'�','o'),</pft></field>
       <field action="replace" tag="600"><pft>,replace(v600,'�','o'),</pft></field>
       <field action="replace" tag="600"><pft>,replace(v600,'�','u'),</pft></field>
       <field action="replace" tag="600"><pft>,replace(v600,'�','u'),</pft></field>
       <field action="replace" tag="600"><pft>,replace(v600,'�','u'),</pft></field>
       <field action="replace" tag="600"><pft>,replace(v600,'�','I'),</pft></field>
       <field action="replace" tag="600"><pft>,replace(v600,'�','a.'),</pft></field>
       
       <field action="export" tag="600">600</field>
       
</function>