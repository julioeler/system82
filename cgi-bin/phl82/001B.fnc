<!-- Armazena variaveis do cliente -->

     <function name="001">
     
<!-- Importa nome do arquivo temporario quando houver -->
     <field action="cgi" tag="4001">tmp</field>
     <field action="replace" tag="4001"><pft>,replace(v4001,'\','/'),</pft></field>

<!-- verifica a modalidade utilizada para armazenar dados da conexao -->
     <flow action="jump">
       <pft>,if v4001<>'' then 'tempfile' else 'cookie' fi,</pft>
     </flow>
     <flow action="exit">1</flow>

<!-- funcao que armazena dados sobre a sessao corrente em cookie -->

     <label>cookie</label>
     <field action="add" tag="3009"><pft>,getenv('HTTP_COOKIE'),</pft></field>
     <field action="replace" tag="3009" split="occ"><pft>,replace(v3009,'; ',s('',#)),</pft></field>
     <field action="replace" tag="3009" split="occ"><pft>,(if v3009.4='phl=' then v3009*4 fi,),</pft></field>
     <flow action="jump">carrega_variaveis_conexao</flow>

<!-- funcao que armazena os dados da sessao corrente em tempfile -->
     <label>tempfile</label>
     <!-- <field action="add" tag="3009"><pft>,cat(v4001),</pft></field> 20110804 Zedu - muda de conteudo do tmp para tmp parametro-->
     <field action="add" tag="3009"><pft>,v4001,</pft></field>
     
     <label>carrega_variaveis_conexao</label>
     <parm name="cipar"><pft>,cat(v3009^b),</pft></parm>
     <field action="add" tag="3000"><pft>,v3009,</pft></field>
     <display><pft>,putenv('cod.idioma='v3000^a),</pft></display>
     
<!-- 26/10/2008 16:51:20 
     funcao que define ano,mes,dia e hora com base no fuso horario do servidor -->
     <field action="replace" tag="7003">
       <pft>,
        select ref(['phl_set']val(s(if p(v3000^1) then v3000^1 else '001',fi,)),v644)
         case '-9':,datex(seconds(date)-(9*3600)),
         case '-8':,datex(seconds(date)-(8*3600)),
         case '-7':,datex(seconds(date)-(7*3600)),
         case '-6':,datex(seconds(date)-(6*3600)),
         case '-5':,datex(seconds(date)-(5*3600)),
         case '-4':,datex(seconds(date)-(4*3600)),
         case '-3':,datex(seconds(date)-(3*3600)),
         case '-2':,datex(seconds(date)-(2*3600)),
         case '-1':,datex(seconds(date)-3600),
         case '+0':,s(date),
         case '+1':,datex(seconds(date)+3600),
         case '+2':,datex(seconds(date)+(2*3600)),
         case '+3':,datex(seconds(date)+(3*3600)),
         case '+4':,datex(seconds(date)+(4*3600)),
         case '+5':,datex(seconds(date)+(5*3600)),
         case '+6':,datex(seconds(date)+(6*3600)),
         case '+7':,datex(seconds(date)+(7*3600)),
         case '+8':,datex(seconds(date)+(8*3600)),
         case '+9':,datex(seconds(date)+(9*3600)),
         case '+10':,datex(seconds(date)+(10*3600)),
         case '+11':,datex(seconds(date)+(11*3600)),
         case '+12':,datex(seconds(date)+(12*3600)),
         case '+13':,datex(seconds(date)+(13*3600)),
         case '+14':,datex(seconds(date)+(14*3600)),
         case '+15':,datex(seconds(date)+(15*3600)),
         elsecase s(date),
        endsel,
       </pft>
     </field>
     
<!-- Exporta variáveis para o script que chamou a funcao -->
     <field action="export" tag="list">3000,4001,7003</field>

     </function>