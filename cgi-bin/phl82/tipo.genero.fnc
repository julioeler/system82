<!-- Obtem e ordena a lista das opcoes genero -->
     <function name="tipo.genero">

     <do task="search">
       <parm name="db">phl_gen</parm>
       <parm name="expression">$</parm>
       <list action="delete">now</list>
       <loop>
	<list action="load" type="sort">
        <pft>,'^a',@tab_txt.pft,'^b'mfn(1)/,</pft>
      </list>
      </loop>
      </do>
      <file action="close" type="database">phl_gen</file>

	<do task="list">
      <field action="define" tag="3026">Isis_Item</field>
      <loop>
	    <field action="import" tag="list">3099</field>
		<field action="replace" tag="3099" split="occ"><pft>,(v3099/),v3026/,</pft></field>
	    <field action="export" tag="3099">3099</field>
	  </loop>
    </do>
	<list action="delete">now</list>
    <field action="delete" tag="3026">ALL</field>

    <field action="export" tag="3099">3099</field>

    </function>