@echo off
echo Lista numeros de midias ausentes
pause

echo faixa S  ...
mx null to=2050  "pft=if val(ref(['phl_acv']l(['phl_acv']'MID='mfn(5)'S'), mfn)) = 0 then mfn(5)'S|SVHS'/,fi"  -all now > faixaS.txt

echo faixa SV ...
mx null to=5009  "pft=if val(ref(['phl_acv']l(['phl_acv']'MID='mfn(5)'SV'),mfn)) = 0 then mfn(5)'SV|SVHS'/,fi" -all now > faixaSV.txt

echo faixa T  ...
mx null to=1498  "pft=if val(ref(['phl_acv']l(['phl_acv']'MID='mfn(5)'T'), mfn)) = 0 then mfn(5)'T|SVHS'/ ,fi" -all now > faixaT.txt


echo faixa S  ...
mx null to=2050  "pft=if val(ref(['phl_acv']l(['phl_acv']'MID='mfn(5)'S'), mfn)) = 0 then mfn(5)'S|SVHS'/,fi"  -all now >  ausentes2.txt

echo faixa SV ...
mx null to=5009  "pft=if val(ref(['phl_acv']l(['phl_acv']'MID='mfn(5)'SV'),mfn)) = 0 then mfn(5)'SV|SVHS'/,fi" -all now >> ausentes2.txt

echo faixa T  ...
mx null to=1498  "pft=if val(ref(['phl_acv']l(['phl_acv']'MID='mfn(5)'T'), mfn)) = 0 then mfn(5)'T|SVHS'/ ,fi" -all now >> ausentes2.txt

pause
