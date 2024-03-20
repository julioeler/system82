'd1d3d4d5d7d14d40d41d87d88d999',
,'a1#BR1580.1#',
,'a4#LILACS#',
,'a5#',
,,,if val(v5)=16 then 'S' else,
,,,,if val(v5)=7 then 'M' else,
,,,,,if val(v5)=21 then 'T' else,
,,,,,,if val(v5)=4 then 'E' else 'M' fi,
,,,,,fi
,,,,fi
,,,fi
,'#',
if p(v14) then,'a14#^f'replace(v14,'-','^l')'#',fi,
,('a40#',
,,,,if val(v40)=1 then 'Pt' else,
,,,,,if val(v40)=2 then 'Es' else,
,,,,,,if val(v40)=3 then 'En' else,
,,,,,,,if val(v40)=4 then 'Fr' else 'Pt' fi,
,,,,,,fi
,,,,,fi
,,,,fi,
,'#'),
,('a41#',
,,,,if val(v41)=1 then 'Pt' else,
,,,,,if val(v41)=2 then 'Es' else,
,,,,,,if val(v41)=3 then 'En' else,
,,,,,,,if val(v41)=4 then 'Fr' else 'Pt' fi,
,,,,,,fi
,,,,,fi
,,,,fi,
,'#'),
,if p(v87) then ('a87#^d'v87'#') fi,
,if p(v88) then ('a88#^d'v88'#') fi,
,if a(v91) then 'a91#'v999[1]^d'#',fi,
,if a(v92) then 'a92#'v999[1]^b'#',fi,
'a98#FONTE#',
