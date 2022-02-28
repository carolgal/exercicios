Program T02 ;     

//utilização de procedure e function 

Var MULT, IITT, P1,P2, N, NUM, X, IITT2, R:Integer;
		II, DI:Real;
		
Function Inteiro(Num, N: Integer):Integer;        //Função INTEIRO
Begin
		DI := NUM / N;
		MULT := 1;
		If (DI < 0) then
			MULT := -1;
			
		DI := DI * MULT;
		
		IITT :=0;
		II :=0;
		
		Repeat
				IITT := IITT + 1;
				II := II + 1;
		Until (II > DI);
		
		IITT := (IITT - 1) * MULT;		  
		Inteiro := IITT;
		
End;

//------------------------------------------------------------

Function Resto(Num, N, IITT2: Integer):Integer;             //Função RESTO
Begin
				Resto := (NUM - IITT2 * N);
End;

//----------------------------------------------------------

Procedure Sai;         																		 //Procedure SAI
Begin
		Writeln (' ');
  	Writeln ('Quantidade de múltiplos de ', N, '-> ', P1);
		Writeln ('Quantidade de não múltiplos de ', N, '-> ', P2);
End;

//---------------------------------------------------------

Procedure Testa(Res: Integer;  var P1, P2:Integer);       //Procedure TESTA
Begin
			If (res = 0) then
				p1 := p1 + 1
		  Else
		  	p2 := p2 + 1;				 		 		
End;

//--------------------------------------------------------
{alg principal}

Begin {1}
					P1 :=0;
					P2 :=0;
					N :=2;
					For x:= 1 to 10 do
							BEGIN
									Write ('Digite o ', x:3, '.o número -> ');
									Readln (num);
						
						      IITT2 := Inteiro(Num, N);
									R := Resto(NUM,N, IITT2);                 //CHAMADA DA FUNÇÃO - RESTO
									Testa(R, P1, P2);                         //CHAMADA DA ROTINA - TESTA
					
						END;
				Sai;                                               //CHAMADA DA ROTINA - SAI
				
				Writeln ('');
				
					P1 :=0;
					P2 :=0;
					N :=3;
					For x:= 1 to 10 do
						BEGIN
									Write ('Digite o ', x:3, '.o número -> ');
									Readln (num);
						
									IITT2 := Inteiro(Num, N);
									R := Resto(NUM,N, IITT2);
									Testa(R, P1, P2);
					
						END;
				Sai;
			
				Writeln ('');
				Writeln ('Pressione enter para encerrar');
				Readln;	
					
End.