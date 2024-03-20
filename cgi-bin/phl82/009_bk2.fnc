<!-- Divide ocorrencia de campos repetitivos
     13/01/2010 - eliminar branco no final de campos decodificados via tabela
     13/01/2010 - completar lista de campos
     14/04/2007 - Revisado -->

      <function name="009">
      <field action="import" tag="list">1/999</field>
      <field action="replace" tag="001" split="occ"><pft>(v1/)</pft></field>
      <field action="replace" tag="002" split="occ"><pft>(v2/)</pft></field>
      <field action="replace" tag="003" split="occ"><pft>(replace(replace(replace(s(v3'~~'),'  ~~',' ~~'),' ~~','~~'),'~~','')/)</pft></field>
      <field action="replace" tag="004" split="occ"><pft>(v4/)</pft></field>
      <field action="replace" tag="005" split="occ"><pft>(v5/)</pft></field>
      <field action="replace" tag="006" split="occ"><pft>(v6/)</pft></field>
  <!--<field action="replace" tag="007" split="occ"><pft>(v7/)</pft></field> Numeros de tombo -->
      <field action="replace" tag="008" split="occ"><pft>(v8/)</pft></field>
      <field action="replace" tag="009" split="occ"><pft>(v9/)</pft></field>
      <field action="replace" tag="010" split="occ"><pft>(replace(replace(replace(s(v10'~~'),'  ~~',' ~~'),' ~~','~~'),'~~','')/)</pft></field>
      <field action="replace" tag="011" split="occ"><pft>(replace(replace(replace(s(v11'~~'),'  ~~',' ~~'),' ~~','~~'),'~~','')/)</pft></field>
      <field action="replace" tag="012" split="occ"><pft>(v12/)</pft></field>
      <field action="replace" tag="013" split="occ"><pft>(v13/)</pft></field>
      <field action="replace" tag="014" split="occ"><pft>(v14/)</pft></field>
      <field action="replace" tag="015" split="occ"><pft>(v15/)</pft></field>
      <field action="replace" tag="016" split="occ"><pft>(replace(replace(replace(s(v16'~~'),'  ~~',' ~~'),' ~~','~~'),'~~','')/)</pft></field>
      <field action="replace" tag="017" split="occ"><pft>(replace(replace(replace(s(v17'~~'),'  ~~',' ~~'),' ~~','~~'),'~~','')/)</pft></field>
      <field action="replace" tag="018" split="occ"><pft>(v18/)</pft></field>
      <field action="replace" tag="019" split="occ"><pft>(v19/)</pft></field>
      <field action="replace" tag="020" split="occ"><pft>(v20/)</pft></field>
      <field action="replace" tag="021" split="occ"><pft>(v21/)</pft></field>
      <field action="replace" tag="022" split="occ"><pft>(v22/)</pft></field>
      <field action="replace" tag="023" split="occ"><pft>(v23/)</pft></field>
      <field action="replace" tag="024" split="occ"><pft>(v24/)</pft></field>
      <field action="replace" tag="025" split="occ"><pft>(v25/)</pft></field>
      <field action="replace" tag="026" split="occ"><pft>(v26/)</pft></field>
      <field action="replace" tag="027" split="occ"><pft>(v27/)</pft></field>
      <field action="replace" tag="028" split="occ"><pft>(v28/)</pft></field>
      <field action="replace" tag="029" split="occ"><pft>(v29/)</pft></field>
      <field action="replace" tag="030" split="occ"><pft>(v30/)</pft></field>
      <field action="replace" tag="031" split="occ"><pft>(v31/)</pft></field>
      <field action="replace" tag="032" split="occ"><pft>(v32/)</pft></field>
      <field action="replace" tag="033" split="occ"><pft>(replace(replace(replace(s(v33'~~'),'  ~~',' ~~'),' ~~','~~'),'~~','')/)</pft></field>
      <field action="replace" tag="034" split="occ"><pft>(v34/)</pft></field>
      <field action="replace" tag="035" split="occ"><pft>(v35/)</pft></field>
      <field action="replace" tag="036" split="occ"><pft>(v36/)</pft></field>
      <field action="replace" tag="037" split="occ"><pft>(v37/)</pft></field>
      <field action="replace" tag="038" split="occ"><pft>(v38/)</pft></field>
      <field action="replace" tag="039" split="occ"><pft>(v39/)</pft></field>
      <field action="replace" tag="040" split="occ"><pft>(v40/)</pft></field>
      <field action="replace" tag="041" split="occ"><pft>(v41/)</pft></field>
      <field action="replace" tag="042" split="occ"><pft>(v42/)</pft></field>
      <field action="replace" tag="043" split="occ"><pft>(v43/)</pft></field>
      <field action="replace" tag="044" split="occ"><pft>(v44/)</pft></field>
      <field action="replace" tag="045" split="occ"><pft>(v45/)</pft></field>
      <field action="replace" tag="046" split="occ"><pft>(v46/)</pft></field>
      <field action="replace" tag="047" split="occ"><pft>(v47/)</pft></field>
      <field action="replace" tag="048" split="occ"><pft>(v48/)</pft></field>
  <!--<field action="replace" tag="049" split="occ"><pft>(v49/)</pft></field>-->

      <field action="add" tag="9049"><pft>replace(v49,' ','')</pft></field>
      <field action="delete" tag="list">049</field>
      <field action="replace" tag="049" split="occ">
        <pft> 
          ,if s(v9049^j,v9049^k,v9049^l,v9049^m,v9049^n,v9049^o)<>'' then  
            ,if s(v9049^j,v9049^k)<>'' then ,"^a"v9049^k,if p(v9049^k) then "^i"v9049^j,fi,/,fi,
            ,if s(v9049^l,v9049^m)<>'' then ,"^a"v9049^m,if p(v9049^m) then "^i"v9049^l,fi,/,fi,
            ,if s(v9049^n,v9049^o)<>'' then ,"^a"v9049^o,if p(v9049^o) then "^i"v9049^n,fi,/,fi,
          ,else,
            ,(v9049/),
          ,fi,
        </pft>
      </field>

      <field action="replace" tag="050" split="occ"><pft>(v50/)</pft></field>
      <field action="replace" tag="051" split="occ"><pft>(v51/)</pft></field>
      <field action="replace" tag="052" split="occ"><pft>(v52/)</pft></field>
      <field action="replace" tag="053" split="occ"><pft>(v53/)</pft></field>
      <field action="replace" tag="054" split="occ"><pft>(v54/)</pft></field>
      <field action="replace" tag="055" split="occ"><pft>(v55/)</pft></field>
      <field action="replace" tag="056" split="occ"><pft>(replace(replace(replace(s(v56'~~'),'  ~~',' ~~'),' ~~','~~'),'~~','')/)</pft></field>
      <field action="replace" tag="057" split="occ"><pft>(replace(replace(replace(s(v57'~~'),'  ~~',' ~~'),' ~~','~~'),'~~','')/)</pft></field>
      <field action="replace" tag="058" split="occ"><pft>(v58/)</pft></field>
      <field action="replace" tag="059" split="occ"><pft>(v59/)</pft></field>
      <field action="replace" tag="060" split="occ"><pft>(v60/)</pft></field>
      <field action="replace" tag="061" split="occ"><pft>(v61/)</pft></field>
      <field action="replace" tag="062" split="occ"><pft>(replace(replace(replace(s(v62'~~'),'  ~~',' ~~'),' ~~','~~'),'~~','')/)</pft></field>
      <field action="replace" tag="063" split="occ"><pft>(v63/)</pft></field>
      <field action="replace" tag="064" split="occ"><pft>(v64/)</pft></field>

      <field action="replace" tag="065" split="occ">
        <pft>
          ,if size(v64)=10 and mid(v64,3,1)='/' and mid(v64,6,1)='/' then v64*6.4,v64*3.2,v64*0.2,
           else if size(v65)=4 then v65,'0000', else if size(v65)=6 then v65,'00', else (v65/),fi,fi,
          ,fi,
        </pft>
      </field>

      <field action="replace" tag="066" split="occ"><pft>(replace(replace(replace(s(v66'~~'),'  ~~',' ~~'),' ~~','~~'),'~~','')/)</pft></field>
      <field action="replace" tag="067" split="occ"><pft>(replace(replace(replace(s(v67'~~'),'  ~~',' ~~'),' ~~','~~'),'~~','')/)</pft></field>
      <field action="replace" tag="068" split="occ"><pft>(v68/)</pft></field>
      <field action="replace" tag="069" split="occ"><pft>(v69/)</pft></field>
      <field action="replace" tag="070" split="occ"><pft>(v70/)</pft></field>
      <field action="replace" tag="071" split="occ"><pft>(v71/)</pft></field>
      <field action="replace" tag="072" split="occ"><pft>(v72/)</pft></field>
      <field action="replace" tag="073" split="occ"><pft>(v73/)</pft></field>
      <field action="replace" tag="074" split="occ"><pft>(v74/)</pft></field>
      <field action="replace" tag="075" split="occ"><pft>(v75/)</pft></field>
      <field action="replace" tag="076" split="occ"><pft>(v76/)</pft></field>
      <field action="replace" tag="077" split="occ"><pft>(v77/)</pft></field>
      <field action="replace" tag="078" split="occ"><pft>(v78/)</pft></field>
      <field action="replace" tag="079" split="occ"><pft>(replace(replace(replace(s(v79'~~'),'  ~~',' ~~'),' ~~','~~'),'~~','')/)</pft></field>
      <field action="replace" tag="080" split="occ"><pft>(v80/)</pft></field>
      <field action="replace" tag="081" split="occ"><pft>(v81/)</pft></field>
      <field action="replace" tag="082" split="occ"><pft>(v82/)</pft></field>
      <field action="replace" tag="083" split="occ"><pft>(v83/)</pft></field>
      <field action="replace" tag="084" split="occ"><pft>(v84/)</pft></field>
      <field action="replace" tag="085" split="occ"><pft>(v85/)</pft></field>
      <field action="replace" tag="086" split="occ"><pft>(v86/)</pft></field>
      <field action="replace" tag="087" split="occ"><pft>(replace(replace(replace(s(v87'~~'),'  ~~',' ~~'),' ~~','~~'),'~~','')/)</pft></field>
      <field action="replace" tag="088" split="occ"><pft>(replace(replace(replace(s(v88'~~'),'  ~~',' ~~'),' ~~','~~'),'~~','')/)</pft></field>
      <field action="replace" tag="089" split="occ"><pft>(v89/)</pft></field>
      <field action="replace" tag="090" split="occ"><pft>(v90/)</pft></field>
      <field action="replace" tag="091" split="occ"><pft>(v91/)</pft></field>
      <field action="replace" tag="092" split="occ"><pft>(v92/)</pft></field>
      <field action="replace" tag="093" split="occ"><pft>(v93/)</pft></field>
      <field action="replace" tag="094" split="occ"><pft>(v94/)</pft></field>
      <field action="replace" tag="095" split="occ"><pft>(v95/)</pft></field>
      <field action="replace" tag="096" split="occ"><pft>(v96/)</pft></field>
      <field action="replace" tag="097" split="occ"><pft>(v97/)</pft></field>
      <field action="replace" tag="098" split="occ"><pft>(v98/)</pft></field>
      <field action="replace" tag="099" split="occ"><pft>(v99/)</pft></field>
      <field action="replace" tag="100" split="occ"><pft>(v100/)</pft></field>
      <field action="replace" tag="101" split="occ"><pft>(v101/)</pft></field>
      <field action="replace" tag="102" split="occ"><pft>(v102/)</pft></field>
      <field action="replace" tag="103" split="occ"><pft>(replace(replace(replace(s(v103'~~'),'  ~~',' ~~'),' ~~','~~'),'~~','')/)</pft></field>
      <field action="replace" tag="104" split="occ"><pft>(v104/)</pft></field>
      <field action="replace" tag="105" split="occ"><pft>(v105/)</pft></field>
      <field action="replace" tag="106" split="occ"><pft>(v106/)</pft></field>
      <field action="replace" tag="107" split="occ"><pft>(v107/)</pft></field>
      <field action="replace" tag="108" split="occ"><pft>(v108/)</pft></field>
      <field action="replace" tag="109" split="occ"><pft>(v109/)</pft></field>
      <field action="replace" tag="110" split="occ"><pft>(v110/)</pft></field>
      <field action="replace" tag="111" split="occ"><pft>(v111/)</pft></field>
      <field action="replace" tag="112" split="occ"><pft>(v112/)</pft></field>
      <field action="replace" tag="113" split="occ"><pft>(v113/)</pft></field>
      <field action="replace" tag="114" split="occ"><pft>(v114/)</pft></field>
      <field action="replace" tag="115" split="occ"><pft>(v115/)</pft></field>
      <field action="replace" tag="116" split="occ"><pft>(v116/)</pft></field>
      <field action="replace" tag="117" split="occ"><pft>(v117/)</pft></field>
      <field action="replace" tag="118" split="occ"><pft>(v118/)</pft></field>
      <field action="replace" tag="119" split="occ"><pft>(v119/)</pft></field>
      <field action="replace" tag="120" split="occ"><pft>(v120/)</pft></field>
      <field action="replace" tag="121" split="occ"><pft>(v121/)</pft></field>
      <field action="replace" tag="141" split="occ"><pft>(v141/)</pft></field>
      <field action="replace" tag="150" split="occ"><pft>(v150/)</pft></field>
      <field action="replace" tag="151" split="occ"><pft>(v151/)</pft></field>
      <field action="replace" tag="152" split="occ"><pft>(v152/)</pft></field>

      <field action="replace" tag="153" split="occ"><pft>(v153/)</pft></field>
      <field action="add" tag="9153"><pft>v153</pft></field>
      <field action="delete" tag="list">153</field>
      <field action="replace" tag="153" split="occ">
        <pft> 
          ,if val(v9153^h)+val(v9153^m)+val(v9153^s)+val(v9153^f)<>0 then  
            ,if val(v9153^h)=0 then '00' else if val(v9153^h)<10 then '0',f(val(v9153^h),1,0) else v9153^h,fi,fi,':',
            ,if val(v9153^m)=0 then '00' else if val(v9153^m)<10 then '0',f(val(v9153^m),1,0) else v9153^m,fi,fi,':',
            ,if val(v9153^s)=0 then '00' else if val(v9153^s)<10 then '0',f(val(v9153^s),1,0) else v9153^s,fi,fi,':',
            ,if val(v9153^f)=0 then '00' else if val(v9153^f)<10 then '0',f(val(v9153^f),1,0) else v9153^f,fi,fi,   ,
          ,else,
            ,if s(v9153):'^h' and s(v9153):'^m' and s(v9153):'^s' and s(v9153):'^f' then '' ,else ,(v9153/),fi,
          ,fi,
        </pft>
      </field>

  <!--<field action="replace" tag="154" split="occ"><pft> v154[1],':',v154[2],':',v154[3],':',v154[4]</pft></field>-->
      <field action="replace" tag="154" split="occ"><pft>(v154/)</pft></field>
      <field action="add" tag="9154"><pft>v154</pft></field>
      <field action="delete" tag="list">154</field>
      <field action="replace" tag="154" split="occ">
        <pft> 
          ,if val(v9154^h)+val(v9154^m)+val(v9154^s)+val(v9154^f)<>0 then  
            ,if val(v9154^h)=0 then '00' else if val(v9154^h)<10 then '0',f(val(v9154^h),1,0) else v9154^h,fi,fi,':',
            ,if val(v9154^m)=0 then '00' else if val(v9154^m)<10 then '0',f(val(v9154^m),1,0) else v9154^m,fi,fi,':',
            ,if val(v9154^s)=0 then '00' else if val(v9154^s)<10 then '0',f(val(v9154^s),1,0) else v9154^s,fi,fi,':',
            ,if val(v9154^f)=0 then '00' else if val(v9154^f)<10 then '0',f(val(v9154^f),1,0) else v9154^f,fi,fi,   ,
          ,else,
            ,if s(v9154):'^h' and s(v9154):'^m' and s(v9154):'^s' and s(v9154):'^f' then '' ,else ,(v9154/),fi,
          ,fi,
        </pft>
      </field>

      <field action="add" tag="9155"><pft>v155</pft></field>
      <field action="delete" tag="list">155</field>
      <field action="replace" tag="155" split="occ">
        <pft> 
          ,if val(v9155^h)+val(v9155^i)+val(v9155^j)+val(v9155^k)+val(v9155^l)+val(v9155^m)+val(v9155^n)+val(v9155^o)+val(v9155^p)+val(v9155^q)+val(v9155^r)+val(v9155^s)<>0 then  
            ,if val(v9155^h)+val(v9155^i)<>0 then  
              ,'^bPrimeiro^d',
              ,if val(v9155^h)=0 then '00' else if val(v9155^h)<10 then '0',f(val(v9155^h),1,0) else v9155^h,fi,fi,`'`,
              ,if val(v9155^i)=0 then '00' else if val(v9155^i)<10 then '0',f(val(v9155^i),1,0) else v9155^i,fi,fi,/,
            ,fi,
            ,if val(v9155^j)+val(v9155^k)<>0 then  
              ,'^bSegundo^d',
              ,if val(v9155^j)=0 then '00' else if val(v9155^j)<10 then '0',f(val(v9155^j),1,0) else v9155^j,fi,fi,`'`,
              ,if val(v9155^k)=0 then '00' else if val(v9155^k)<10 then '0',f(val(v9155^k),1,0) else v9155^k,fi,fi,/,
            ,fi,
            ,if val(v9155^l)+val(v9155^m)<>0 then  
              ,'^bTerceiro^d',
              ,if val(v9155^l)=0 then '00' else if val(v9155^l)<10 then '0',f(val(v9155^l),1,0) else v9155^l,fi,fi,`'`,
              ,if val(v9155^m)=0 then '00' else if val(v9155^m)<10 then '0',f(val(v9155^m),1,0) else v9155^m,fi,fi,/,
            ,fi,
            ,if val(v9155^n)+val(v9155^o)<>0 then  
              ,'^bQuarto^d',
              ,if val(v9155^n)=0 then '00' else if val(v9155^n)<10 then '0',f(val(v9155^n),1,0) else v9155^n,fi,fi,`'`,
              ,if val(v9155^o)=0 then '00' else if val(v9155^o)<10 then '0',f(val(v9155^o),1,0) else v9155^o,fi,fi,/,
            ,fi,
            ,if val(v9155^p)+val(v9155^q)<>0 then  
              ,'^bQuinto^d',
              ,if val(v9155^p)=0 then '00' else if val(v9155^p)<10 then '0',f(val(v9155^p),1,0) else v9155^p,fi,fi,`'`,
              ,if val(v9155^q)=0 then '00' else if val(v9155^q)<10 then '0',f(val(v9155^q),1,0) else v9155^q,fi,fi,/,
            ,fi,
            ,if val(v9155^r)+val(v9155^s)<>0 then  
              ,'^bSexto^d',
              ,if val(v9155^r)=0 then '00' else if val(v9155^r)<10 then '0',f(val(v9155^r),1,0) else v9155^r,fi,fi,`'`,
              ,if val(v9155^s)=0 then '00' else if val(v9155^s)<10 then '0',f(val(v9155^s),1,0) else v9155^s,fi,fi,
            ,fi,
          ,else,
            ,if s(v9155):'^h' and s(v9155):'^i' and s(v9155):'^j' and s(v9155):'^k' then '' ,else ,(v9155/),fi,
          ,fi,
        </pft>
      </field>

      <field action="replace" tag="156" split="occ"><pft>(v156/)</pft></field>
      <field action="replace" tag="157" split="occ"><pft>(v157/)</pft></field>
      <field action="replace" tag="158" split="occ"><pft>(v158/)</pft></field>
      <field action="replace" tag="159" split="occ"><pft>(v159/)</pft></field>
      <field action="replace" tag="181" split="occ"><pft>(v181/)</pft></field>
      <field action="replace" tag="182" split="occ"><pft>(v182/)</pft></field>
      <field action="replace" tag="186" split="occ"><pft>(v186/)</pft></field>
      <field action="replace" tag="203" split="occ"><pft>(v203/)</pft></field>
      <field action="replace" tag="204" split="occ"><pft>(v204/)</pft></field>
      <field action="replace" tag="205" split="occ"><pft>(v205/)</pft></field>
      <field action="replace" tag="209" split="occ"><pft>(v209/)</pft></field>
      <field action="replace" tag="216" split="occ"><pft>(v216/)</pft></field>
      <field action="replace" tag="217" split="occ"><pft>(v217/)</pft></field>
      <field action="replace" tag="219" split="occ"><pft>(v219/)</pft></field>
      <field action="replace" tag="221" split="occ"><pft>(v221/)</pft></field>
      <field action="replace" tag="226" split="occ"><pft>(v226/)</pft></field>
      <field action="replace" tag="228" split="occ"><pft>(v228/)</pft></field>
      <field action="replace" tag="231" split="occ"><pft>(v231/)</pft></field>
      <field action="replace" tag="238" split="occ"><pft>(v238/)</pft></field>
      <field action="replace" tag="301" split="occ"><pft>(v301/)</pft></field>
      <field action="replace" tag="302" split="occ"><pft>(v302/)</pft></field>
      <field action="replace" tag="303" split="occ"><pft>(v303/)</pft></field>
      <field action="replace" tag="304" split="occ"><pft>(v304/)</pft></field>
      <field action="replace" tag="305" split="occ"><pft>(v305/)</pft></field>
      <field action="replace" tag="311" split="occ"><pft>(v311/)</pft></field>
      <field action="replace" tag="351" split="occ"><pft>(v351/)</pft></field>
      <field action="replace" tag="412" split="occ"><pft>(v412/)</pft></field>
      <field action="replace" tag="413" split="occ"><pft>(v413/)</pft></field>
      <field action="replace" tag="414" split="occ"><pft>(v414/)</pft></field>
      <field action="replace" tag="415" split="occ"><pft>(v415/)</pft></field>
      <field action="replace" tag="421" split="occ"><pft>(v421/)</pft></field>
      <field action="replace" tag="422" split="occ"><pft>(v422/)</pft></field>
      <field action="replace" tag="423" split="occ"><pft>(v423/)</pft></field>
      <field action="replace" tag="424" split="occ"><pft>(v424/)</pft></field>
      <field action="replace" tag="425" split="occ"><pft>(v425/)</pft></field>
      <field action="replace" tag="451" split="occ"><pft>(v451/)</pft></field>
      <field action="replace" tag="452" split="occ"><pft>(v452/)</pft></field>
      <field action="replace" tag="507" split="occ"><pft>(v507/)</pft></field>
      <field action="replace" tag="509" split="occ"><pft>(v509/)</pft></field>
      <field action="replace" tag="510" split="occ"><pft>(v510/)</pft></field>
      <field action="replace" tag="511" split="occ"><pft>(v511/)</pft></field>
      <field action="replace" tag="512" split="occ"><pft>(v512/)</pft></field>
      <field action="replace" tag="513" split="occ"><pft>(v513/)</pft></field>
      <field action="replace" tag="514" split="occ"><pft>(v514/)</pft></field>
      <field action="replace" tag="599" split="occ"><pft>(v599/)</pft></field>
      <field action="replace" tag="600" split="occ"><pft>(v600/)</pft></field>
      <field action="replace" tag="612" split="occ"><pft>(v612/)</pft></field>
      <field action="replace" tag="615" split="occ"><pft>(v615/)</pft></field>
      <field action="replace" tag="616" split="occ"><pft>(v616/)</pft></field>
      <field action="replace" tag="617" split="occ"><pft>(v617/)</pft></field>
      <field action="replace" tag="618" split="occ"><pft>(v618/)</pft></field>
      <field action="replace" tag="619" split="occ"><pft>(v619/)</pft></field>
      <field action="replace" tag="620" split="occ"><pft>(v620/)</pft></field>
      <field action="replace" tag="621" split="occ"><pft>(v621/)</pft></field>
      <field action="replace" tag="625" split="occ"><pft>(v625/)</pft></field>
      <field action="replace" tag="626" split="occ"><pft>(v626/)</pft></field>
      <field action="replace" tag="627" split="occ"><pft>(v627/)</pft></field>
      <field action="replace" tag="628" split="occ"><pft>(v628/)</pft></field>
      <field action="replace" tag="629" split="occ"><pft>(v629/)</pft></field>
      <field action="replace" tag="630" split="occ"><pft>(v630/)</pft></field>
      <field action="replace" tag="632" split="occ"><pft>(v632/)</pft></field>
      <field action="replace" tag="633" split="occ"><pft>(v633/)</pft></field>
      <field action="replace" tag="634" split="occ"><pft>(v634/)</pft></field>
      <field action="replace" tag="635" split="occ"><pft>(v635/)</pft></field>
      <field action="replace" tag="636" split="occ"><pft>(v636/)</pft></field>
      <field action="replace" tag="639" split="occ"><pft>(v639/)</pft></field>
      <field action="replace" tag="648" split="occ"><pft>(v648/)</pft></field>
      <field action="replace" tag="649" split="occ"><pft>(v649/)</pft></field>
      <field action="replace" tag="650" split="occ"><pft>(v650/)</pft></field>
      <field action="replace" tag="651" split="occ"><pft>(v651/)</pft></field>
      <field action="replace" tag="654" split="occ"><pft>(v654/)</pft></field>      
      <field action="replace" tag="655" split="occ"><pft>(v655/)</pft></field>
      <field action="replace" tag="656" split="occ"><pft>(v656/)</pft></field> 
      <field action="replace" tag="657" split="occ"><pft>(v657/)</pft></field>                   
      <field action="replace" tag="710" split="occ"><pft>(v710/)</pft></field>
      <field action="replace" tag="714" split="occ"><pft>(v714/)</pft></field>
      <field action="replace" tag="716" split="occ"><pft>(v716/)</pft></field>      
      <field action="replace" tag="717" split="occ"><pft>(v717/)</pft></field>
      <field action="replace" tag="724" split="occ"><pft>(v724/)</pft></field>
      <field action="replace" tag="725" split="occ"><pft>(v725/)</pft></field>
      <field action="replace" tag="758" split="occ"><pft>(v758/)</pft></field>
      <field action="replace" tag="759" split="occ"><pft>(v759/)</pft></field>
      <field action="replace" tag="760" split="occ"><pft>(v760/)</pft></field>
      <field action="replace" tag="761" split="occ"><pft>(v761/)</pft></field>
      <field action="replace" tag="762" split="occ"><pft>(v762/)</pft></field>
      <field action="replace" tag="768" split="occ"><pft>(v768/)</pft></field>
      <field action="replace" tag="769" split="occ"><pft>(v769/)</pft></field>
      <field action="replace" tag="774" split="occ"><pft>(v774/)</pft></field>
      <field action="replace" tag="775" split="occ"><pft>(v775/)</pft></field>
      <field action="replace" tag="777" split="occ"><pft>(replace(replace(replace(s(v777'~~'),'  ~~',' ~~'),' ~~','~~'),'~~','')/)</pft></field>
      <field action="replace" tag="778" split="occ"><pft>(replace(replace(replace(s(v778'~~'),'  ~~',' ~~'),' ~~','~~'),'~~','')/)</pft></field>
      <field action="replace" tag="780" split="occ"><pft>(v780/)</pft></field>
      <field action="replace" tag="781" split="occ"><pft>(v781/)</pft></field>
      <field action="replace" tag="786" split="occ"><pft>(v786/)</pft></field>
      <field action="replace" tag="787" split="occ"><pft>(v787/)</pft></field>
      <field action="replace" tag="789" split="occ"><pft>(v789/)</pft></field>
      <field action="replace" tag="790" split="occ"><pft>(v790/)</pft></field>
      <field action="replace" tag="791" split="occ"><pft>(v791/)</pft></field>
      <field action="replace" tag="792" split="occ"><pft>(replace(replace(replace(s(v792'~~'),'  ~~',' ~~'),' ~~','~~'),'~~','')/)</pft></field>
      <field action="replace" tag="794" split="occ"><pft>(v794/)</pft></field>
      <field action="replace" tag="800" split="occ"><pft>(v800/)</pft></field>
      <field action="replace" tag="801" split="occ"><pft>(v801/)</pft></field>
      <field action="replace" tag="802" split="occ"><pft>(v802/)</pft></field>
      <field action="replace" tag="803" split="occ"><pft>(v803/)</pft></field>
      <field action="replace" tag="804" split="occ"><pft>(v804/)</pft></field>
      <field action="replace" tag="805" split="occ"><pft>(v805/)</pft></field>
      <field action="replace" tag="806" split="occ"><pft>(replace(replace(replace(s(v806'~~'),'  ~~',' ~~'),' ~~','~~'),'~~','')/)</pft></field>
      <field action="replace" tag="807" split="occ"><pft>(v807/)</pft></field>
      <field action="replace" tag="808" split="occ"><pft>(v808/)</pft></field>
      <field action="replace" tag="809" split="occ"><pft>(v809/)</pft></field>
      <field action="replace" tag="810" split="occ"><pft>(v810/)</pft></field>
      <field action="replace" tag="811" split="occ"><pft>(v811/)</pft></field>
      <field action="replace" tag="812" split="occ"><pft>(v812/)</pft></field>
      <field action="replace" tag="813" split="occ"><pft>(v813/)</pft></field>
      <field action="replace" tag="814" split="occ"><pft>(v814/)</pft></field>
      <field action="replace" tag="815" split="occ"><pft>(v815/)</pft></field>
      <field action="replace" tag="816" split="occ"><pft>(v816/)</pft></field>
      <field action="replace" tag="817" split="occ"><pft>(v817/)</pft></field>
      <field action="replace" tag="818" split="occ"><pft>(v818/)</pft></field>
      <field action="replace" tag="819" split="occ"><pft>(v819/)</pft></field>
      <field action="replace" tag="820" split="occ"><pft>(v820/)</pft></field>
      <field action="replace" tag="821" split="occ"><pft>(v821/)</pft></field>
      <field action="replace" tag="822" split="occ"><pft>(v822/)</pft></field>
      <field action="replace" tag="823" split="occ"><pft>(v823/)</pft></field>
      <field action="replace" tag="824" split="occ"><pft>(v824/)</pft></field>
      <field action="replace" tag="825" split="occ"><pft>(v825/)</pft></field>
      <field action="replace" tag="826" split="occ"><pft>(v826/)</pft></field>
      <field action="replace" tag="827" split="occ"><pft>(v827/)</pft></field>
      <field action="replace" tag="828" split="occ"><pft>(v828/)</pft></field>
      <field action="replace" tag="829" split="occ"><pft>(v829/)</pft></field>
      <field action="replace" tag="830" split="occ"><pft>(v830/)</pft></field>
      <field action="replace" tag="831" split="occ"><pft>(v831/)</pft></field>
      <field action="replace" tag="832" split="occ"><pft>(v832/)</pft></field>
      <field action="replace" tag="833" split="occ"><pft>(v833/)</pft></field>
      <field action="replace" tag="834" split="occ"><pft>(v834/)</pft></field>
      <field action="replace" tag="835" split="occ"><pft>(v835/)</pft></field>
      <field action="replace" tag="836" split="occ"><pft>(v836/)</pft></field>
      <field action="replace" tag="837" split="occ"><pft>(v837/)</pft></field>
      <field action="replace" tag="838" split="occ"><pft>(v838/)</pft></field>
      <field action="replace" tag="839" split="occ"><pft>(v839/)</pft></field>
      <field action="replace" tag="871" split="occ"><pft>(v871/)</pft></field>
      <field action="replace" tag="882" split="occ"><pft>(v882/)</pft></field>
      <field action="replace" tag="884" split="occ"><pft>(v884/)</pft></field>
      <field action="replace" tag="885" split="occ"><pft>(v885/)</pft></field>
      <field action="replace" tag="886" split="occ"><pft>(v886/)</pft></field>
      <field action="replace" tag="910" split="occ"><pft>(v910/)</pft></field>
      <field action="replace" tag="911" split="occ"><pft>(v911/)</pft></field>
      <field action="replace" tag="996" split="occ"><pft>(replace(replace(replace(s(v996'~~'),'  ~~',' ~~'),' ~~','~~'),'~~','')/)</pft></field>
      <field action="replace" tag="998" split="occ"><pft>(v998/)</pft></field>
      <field action="replace" tag="999" split="occ"><pft>(v999/)</pft></field>
      <field action="export" tag="list">1/999</field>
</function>
