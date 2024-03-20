'd900',
,select v900^c
case 'AL':'a900~'replace(v900,'^cAL','^c1^e7')'~'
case 'AS':'a900~'replace(v900,'^cAS','^c1^e16')'~'
case 'AE':'a900~'replace(v900,'^cAE','^c1^e4')'~'
case 'AT':'a900~'replace(v900,'^cAT','^c1^e21')'~'
case 'AV':'a900~'replace(v900,'^cAV','^c1^e22')'~'

case 'PL':'a900~'replace(v900,'^cPL','^c2^e7')'~'
case 'PS':'a900~'replace(v900,'^cPS','^c2^e16')'~'
case 'PE':'a900~'replace(v900,'^cPE','^c2^e4')'~'
case 'PT':'a900~'replace(v900,'^cPT','^c2^e21')'~'
case 'PV':'a900~'replace(v900,'^cPV','^c2^e22')'~'

case 'FL':'a900~'replace(v900,'^cFL','^c3^e7')'~'
case 'FS':'a900~'replace(v900,'^cFS','^c3^e16')'~'
case 'FE':'a900~'replace(v900,'^cFE','^c3^e4')'~'
case 'FT':'a900~'replace(v900,'^cFT','^c3^e21')'~'
case 'FV':'a900~'replace(v900,'^cFV','^c3^e22')'~'

case 'EL':'a900~'replace(v900,'^cEL','^c4^e7')'~'
case 'ES':'a900~'replace(v900,'^cES','^c4^e16')'~'
case 'EE':'a900~'replace(v900,'^cEE','^c4^e4')'~'
case 'ET':'a900~'replace(v900,'^cET','^c4^e21')'~'
case 'EV':'a900~'replace(v900,'^cEV','^c4^e22')'~'

case 'OL':'a900~'replace(v900,'^cOL','^c5^e7')'~'
case 'OS':'a900~'replace(v900,'^cOS','^c5^e16')'~'
case 'OE':'a900~'replace(v900,'^cOE','^c5^e4')'~'
case 'OT':'a900~'replace(v900,'^cOT','^c5^e21')'~'
case 'OV':'a900~'replace(v900,'^cOV','^c5^e22')'~'

elsecase 'a900~'replace(v900,'^c','^y'),'^c5^e12~'
endsel,