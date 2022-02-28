Program validata;
//leitura de dia, mês e ano e para validação

//=========================================
//ano -> inválido se menor que 1940
//mês com 31 dias -> jan/mar/mai/jul/ago/out/dez
//mês com 30 dias -> abr/jun/set/nov
//mês com 28 dias -> fev 
//mês com 29 dias -> fev (ano bissexto)
//ANOS BISSEXTOS -> 366 dias: múltiplos de 4 
//==========================================

var MES, DIA, ANO, DMAX, CHA: Integer;

Begin
		Writeln ('Digite o dia a ser validado: [DD]');
		Readln (dia);
		Writeln ('Digite o mês a ser validado: [MM]');
		Readln (mes);
		Writeln ('Digite o ano a ser validado: [AAAA]');
 		Readln (ano); 
 		clrscr;

//cha = 0 -> DATA VÁLIDA
//cha = 1 -> DATA INVÁLIDA
		
		cha :=0;
		If (ano < 1940) then  //verificação do ano
			cha :=1
		Else
			If (mes < 1) or (mes > 12) then  //verificação do mês
				cha :=1
			Else
				
				BEGIN
					DMAX :=31;
					If (mes = 4) or (mes = 6) or (mes = 9) or (mes = 11) then    //meses com 30 dias
						dmax :=30;
							
					If (mes = 2) then //instruções para o mês de fevereiro
					BEGIN
						DMAX :=28;
						If ((ano MOD 4)=0) then    //ano bissexto
							dmax :=29;			
					END;
					
					If (dia < 1) or (dia > DMAX) then  //verificação do dia
						cha :=1;
				END;
				
		Write (		dia, '/', mes, '/', ano, ' -> ');
		If (cha = 1) then
			Writeln ('Data INVÁLIDA.')
		Else 
			Writeln ('Data VÁLIDA.');			
			
End.