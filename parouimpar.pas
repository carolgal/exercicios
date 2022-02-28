Program parouimpar ;

//usando função par identificar se um número é par ou ímpar

Function PAROUIMPAR(numero:integer):string;
	BEGIN
		 IF ((numero MOD 2)=0) then
		 		PAROUIMPAR:= 'PAR'
		 ELSE 	
		 		PAROUIMPAR := 'ÍMPAR';
		
	END;

var num: Integer;	
Begin
   Writeln ('Escreva um número -> ');
   Readln (num);
   
   PAROUIMPAR(NUM);
   WRITELN (PAROUIMPAR);
End.