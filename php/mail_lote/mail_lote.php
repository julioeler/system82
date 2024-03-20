<?
	//set_time_limit(0);

	require ('class.phpmailer.php');

	$file	= $HTTP_GET_VARS['file'];
	$nivel	= array();
	$open	= true;
	$i		= 0;
	$tag	= '';
	$email	= '';

	function abreTag($pos, $tagInicio, $tagFinal) {
		global $nivel, $open, $tag;
		$tag = $tagInicio;
		$nivel[$pos]++;
		$open = true;
	}

	function fechaTag($pos, $tagInicio) {
		global $nivel, $open, $i, $tag;
		$nivel[$pos]--;
		if($tagInicio == 'MAIL'){
			$i++;
		}
		$tag = '';
		$open = false;
	}

	function conteudoTag($pos, $conteudo){
		global $open, $tag, $email,$i;

		switch($tag){
			case 'HOST_SMTP':
				$email[host_smtp] = $conteudo;
				break;
			case 'SMTP_USER':
				$email[smtp_user] = $conteudo;
				break;
			case 'SMTP_PASS':
				$email[smtp_pass] = $conteudo;
				break;
			case 'SMTP_AUTH':
				$email[smtp_auth] = $conteudo;
				break;
			case 'EMAIL_REMETENTE':				
				$email[email_remetente] = $conteudo;
				break;
			case 'NOME_REMETENTE':				
				$email[nome_remetente] = $conteudo;
				break;
			case 'EMAIL_RESPOSTA':				
				$email[email_resposta] = $conteudo;
				break;
			case 'NOME_RESPOSTA':				
				$email[nome_resposta] = $conteudo;
				break;
			case 'PORT':				
				$email[port] = $conteudo;
				break;
			default:
				$email[$i][$tag] = $conteudo;
				break;
		}
	}

	$file_xml = xml_parser_create();
	
	xml_set_element_handler($file_xml, "abreTag", "fechaTag");
	xml_set_character_data_handler($file_xml, "conteudoTag");

	if(!($file_xml_open = fopen($file, "r"))) {
		die("could not open XML input");
	}

	while($data = fread($file_xml_open, 4096)){
		if (!xml_parse($file_xml, $data, feof($file_xml_open))) {
			die(sprintf("XML error: %s at line %d",
						xml_error_string(xml_get_error_code($file_xml)),
						xml_get_current_line_number($file_xml)));
		}
	}
	xml_parser_free($file_xml);

	for($ii=0; $ii<$i; $ii++){

		$iii		= 1;
		$mensagem	= '';
		while($email[$ii]['LINHA'.$iii] != ''){
			$mensagem .= $email[$ii]['LINHA'.$iii]."<br>";
			$iii++;
		}

		$mail = new PHPMailer();
		$mail->IsSMTP(); // telling the class to use SMTP

		$mail->Priority		= 3;
		$mail->Encoding		= "8bit";
		$mail->CharSet		= "iso-8859-1";
		$mail->AltBody		= "E-MAIL EM HTML - FAVOR HABILITAR VISUALIZAÇÃO EM HTML DE";
		$mail->WordWrap		= 0;
		$mail->Helo			= $email[host_smtp];
		$mail->PluginDir	= $INCLUDE_DIR;
		$mail->Mailer		= "smtp";
		$mail->TimeOut		= "10";

		$mail->From		= $email[email_remetente]; // De (email)
		$mail->FromName = $email[nome_remetente]; // De (nome)
		$mail->Subject	= $email[$ii][SUBJECT]; // Assunto
		$mail->Host		= $email[host_smtp]; // Servidor de envio de mensagens SMTP
		$mail->Port		= $email[port]; // Porta 25
		$mail->SMTPAuth = $email[smtp_auth]; // Meu servidor requer autenticação
		$mail->Username = $email[smtp_user]; // Usuário
		$mail->Password = $email[smtp_pass]; // Password
		$mail->Sender	= $email[email_remetente]; // De (e-mail) Interno

		$mail->IsHTML("true"); // Mensagem em HTML
		$mail->AddReplyTo($email[email_resposta],$email[nome_resposta]); // Endereço para resposta

		$mail->Body = $mensagem; // Corpo da mensagem
		$mail->AddAddress($email[$ii][TO],$email[$ii][NOME_DESTINATARIO]); // Endereço de e-mail do destinatário

		$mail->Send();

		sleep(2);
	}
?>