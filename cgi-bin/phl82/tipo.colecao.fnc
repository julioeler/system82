<!-- Obtem e ordena a lista das opcoes de cole��es -->
     <function name="tipo.colecao">

     <do task="search">
       <parm name="db">phl_col</parm>
       <parm name="expression">$</parm>
       <list action="delete">now</list>
       <loop>
	<list action="load" type="sort">
        <pft>,if val(v371)=0 then ,'^a',@tab_txt.pft,'^b'mfn(1)/,fi,</pft>
      </list>
      </loop>
      </do>
      <file action="close" type="database">phl_cur</file>

	<do task="list">
      <field action="define" tag="3026">Isis_Item</field>
      <loop>
	    <field action="import" tag="list">3091</field>
		<field action="replace" tag="3091" split="occ"><pft>,(v3091/),v3026/,</pft></field>
	    <field action="export" tag="3091">3091</field>
	  </loop>
    </do>
	<list action="delete">now</list>
    <field action="delete" tag="3026">ALL</field>

    <field action="export" tag="3091">3091</field>

    </function>