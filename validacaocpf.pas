Program validacao ;
//validação cpf

Var CPF:string[11];  
		vet:array[1..11] of integer;  //vai conter os 11 digitos do cpf apos usar a VAL 
		tam, i, soma, res, dvcJ, dvcK,err: Integer;		
		
Begin
		Repeat    																					//ínicio da validação 11 digitos
  			Write ('Digite o CPF a ser consultado -> ');
  			Readln (cpf);
  			
  			tam:=length(cpf);            //tamanho - quantidade de caracteres da string CPF
  			If (tam <> 11) then          //TEM QUE SER 11	
  				Writeln ('CPF ILEGAL: 11 DIGITOS');
  				Writeln; 				
		Until (tam=11);                            //fim validação
				
		While cpf <> '00000000000' do
				Begin
						For i:= 1 to 11 do
  						val(cpf[i], vet[i], err);     //converte caractere a caractere para inteiro e coloca no vetor
  					writeln(cpf);
						  					
						For i:=1 to 11 do
  						write(vet[i]);              //escreve novamente o cpf em forma de vetor
  				    writeln;
  				  
  				  soma:=0;                  //soma do primeiro digito (J)
  					For i:=1 to 9 do
  							soma:=soma+vet[i]*(11-i);
  							
  				 	res := soma MOD 11;
  			   	dvcJ := 11 - res;        //Digito Verificador Calculado J
  			   	If (dvcJ<2) then
  						 dvcJ:=0;	 		
					 		
					 	If (dvcJ <> vet[10]) then          
					 			Writeln ('CPF INVÁLIDO! DIGITO VERIFICADOR CALCULADO J -> ', dvcj)
					 	Else                             //se dvcj = vet[10] então calcula o digito verificador calculado K
					 			Begin  //começa o calculo do segundo digito (K)
					 					soma:=0;       
  									For i:= 1 to 10 do
  									soma:=soma+vet[i]*(12-i);
  									
  									res := soma MOD 11;
  									dvck:= 11 - res;      //Digito verificador calculado K  
  									If (dvcK<2) then
  										dvck:=0;
  										
  									If (dvck <> vet[11]) then     
  										Writeln ('CPF INVÁLIDO! DIGITO VERIFICADOR CALCULADO K -> ', dvck)
  									Else
											writeln ('CPF DIGITADO: VÁLIDO!'); //se dvck for igual ao décimo primeiro digito do cpf, então ele é válido		
					 			End;
					 
					 		Writeln;
					 		Writeln ('Próximo:');
					 		
					 		Repeat    							//verificação 11 digitos novamente														
  							Write ('Digite o CPF a ser consultado -> ');
  							Readln (cpf);
  			
  							tam:=length(cpf);
  							If (tam <> 11) then
  							Writeln ('CPF ILEGAL: 11 DIGITOS');
  							Writeln;
  						Until (tam=11);							     
				End; 
			   Writeln ('Digite enter para encerrar');
				 Readln;                    
End.