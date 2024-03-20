'd910',
,select v910^c
case 'AL':'a910~'replace(v910,'^cAL','^c1^e7')'~'
case 'AS':'a910~'replace(v910,'^cAS','^c1^e16')'~'
case 'AE':'a910~'replace(v910,'^cAE','^c1^e4')'~'
case 'AT':'a910~'replace(v910,'^cAT','^c1^e21')'~'
case 'AV':'a910~'replace(v910,'^cAV','^c1^e22')'~'

case 'PL':'a910~'replace(v910,'^cPL','^c2^e7')'~'
case 'PS':'a910~'replace(v910,'^cPS','^c2^e16')'~'
case 'PE':'a910~'replace(v910,'^cPE','^c2^e4')'~'
case 'PT':'a910~'replace(v910,'^cPT','^c2^e21')'~'
case 'PV':'a910~'replace(v910,'^cPV','^c2^e22')'~'

case 'FL':'a910~'replace(v910,'^cFL','^c3^e7')'~'
case 'FS':'a910~'replace(v910,'^cFS','^c3^e16')'~'
case 'FE':'a910~'replace(v910,'^cFE','^c3^e4')'~'
case 'FT':'a910~'replace(v910,'^cFT','^c3^e21')'~'
case 'FV':'a910~'replace(v910,'^cFV','^c3^e22')'~'

case 'EL':'a910~'replace(v910,'^cEL','^c4^e7')'~'
case 'ES':'a910~'replace(v910,'^cES','^c4^e16')'~'
case 'EE':'a910~'replace(v910,'^cEE','^c4^e4')'~'
case 'ET':'a910~'replace(v910,'^cET','^c4^e21')'~'
case 'EV':'a910~'replace(v910,'^cEV','^c4^e22')'~'

case 'OL':'a910~'replace(v910,'^cOL','^c5^e7')'~'
case 'OS':'a910~'replace(v910,'^cOS','^c5^e16')'~'
case 'OE':'a910~'replace(v910,'^cOE','^c5^e4')'~'
case 'OT':'a910~'replace(v910,'^cOT','^c5^e21')'~'
case 'OV':'a910~'replace(v910,'^cOV','^c5^e22')'~'

elsecase 'a910~'replace(v910,'^c','^y'),'^c5^e12~'
endsel,