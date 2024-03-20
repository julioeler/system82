<!-- Obtem dados do regulamento para o tipo de usu�rio
     14/04/2007 - Revisado -->

     <function name="300">

<!-- Importa variaveis para uso da funcao -->
     <field action="import" tag="list">100</field>

<!-- Obtem dados do regulamento -->
     
     <field action="add" tag="300">
       <pft>,ref(['phl_rgl']val(v100^e),
             '^a'v550,/* N�o renovar se usu�rio estiver com cadastro vencido*/
             '^b'v551,/* N�o renovar se usu�rio estiver suspenso*/
             '^c'v552,/* N�o renovar se existir reserva para outro usu�rio*/
             '^d'v553,/* N�o renovar se prazo estiver expirado*/
             '^e'v554,/* N�o renovar se usu�rio tiver penalidades*/
             '^f'v555,/* N�o renovar se usu�rio tiver outros objetos atrasados*/
             '^g'v528,/* Limite de renova��es*/
             '^h'v520,/* N�o emprestar se usu�rio estiver com cadastro vencido*/
             '^i'v521,/* N�o emprestar se usu�rio tiver objetos atrasados*/
             '^j'v522,/* N�o emprestar se usu�rio estiver suspenso*/
             '^k'v523,/* N�o emprestar se usu�rio tiver d�bitos ou penalidade*/
             '^l'v524,/* N�o emprestar se houver reserva para outro usu�rio*/
             '^m'v525,/* N�o emprestar se limite foi ultrapassado*/
             '^n'v526,/* N�o emprestar mais que um exemplar para um mesmo usu�rio*/
             '^o'v527,/* Limite de objetos*/
             '^p'v529,/* N�o solicitar senha do usu�rio*/
             '^q'v530,/* N�o permitir que usu�rio suspenso efetue reservas*/
             '^r'v531,/* N�o permitir que usu�rio com d�bitos efetue reservas*/
             '^s'v532,/* N�o permitir que usu�rio com cadastro vencido efetue reservas*/
             '^t'v533,/* N�o permitir que usu�rio com atrasos efetue reservas*/
             '^u'v534,/* N�o permitir que usu�rio reserve um t�tulo que est� em seu poder*/
             '^v'v535,/* N�o permitir que usu�rio efetue v�rias reservas do mesmo t�tulo*/
             '^w'v536,/* N�o permitir reservas para t�tulos dispon�veis*/
             '^x'v538,"999"n538,/* Limite de reservas*/
             '^y'v537,

             )
       </pft>
     </field>
     
<!-- Exporta vari�vel 300 para o script que chamou a fun��o -->
     <field action="export" tag="300">300</field>
     
</function>
