         <!-- Rotina de atualização das bases de controle de autoridades -->
         
              <list action="load" type="freq"><pft>,(v16^*/,v10^*/),</pft></list>
        
              <do task="list">
                <field action="define" tag="450">Isis_Item</field>
                <loop>

                  <flow action="jump">
                    <pft>,if npost(['phl_aut']'AUT='v450)=0 then 'grava_aut' else 'loop' fi,</pft>
                  </flow>

                  <label>grava_aut</label>
                    <do task="update">
                      <parm name="db">phl_aut</parm>
                      <parm name="mfn">New</parm>
                      <parm name="fst"><pft>cat('phl_aut.fst')</pft></parm>
                      <field action="define" tag="1003">Isis_Status</field>
                      <field action="define" tag="1105">Isis_Lock</field>
                      <parm name="expire">60</parm>
                      <parm name="lockid"><pft>getenv('REMOTE_ADDR'),x1,s(date).8</pft></parm>
                      <update>
                        <field action="import" tag="list">450</field>
                        <write>Unlock</write>
                      </update>
                    </do>

                  <label>loop</label>
                </loop>
              </do>
              <list action="delete">now</list>