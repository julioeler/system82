
        function count(qtdChar){
		var count = 0;
		for(i=0; i<document.formulario.length; i++){
			if(document.formulario[i].type != 'submit'){
				count += document.formulario[i].value.length;
			}
		}
		if(count > qtdChar){
			alert('A quantidade de caracteres est� limitada em 30.000 caracteres.\n Este registro est� ultrapassando este limite.\n Foram detectados: ' + count + ' caracteres.');
			return false;
		}
	}
