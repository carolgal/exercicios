Program divisores ;
//encontrar os divisores de um número digitado

var num, cont:Integer;
Begin
		REPEAT
				Write ('Digite um número: ');
				Readln (num); 
				
				If num<>0 then        //para mostrar as mensagens APENAS quando tiver um número diferente de 0
					begin
						Writeln ('==========');
						Writeln ('Número lido -> ', num);
						Writeln ('Divisores: ');
					End;
						
				cont:=0;               //Instruções para encontrar os divisores dos números
				For cont:= 1 to num do
					If ((num MOD cont)=0) then
							Writeln (cont); 
					
				Writeln (''); 
		UNTIL num=0;   
		
		Writeln ('Encerrando...');         
End.  