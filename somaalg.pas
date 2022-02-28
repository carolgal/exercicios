Program somalag ;
//soma dos digitos de um número

var somaAlg, num: integer;
Begin
		
		Writeln ('Escreva um número: ');
		Readln (num); 
		
		If (num < 10) then
			somaAlg := num
		Else
			somaAlg:= somaalg + (num MOD 10) + (num DIV 10);
			
			Writeln ('A soma dos algarismos é de: ', somaAlg);
			
			Writeln ('');
			Writeln ('Aperte enter para sair');
			Readln;  
End.