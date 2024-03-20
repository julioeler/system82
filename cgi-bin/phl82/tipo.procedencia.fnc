<!-- Obtem e ordena a lista das opcoes de procedencia -->
     <function name="tipo.procedencia">

     <do task="search">
       <parm name="db">phl_prc</parm>
       <parm name="expression">$</parm>
       <list action="delete">now</list>
       <loop>
	<list action="load" type="sort">
        <pft>,'^a',@tab_txt.pft,'^b'mfn(1)/,</pft>
      </list>
      </loop>
      </do>
      <file action="close" type="database">phl_prc</file>

	<do task="list">
      <field action="define" tag="3026">Isis_Item</field>
      <loop>
	    <field action="import" tag="list">3088</field>
		<field action="replace" tag="3088" split="occ"><pft>,(v3088/),v3026/,</pft></field>
	    <field action="export" tag="3088">3088</field>	
	  </loop>
    </do>
	<list action="delete">now</list>
    <field action="delete" tag="3026">ALL</field>

    <field action="export" tag="3088">3088</field>

    </function>