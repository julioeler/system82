001 0 mhu,"ACV="v1/,'MFN='mfn(1)/,"?A001"n1/,
002 0 mhu,"TIT="v2/,"?A002"n2/,
003 0 mhu,"CLA="v3/,"?A003"n3/,"?P003"d3/,
003 4 mhu,(v3/),
004 0 mhu,(|DBI=|v4/),"?P004"d4/,
005 0 mhu,"TIP="v5/,"TG="v1"=",v5/,"?A005"n5/,
005 0 mhu,if p(v5) then 'TDO=',select val(v5) case 1:'Audio'/,case 2:'Catalogo'/,case 3:'Arquivo'/,case 4:'Evento'/,case 5:'Imagem'/,case 6:'Jogo-Kit'/,case 7:'Livro'/,case 8:'Manuscrito'/,case 9:'Mapa'/,case 10:'Norma-Tecnica'/,case 11:'Obra-Rara'/,case 12:'Outro'/,case 13:'Partitura'/,case 14:'Patente'/,case 15:'Peca-Museu'/,case 16:'Periodico'/,case 17:'Planta-Projeto'/,case 18:'Projetos-pesquisa'/,case 19:'Relatorio'/,case 20:'Digital'/,case 21:'Tese'/,case 22:'Video'/,case 23:'Braille'/,case 24:'Sitio-Web'/,case 25:'Video-TV'/,case 26:'Midia-TV'/,case 27:'Capitulo'/,case 28:'Trabalho-congresso'/,case 29:'Publicacao-avulsa'/,case 30:'Traducao'/,case 31:'Artigo'/,case 32:'Software'/,elsecase 'Indefinido'/,endsel,else 'TDO=?',fi,/
005 0 mhu,if p(v5) then 'TDO=',select val(v5) case 4:'EV'/,case 7:'LI'/,case 10:'NT'/,case 14:'PT'/,case 19:'RT'/,case 21:'TE'/,case 27:'CL'/,case 28:'TC'/,case 29:'PA'/,case 30:'TD'/,case 31:'AA'/,elsecase 'XX'/,endsel,else 'TDO=?',fi,/
006 0 mhu,"NIV="v6/,"?A006"n6/,
006 0 mhu,if p(v6) then if s(mhu,v6,mpl)='M' then 'NIB=Monografico'/,'NIB=Midia'/ else if s(mhu,v6,mpl)='AM' then 'NIB=Analitico'/,'NIB=Video'/ else if s(mhu,v6,mpl)='S' then 'NIB=Serie'/ else if s(mhu,v6,mpl)='AS' then 'NIB=Analitico-Serie'/ else if s(mhu,v6,mpl)='C' then 'NIB=Colecao'/ else 'NIB=?',fi,fi,fi,fi,fi, else 'NIB='fi,/
007 0 mhu,if p(v7) then (|TBO=|v7^a/),(v1[1],|#TBO#|v7^a/),(|DTA=|v7^d/),(|AQU=|v7^c/) fi,"?A007"n7/,"?P007"d7/,
008 0 mhu,"?P008"d8/,
009 0 mhu,(|SEP=|v9/),"?P009"d9/,
010 0 mhu,"?P010"d10/,"?A010"n10/,
010 0 mhu,(|AUT=|v10^*/),(v10^*/),
010 0 mhu,(|APA=|v10^*/),
010 0 mhu,(|DIR=|v10^*/),
010 4 mhu,(v10^*/),
011 0 mhu,"?P011"d11/,"?A011"n11/,
011 0 mhu,(|AUT=|v11^*/),(v11^*/),
011 0 mhu,(|ACA=|v11^*/),
011 4 mhu,(v11^*/),
012 0 mhu,"?P012"d12/,"?A012"n12/,
012 0 mhu,(if p(v12) then 'ITI=',replace(v12*0.30,'"','#'),/,fi,),(v12/),
012 0 mhu,(if p(v12) then 'TNA=',v12*0.30,/,fi,),
012 4 mhu,(v12/),
013 0 mhu,"?P013"d13/,"?A013"n13/,
013 0 mhu,(|ITI=|v13/),(v13/),
013 0 mhu,(|TZA=|v13/),
013 4 mhu,(v13/),
014 0 mhu,"?P014"d14/,
015 0 mhu,"?P015"d15/,
015 4 mhu,(v15^*/),
016 0 mhu,"?P016"d16/,"?A016"n16/,
016 0 mhu,(|AUT=|v16^*/),(v16^*/),
016 0 mhu,(|APM=|v16^*/),
016 4 mhu,(v16^*/),
017 0 mhu,"?P017"d17/,"?A017"n17/,
017 0 mhu,(|AUT=|v17^*/),(v17^*/),
017 0 mhu,(|ACM=|v17^*/),
017 4 mhu,(v17^*/),
018 0 mhu,"?P018"d18/,"?A018"n18/,
018 0 mhu,(|ITI=|v18/),(v18/),
018 0 mhu,(|TNM=|v18/),
018 4 mhu,(v18/),
019 0 mhu,"?P019"d19/,"?A019"n19/,
019 0 mhu,(|ITI=|v19/),(v19/),
019 0 mhu,(|TZM=|v19/),
019 4 mhu,(v19/),
020 0 mhu,"?P020"d20/,
021 0 mhu,"?P021"d21/,
022 0 mhu,"SPT="v22/,"?A022"n22/,"?P022"d22/,
022 0 mhu,if p(v22) then v1'=SPT='v22/ fi,
022 0 mhu,if p(v22) then 'SPT=',select val(v22) case 1:'Ceramica'/,case 2:'Cartolina-cartao'/,case 3:'Cassete'/,case 4:'CD'/,case 5:'CD-ROM'/,case 6:'Disco'/,case 7:'Disquete'/,case 8:'DVD'/,case 9:'Impresso'/,case 10:'WWW'/,case 11:'Microforma'/,case 12:'Pelicula'/,case 13:'Videocassete'/,case 14:'Vidro'/,case 15:'Madeira'/,case 16:'Ferro-aco'/,case 17:'Tecido'/,case 18:'Fibra-vegetal'/,case 19:'Fibra-sintetica'/,case 20:'Acetato'/,case 21:'Diapositivo'/,case 22:'Tela'/,case 23:'Betacam'/,case 24:'Betacam-05'/,case 25:'Betacam-10'/,case 26:'Betacam-20'/,case 27:'Betacam-30'/,case 28:'Betacam-60'/,case 29:'Betacam-90'/,case 30:'DVCPRO'/,case 31:'DVCPRO-66'/,case 32:'DVCPRO-126'/,case 33:'DVCAM'/,case 34:'DV'/,case 35:'MINI-DV'/,case 36:'U-MATIC'/,case 37:'SVHS'/,case 38:'VHS'/,case 39:'DVCPRO-33'/,elsecase '?'/,endsel, else 'SPT=?',fi,/
022 0 mhu,if p(v22) then 'MID=',select val(v22) case 1:'Ceramica'/,case 2:'Cartolina-cartao'/,case 3:'Cassete'/,case 4:'CD'/,case 5:'CD-ROM'/,case 6:'Disco'/,case 7:'Disquete'/,case 8:'DVD'/,case 9:'Impresso'/,case 10:'WWW'/,case 11:'Microforma'/,case 12:'Pelicula'/,case 13:'Videocassete'/,case 14:'Vidro'/,case 15:'Madeira'/,case 16:'Ferro-aco'/,case 17:'Tecido'/,case 18:'Fibra-vegetal'/,case 19:'Fibra-sintetica'/,case 20:'Acetato'/,case 21:'Diapositivo'/,case 22:'Tela'/,case 23:'Betacam'/,case 24:'Betacam-05'/,case 25:'Betacam-10'/,case 26:'Betacam-20'/,case 27:'Betacam-30'/,case 28:'Betacam-60'/,case 29:'Betacam-90'/,case 30:'DVCPRO'/,case 31:'DVCPRO-66'/,case 32:'DVCPRO-126'/,case 33:'DVCAM'/,case 34:'DV'/,case 35:'MINI-DV'/,case 36:'U-MATIC'/,case 37:'SVHS'/,case 38:'VHS'/,case 39:'DVCPRO-33'/,elsecase '?'/,endsel, else 'MID=?',fi,/
023 0 mhu,"?P023"d23/,"?A023"n23/,
023 0 mhu,(|AUT=|v23^*/),(v23^*/),
023 0 mhu,(|APC=|v23^*/),
023 4 mhu,(v23^*/),
024 0 mhu,"?P024"d24/,"?A024"n24/,
024 0 mhu,(|AUT=|v24^*/),(v24^*/),
024 0 mhu,(|ACC=|v24^*/),
024 4 mhu,(v24^*/),
025 0 mhu,"?P025"d25/,"?A025"n25/,
025 0 mhu,(|ITI=|v25/),(v25/),
025 0 mhu,(|TNC=|v25/),
025 4 mhu,(v25/),
026 0 mhu,"COL="v26/,"?A026"n26/,"?P026"d26/,
026 0 mhu,if p(v26) then 'COL=',select val(v26) case 1:'Obras-Referencia'/,case 2:'V�deocassete'/,case 3:'Mapas'/,case 4:'Microfilmes'/,case 5:'Livros'/,case 6:'Periodicos'/,case 7:'CD'/,case 8:'DVD'/,case 9:'Fita-virgem'/,case 10:'Permanente'/,case 11:'Temporario'/,elsecase '?'/, endsel, else 'COL=?',fi,/
026 0 mhu,if p(v26) then 'TAR=',select val(v26) case 1:'Obras-Referencia'/,case 2:'V�deocassete'/,case 3:'Mapas'/,case 4:'Microfilmes'/,case 5:'Livros'/,case 6:'Periodicos'/,case 7:'CD'/,case 8:'DVD'/,case 9:'Fita-virgem'/,case 10:'Permanente'/,case 11:'Temporario'/,elsecase '?'/, endsel, else 'TAR=?',fi,/
027 0 mhu,"?P027"d27/,
028 0 mhu,"?P028"d28/,
028 0 mhu,if p(v28) then v1,'PRC='v28/,'PRC='v28/, fi,
029 0 mhu,"?P029"d29/,
029 0 mhu,"DIV="v29/,"DIV=S"n29/,
030 0 mhu,"?P030"d30/,"?A030"n30/,
030 0 mhu,(|ITI=|v30/),(v30/),
030 0 mhu,(|TSR=|v30/),
030 4 mhu,(v30/),
030 0 mhu,if v6='c' then "TPR="v30/ fi,(v30/),
030 4 mhu,(v30/),
031 0 mhu,"?P031"d31/,
031 0 mhu,"VOL="v31/,v31/,
032 0 mhu,"?P032"d32/,
032 0 mhu,"FAS="v32/,v32/,
033 0 mhu,"?P033"d33/,
033 0 mhu,"SER="v33/,"SEN="v33,"#"v6/
034 0 mhu,"?P034"d34/,
034 4 mhu,(v34/),
035 0 mhu,"?P035"d35/,
035 0 mhu,"ISSN="v35/,
036 0 mhu,"?P036"d36/,"?A036"n36/,
036 0 mhu,(|ITI=|v36/),(v36/),
036 0 mhu,(|TVR=|v36/),
036 4 mhu,(v36/),
037 0 mhu,"?P037"d37/,"?A037"n37/,
037 0 mhu,(|FON=|v37/),
037 4 mhu,(v37/),
038 0 mhu,"?P038"d38/,"?A038"n38/,
038 0 mhu,(|IDE=|v38/),
039 0 mhu,"?P039"d39/,
039 0 mhu,(|NDA=|v39/),
039 4 mhu,(v39/),
040 0 mhu,"?P040"d40/,"?A040"n40/,
040 0 mhu,(|IDM=|v40/),(if p(v40) then v1[1],|=IDM=|v40/ fi,),
040 0 mhu,if p(v40) then 'IDM=',select val(v40) case 1:'Portugues'/,case 2:'Espanhol'/,case 3:'Ingles'/,case 4:'Italiano'/,case 5:'Frances'/,case 6:'Alemao'/,case 7:'Japones'/,case 8:'Latim'/,case 9:'Outro'/,elsecase '?'/, endsel, else 'IDM=?',fi,/
041 0 mhu,"?P041"d41/,
041 0 mhu,if p(v41) then 'IDR=',select val(v41) case 1:'Portugues'/,case 2:'Espanhol'/,case 3:'Ingles'/,case 4:'Italiano'/,case 5:'Frances'/,case 6:'Alemao'/,case 7:'Japones'/,case 8:'Latim'/,case 9:'Outro'/,elsecase '?'/, endsel,fi,/
042 0 mhu,"?P042"d42/,
042 0 mhu,(|PTD=|v42/),(v42/),
042 4 mhu,(v42/),
043 0 mhu,"?P043"d43/,
043 0 mhu,(|PTN=|v43/),(v43/),
044 0 mhu,"?P044"d44/,
044 0 mhu,(|PTP=|v44/),
045 0 mhu,"?P045"d45/,"?A045"n45/,
045 0 mhu,(|NOR=|v45/),(v45/),
045 0 mhu,(if p(v45) then f(val(v45),1,0),fi,/),
045 4 mhu,(v45/),
046 0 mhu,"?P046"d46/,
046 0 mhu,(|DTN=|v46/),(v46/),
046 4 mhu,(v46/),
047 0 mhu,"?P047"d47/,
047 0 mhu,(|REL=|v47/),(v47/),
047 4 mhu,(v47/),
048 0 mhu,"?P048"d48/,
048 0 mhu,(|SIG=|v48^*|%|/v48^*|%|/|SIGN=|v48^n|%|/),
048 4 mhu,(v48^*|%|/),
049 0 mhu,"?P049"d49/,"?A049"n49/,
049 0 mhu,"NUM="v49/,
049 0 mhu,"LET="v49*5/,
049 0 mhu,if p(v49) then if s(mhu,v6,mpl)='M' then 'NMM='v49/ else if s(mhu,v6,mpl)='AM' then 'NMA='v49/ ,fi,fi,fi,/
049 4 mhu,(v49/),
049 0 mhu,(|REG=|v49^a|%|/|UGR=|v49^b|%|/v49^b|%|/|IMG=|v49^i|%|/),
050 0 mhu,"?P050"d50/,
050 0 mhu,(|TEI=|v50/),(v50/),
050 4 mhu,(v50/),
051 0 mhu,"?P051"d51/,
051 0 mhu,(if p(v51^a) then |TET=|v51^a/ else |TET=|v51^*/,fi,|TEG=|v51^b/),
051 4 mhu,(if p(v51^a) then v51^a/ else v51^*/,fi,v51^b/),
052 0 mhu,"?P052"d52/,
052 4 mhu,(v52/),
053 0 mhu,"?P053"d53/,
053 0 mhu,(|AUT=|v53^*/),(v53^*/),
053 0 mhu,(|EVE=|v53^*/),
053 4 mhu,(v53/),
054 0 mhu,"?P054"d54/,
054 0 mhu,(|DTV=|v54/),
055 0 mhu,"?P055"d55/,
055 0 mhu,if a(v55) and (p(v52) or p(v53) or p(v54) or p(v56) or p(v57)) then '?A055',fi,/
055 0 mhu,(|DTE=|v55/),
056 0 mhu,"?P056"d56/,
056 0 mhu,if a(v56) and (p(v52) or p(v53) or p(v54) or p(v55) or p(v57)) then '?A056',fi,/
056 0 mhu,(|EVL=|v56/),(v56/),
056 4 mhu,(v56/),
057 0 mhu,"?P057"d57/,
057 0 mhu,if a(v57) and (p(v52) or p(v53) or p(v54) or p(v55) or p(v56)) then '?A057',fi,/
057 0 mhu,(|EVP=|v57/),(v57/),
057 4 mhu,(v57/),
058 0 mhu,"?P058"d58/,
058 4 mhu,(v58/),
059 0 mhu,"?P059"d59/,
059 4 mhu,(v59/),
060 0 mhu,"?P060"d60/,
060 0 mhu,(|PRP=|v60/),(v60/),
061 0 mhu,"?P061"d61/,
061 4 mhu,(v61/),
062 0 mhu,"?P062"d62/,"?A062"n62/,
062 0 mhu,(|EDT=|v62/),(v62/),
062 0 mhu,(|PRO=|v62/),
062 4 mhu,(v62/),
063 0 mhu,"?P063"d63/,
064 0 mhu,"?P064"d64/,"?A064"n64/,
064 0 mhu,(|DTD=|v64/),(v64/),
064 0 mhu,(|DEX=|v64/),
065 0 if p(v65) then mhu,v1,"="v65.4/,fi,
065 0 mhu,"?P065"d65/,"?A065"n65/,
065 0 mhu,"DTP="v65.4/,v65.4/,v65/,
065 0 mhu,"DPD="v65/,
066 0 mhu,"?P066"d66/,"?A066"n66/,
066 0 mhu,if v66:'[' then else (v66/),(|LPB=|v66/),(|LOC=|v66/)/,fi,
066 4 mhu,if v66:'[' then else mhu,(v66/) fi/,
067 0 mhu,"?P067"d67/,
067 0 mhu,(|PAP=|v67/),(v67/),
068 0 mhu,"?P068"d68/,
068 0 mhu,(v68/),
069 0 mhu,"?P069"d69/,
069 0 mhu,"ISBN="v69/,
070 0 mhu,"?P070"d70/,
071 0 mhu,"?P071"d71/,"?A071"n71/,
071 0 mhu,"CNT="v71/,
071 0 mhu,if p(v71) then v1'=CNT='v71/ fi,
071 0 mhu,if p(v71) then 'CNT=',select val(v71) case 1:'Almanaque'/,case 2:'Atlas'/,case 3:'Base-de-Dados'/,case 4:'Bibliografia'/,case 5:'Biografia'/,case 6:'Boletim'/,case 7:'Catalogo'/,case 8:'Correspondencia-enviada'/,case 9:'Correspondencia-recebida'/,case 10:'Desenho-tecnico'/,case 11:'Dicionario'/,case 12:'Didatico'/,case 13:'Dissertacao'/,case 14:'Doutrina'/,case 15:'Enciclopedia'/,case 16:'Entrevista'/,case 17:'Evento-Congresso'/,case 18:'Jurisprudencia'/,case 19:'Legislacao'/,case 20:'Literatura'/,case 21:'Manual'/,case 22:'Norma-tecnica'/,case 23:'Noticia'/,case 24:'Patente'/,case 25:'Projeto-arquitetonico'/,case 26:'Projeto-de-pesquisa'/,case 27:'Relatorio-tecnico'/,case 28:'Resolucao-do-senado'/,case 29:'Tese'/,case 30:'Trabalho-Conclusao-Curso'/,case 31:'Outro'/,case 32:'Artistico'/,case 33:'Cientifico'/,case 34:'Musica'/,case 35:'Guia'/,case 36:'Fotografia'/,case 37:'Software'/,case 38:'Cartografico'/,case 39:'Material-Bruto'/,case 40:'Mat�ria-Editada'/,case 41:'Programa-Editado'/,case 42:'Indefinido'/,elsecase '?'/, endsel, else 'CNT=?',fi,/
071 0 mhu,if p(v71) then 'CLS=',select val(v71) case 1:'Almanaque'/,case 2:'Atlas'/,case 3:'Base-de-Dados'/,case 4:'Bibliografia'/,case 5:'Biografia'/,case 6:'Boletim'/,case 7:'Catalogo'/,case 8:'Correspondencia-enviada'/,case 9:'Correspondencia-recebida'/,case 10:'Desenho-tecnico'/,case 11:'Dicionario'/,case 12:'Didatico'/,case 13:'Dissertacao'/,case 14:'Doutrina'/,case 15:'Enciclopedia'/,case 16:'Entrevista'/,case 17:'Evento-Congresso'/,case 18:'Jurisprudencia'/,case 19:'Legislacao'/,case 20:'Literatura'/,case 21:'Manual'/,case 22:'Norma-tecnica'/,case 23:'Noticia'/,case 24:'Patente'/,case 25:'Projeto-arquitetonico'/,case 26:'Projeto-de-pesquisa'/,case 27:'Relatorio-tecnico'/,case 28:'Resolucao-do-senado'/,case 29:'Tese'/,case 30:'Trabalho-Conclusao-Curso'/,case 31:'Outro'/,case 32:'Artistico'/,case 33:'Cientifico'/,case 34:'Musica'/,case 35:'Guia'/,case 36:'Fotografia'/,case 37:'Software'/,case 38:'Cartografico'/,case 39:'Material-Bruto'/,case 40:'Mat�ria-Editada'/,case 41:'Programa-Editado'/,case 42:'Indefinido'/,elsecase '?'/, endsel, else 'CLS=?',fi,/
072 0 mhu,"?P072"d72/,
072 0 mhu,"REF="v72/,
073 0 mhu,"?P073"d73/,
073 4 mhu,(v73/),
074 0 mhu,"?P074"d74/,
074 0 mhu,(|F=|v74/),(|DTI=|v74/),
075 0 mhu,"?P075"d75/,
075 0 mhu,(|T=|v75/),(|DTF=|v75/),
076 0 mhu,"?P076"d76/,
076 0 mhu,(v76/),
077 0 mhu,"?P077"d77/,
077 4 mhu,(v77/),
078 0 mhu,"?P078"d78/,
078 0 mhu,(|DES=|v78/),(V78/),
078 0 mhu,(|ICT=|v78/),
078 4 mhu,(v78/),
079 0 mhu,"?P079"d79/,
079 0 mhu,(v1[1],|CUR=|v79/),
080 0 mhu,"?P080"d80/,"?A080"n80/,
080 0 mhu,(|PRR=|v80/),
081 0 mhu,"?P081"d81/,"?A081"n81/,
081 0 mhu,(|PRD=|v81/),
082 0 mhu,"?P082"d82/,"?A082"n82/,
082 0 mhu,(|DES=|v82/),(v82/),
082 0 mhu,(|DEG=|v82/),
082 4 mhu,(v82/),
083 0 mhu,"?P083"d83/,"?A083"n83/,
083 0 mhu,(if p(v83) then 'SIN=',v83*0.30,/,fi,),
083 4 mhu,(v83*0.999/),
084 0 mhu,"?P084"d84/,
085 0 mhu,"?P085"d85/,"?A085"n85/,
085 0 mhu,if p(v85) then v1,'ATE='v85/ fi,
086 0 mhu,"?P086"d86/,"?A086"n86/,
086 0 mhu,(|VAL=|v86^v|%|/)
086 4 if nocc(v86)<50 then mhu,(v86^*/) fi,
087 0 mhu,"?P087"d87/,"?A087"n87/,
087 0 mhu,(|DES=|v87^*,|/|v87^s/),(v87^*,|/|v87^s/),
087 4 mhu,(v87^s/),(v87^*/),
088 0 mhu,"?P088"d88/,"?A088"n88/,
088 0 mhu,(|DES=|v88^*,|/|v88^s/),(v88^*,|/|v88^s/),
088 0 mhu,(|DE2=|v88^*,|/|v88^s/),
088 4 mhu,(v88^*/),(v88^s/),
089 0 mhu,"?P089"d89/,"?A089"n89/,
089 0 mhu,(|OBS=|v89/),
089 4 mhu,(v89/),
090 0 mhu,"?P090"d90/,"?A090"n90/,
090 0 mhu,if p(v90) then 'STT=',select s(v90) case 'B':'Apresentar'/,case '0':'Apresentar'/,case 'C':'Ocultar'/,case '1':'Ocultar'/,case 'R':'Restrito'/,elsecase 'Indefinido-'v90/, endsel,else 'STT=Apresentar'/,fi,/
090 0 mhu,if a(v91) then "STT="v90/,"STT=B"n90/ fi/
090 0 mhu,if p(v91) then if val(v91)>0 and val(v91)<=50 and (v90='r' or v90='R') then 'STT='v91/ else "STT="v90/,"STT=B"n90/ fi, fi/
091 0 mhu,"?P091"d91/,"?A091"n91/,
091 0 mhu,(|STR=|v91/),
091 0 mhu,if p(v91) then 'STR=',select val(v91) case 1:'Academico'/,case 2:'Professor'/,case 3:'Funcionario'/,case 4:'Especial'/,case 5:'Outro'/,case 6:'Estoque'/,case 7:'Circulacao'/,case 8:'Contratado'/,case 9:'Estagiario'/,case 10:'Setor'/,case 11:'Nucleo'/,case 12:'Biblioteca'/,case 13:'Externo'/,case 14:'Malote'/,elsecase 'Indefinido'/, endsel,fi,/
092 0 mhu,"?P092"d92/,
092 4 mhu,(v92/),
093 0 mhu,"?P093"d93/,
093 4 mhu,(v93/),
094 0 mhu,"?P094"d94/,
094 4 mhu,(v94/),
095 0 mhu,"?P095"d95/,
095 4 mhu,(v95/),
096 0 mhu,"?P096"d96/,
097 0 mhu,"?P097"d97/,
097 0 mhu,(|LOF=|v97/),
098 0 mhu,"?P098"d98/,
098 0 mhu,(|ARQ=|v98/),
099 0 mhu,"?P099"d99/,
099 0 mhu,(|DTT=|v99/),
099 0 mhu,( |AT=|v99*0.4/),
099 0 mhu,( |MT=|v99*4.2/),
099 0 mhu,( |DT=|v99*6.2/),
100 0 mhu,"?P100"d100/,
100 4 mhu,(v100/),
101 0 mhu,"?P101"d101/,"?A101"n101/,
101 0 mhu,(|UEG=|v101|%|/v101|%|/),
102 0 mhu,"?P102"d102/,"?A102"n102/,
102 0 mhu,(|URE=|v102|%|/v102|%|/),
103 0 mhu,"?P103"d103/,"?A103"n103/,
103 0 mhu,"NAU="v103/
104 0 mhu,"?P104"d104/,"?A104"n104/,
114 0 mhu,(|INL=|v104/),
104 4 mhu,(v104/),
105 0 mhu,"?P105"d105/,
105 0 mhu,(|GEN=|v105/),
105 0 mhu,if p(v105) then 'GEN=',select val(v105) case 1:'Bibliografico'/,case 2:'Cartografico'/,case 3:'Eletronico'/,case 4:'Filmografico'/,case 5:'Iconografico'/,case 6:'Micrografico'/,case 7:'Sonoro'/,case 8:'Textual'/,case 9:'Tridimensional'/,elsecase '?'/, endsel,fi,/
106 0 mhu,"?P106"d106/,"?A106"n106/,
106 0 mhu,(|IB=|v106/),
106 0 mhu,(|IB1=|v106/),
107 0 mhu,"?P107"d107/,"?A106"n106/,
107 0 mhu,(|IB=|v107/),
107 0 mhu,(|IB2=|v107/),
108 0 mhu,"?P108"d108/,
108 0 mhu,(|PNP=|v108/),
108 4 mhu,(v108/),
109 0 mhu,"?P109"d109/,
109 0 mhu,(|CIP=|v109/),
109 0 mhu,(v109/),
110 0 mhu,"?P110"d110/,
110 0 mhu,(|TIV=|v110/),
110 4 mhu,(v110/),
111 0 mhu,"?P111"d111/,
111 0 mhu,(|POR=|v111/),
111 4 mhu,(v111/),
112 0 mhu,"?P112"d112/,
112 0 mhu,(|PCT=|v112/),
112 4 mhu,(v112/),
113 0 mhu,"?P113"d113/,
113 0 mhu,(|WO=|v113/),
113 0 mhu,(v113/),
114 0 mhu,"?P114"d114/,"?A114"n114/,
114 0 mhu,(|INP=|v114/),
114 4 mhu,(v114/),
115 0 mhu,"?P115"d115/,"?A115"n115/,
115 0 mhu,(|NC1=|v115/),
116 0 mhu,"?P116"d116/,"?A116"n116/,
116 0 mhu,(|INC=|v116/),
116 4 mhu,(v116/),
117 0 mhu,"?P117"d117/,
117 4 mhu,(v117/),
118 0 mhu,"?P118"d118/,
118 4 mhu,(v118/),
119 0 mhu,"?P119"d119/,
119 4 mhu,(v119/),
120 0 mhu,"?P120"d120/,
120 0 mhu,(|PDF=|v120/),
121 0 mhu,"?P121"d121/,"?A121"n121/,
121 0 mhu,(|CRE=|v121/),(v121/),
121 0 mhu,(if p(v121) then 'DAU=',replace(replace(mid(v121,instr(v121,':'),size(v121)),': ',':'),':',''),/,fi,)/
121 4 mhu,(v121/),
141 0 mhu,"?P141"d141/,"?A141"n141/,
141 0 mhu,(|IDA=|v141/),
150 0 mhu,"?P150"d150/,"?A150"n150/,
150 0 mhu,(|PGM=|v150/),(v150/),
150 4 mhu,(v150/),
151 0 mhu,"?P151"d151/,"?A151"n151/,
151 0 mhu,(|CLI=|v151/),(v151/),
151 4 mhu,(v151/),
152 0 mhu,"?P152"d152/,"?A152"n152/,
152 0 mhu,(|AGE=|v152/),(v152/),
152 4 mhu,(v152/),
153 0 mhu,"?P153"d153/,"?A153"n153/,
153 4 mhu,(v153/),
153 0 mhu,(|TCD=|v153/),
154 0 mhu,"?P154"d154/,"?A154"n154/,
154 4 mhu,(v154/),
154 0 mhu,(|DUR=|v154/),
155 0 mhu,"?P155"d155/,"?A155"n155/,
155 0 mhu,(|BLO=|v155^*/),
155 0 mhu,|BL1=|v155[1]^d/,|BL2=|v155[2]^d/,|BL3=|v155[3]^d/,|BL4=|v155[4]^d/,|BL5=|v155[5]^d/,|BL6=|v155[6]^d/,|BL7=|v155[7]^d/,|BL8=|v155[8]^d/,|BL9=|v155[9]^d/,
156 0 mhu,"?P156"d156/,"?A156"n156/,
156 0 mhu,(|APR=|v156/),(v156/),
156 4 mhu,(v156/),
157 0 mhu,"?P157"d157/,"?A157"n157/,
157 0 mhu,(|REP=|v157/),(v157/),
157 4 mhu,(v157/),
158 0 mhu,"?P158"d158/,"?A158"n158/,
158 0 mhu,(|CIN=|v158/),(v158/),
158 4 mhu,(v158/),
181 0 mhu,"?P181"d181/,"?A181"n181/,
181 0 mhu,(|SBT=|v181/),(v181/),
181 4 mhu,(v181/),
182 0 mhu,"?P182"d182/,"?A182"n182/,
182 0 mhu,(|SBS=|v182/),(v182/),
182 4 mhu,(v182/),
186 0 mhu,"?P186"d186/,
186 0 mhu,(|WIK=|v186/),
186 4 mhu,(v186/),
996 0 mhu,"?P996"d996/,"?A996"n996/,
996 0 mhu,"PAI="v996/,
997 0 mhu,"?P997"d997/,"?A997"n997/,
997 0 mhu,(,if p(v7) then v1[1],'TBO^a'v5[1],'^b'v65[1].4,if v65[1]='' then '0000' fi,'^c'v85[1],if v85[1]='' then '9' fi,'^d'v28[1],if v28[1]='' then '3' fi/ fi,),
997 0 mhu,if v6.1<>'a' then v1'TIT^a'v5,'^b'v65.4,"0000"n65,'^c'v85,"9"n85,'^d'v28,"3"n28/,fi
998 0 mhu,"?P998"d998/,"?A998"n998/,
999 0 mhu,"?P999"d999/,"?A999"n999/,
999 0 mhu,'GRF'v1.3,v999[1]^d.6/,
999 0 mhu,'BIB='v999[1]^b/,
999 0 mhu,'DTR='v999[1]^d*0.8/,
999 0 mhu,'ANO='v999[1]^d*0.4/,
999 0 mhu,'MES='v999[1]^d*4.2/,
999 0 mhu,'DIA='v999[1]^d*6.2/,
999 0 mhu,if nocc(v999)>1 then 'BIE='v999[LAST]^b/,fi,/,
999 0 mhu,if nocc(v999)>1 then 'DTM='v999[LAST]^d*0.8,fi,/,
999 0 mhu,if nocc(v999)>1 then 'AUM='v999[LAST]^d*0.4,fi,/,
999 0 mhu,if nocc(v999)>1 then 'MUM='v999[LAST]^d*4.2,fi,/,
999 0 mhu,if nocc(v999)>1 then 'DUM='v999[LAST]^d*6.2,fi,/,
999 0 mhu,(if occ=1 then continue else  |AM=|v999^d*0.4,fi,/)
999 0 mhu,(if occ=1 then continue else  |MM=|v999^d*4.2,fi,/)
999 0 mhu,(if occ=1 then continue else  |DM=|v999^d*6.2,fi,/)