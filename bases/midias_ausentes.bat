@echo off
echo Lista numeros de midias ausentes
pause

echo faixa BN ...
mx null to=1034  "pft=if val(ref(['phl_acv']l(['phl_acv']'MID='mfn(5)'BN'),mfn)) = 0 then mfn(5)'BN|BETACAM 90'/,fi" -all now > faixaBN.txt

echo faixa BS ...
mx null to=3086  "pft=if val(ref(['phl_acv']l(['phl_acv']'MID='mfn(5)'BS'),mfn)) = 0 then mfn(5)'BS|BETACAM 60'/,fi" -all now > faixaBS.txt

echo faixa B  ...
mx null to=8495  "pft=if val(ref(['phl_acv']l(['phl_acv']'MID='mfn(5)'B'), mfn)) = 0 then mfn(5)'B|BETACAM 30'/ ,fi" -all now > faixaB.txt

echo faixa DC ...
mx null to=477   "pft=if val(ref(['phl_acv']l(['phl_acv']'MID='mfn(5)'DC'),mfn)) = 0 then mfn(5)'DC|DVCAM'/,fi"      -all now > faixaDC.txt

echo faixa DV ...
mx null to=10645 "pft=if val(ref(['phl_acv']l(['phl_acv']'MID='mfn(5)'DV'),mfn)) = 0 then mfn(5)'DV|DVCPRO'/,fi"     -all now > faixaDV.txt

echo faixa BN ...
mx null to=1034  "pft=if val(ref(['phl_acv']l(['phl_acv']'MID='mfn(5)'BN'),mfn)) = 0 then mfn(5)'BN|BETACAM 90'/,fi" -all now  > ausentes.txt

echo faixa BS ...
mx null to=3086  "pft=if val(ref(['phl_acv']l(['phl_acv']'MID='mfn(5)'BS'),mfn)) = 0 then mfn(5)'BS|BETACAM 60'/,fi" -all now >> ausentes.txt

echo faixa B  ...
mx null to=8495  "pft=if val(ref(['phl_acv']l(['phl_acv']'MID='mfn(5)'B'), mfn)) = 0 then mfn(5)'B|BETACAM 30'/ ,fi" -all now >> ausentes.txt

echo faixa DC ...
mx null to=477   "pft=if val(ref(['phl_acv']l(['phl_acv']'MID='mfn(5)'DC'),mfn)) = 0 then mfn(5)'DC|DVCAM'/,fi"      -all now >> ausentes.txt

echo faixa DV ...
mx null to=10645 "pft=if val(ref(['phl_acv']l(['phl_acv']'MID='mfn(5)'DV'),mfn)) = 0 then mfn(5)'DV|DVCPRO'/,fi"     -all now >> ausentes.txt

pause
