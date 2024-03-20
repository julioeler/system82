<!-- Obtem e ordena a lista dos periodos de permanencia do usuario -->
     <function name="tipo.periodo">

     <do task="search">
       <parm name="db">phl_per</parm>
       <parm name="expression">$</parm>
       <list action="delete">now</list>
       <loop>
        <list action="load" type="sort">
        <pft>,'^a',@tab_txt.pft,'^b'mfn(1)/,</pft>
      </list>
      </loop>
      </do>
      <file action="close" type="database">phl_per</file>

	<do task="list">
      <field action="define" tag="3026">Isis_Item</field>
      <loop>
	    <field action="import" tag="list">3101</field>
		<field action="replace" tag="3101" split="occ"><pft>,(v3101/),v3026/,</pft></field>
	    <field action="export" tag="3101">3101</field>	
	  </loop>
    </do>
	<list action="delete">now</list>
    <field action="delete" tag="3026">ALL</field>

    <field action="export" tag="3101">3101</field>

    </function>