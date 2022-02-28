Program ordemalf ;
//ordena alfabética dos nomes por vetores

var vet:array[1..50] of string[30];
		nome, aux: string[30];
		tot, tt, a, b, c: integer;
		troca: boolean;

Begin                                            //montagem dos vetores
    Write ('Digite o nome -> ');
    Readln (nome);
    
    nome:=upcase(nome);
    While (nome <> 'FIM') and (tot<50) do
    	Begin
    			c:=length(nome);                  //comprimento string
    			For b:=c+1 to 30 do              //total de caracteres até o fim da string do nome
    				Insert (' ', nome, b);         //vai inserir espaço na posição b
    			tot:=tot+1;
    			vet[tot]:=nome;
    			Write ('Digite o nome -> ');
    			Readln (nome);
    			nome:=upcase(nome);
    	End;    
    		tt:=tot; //salva valores de tot                   //fim da montagem dos vetores
  
    	  For a:= 1 to tt do                   //COMEÇO DA ORDENAÇÃO
    	  	Writeln ('          ', vet[a]);
    	  	Writeln ('Enter para continuar');
    	  	Readln;
    	  	
    	  Repeat                    
    	    	Troca:= true;
    	    	tot:=tot-1;        
    	    	For a:=1 to tot do
    	    		If (vet[a] > vet[a+1]) then
    	    			Begin
    	    					aux:=vet[a];
    	    					vet[a]:=vet[a+1];
    	    					vet[a+1]:=aux;
    	    					troca:=false;            
    	    					
    	    			End;
    	  Until troca;       //FIM INSTRUIÇÕES ORDENAÇÃO
    	  
    	  Writeln (' ------------------------- ');    //Ordem alfabética crescente para nomes menores/iguais a Luiz Salgado
				For a:= 1 to tt do  
					If (vet[a] <= 'Luiz Salgado') then
    	  		Writeln ('         ', vet[a]);   
    	  
    	  Writeln (' ------------------------ ');    //Ordem alfabética decrescente para nomes maiores a Luiz Salgado
    	  For a:= tt downto 1 do
    	  	If (vet[a] > 'Luiz Salgado') then
    	  		Writeln ('         ', vet[a]);
    	  	Writeln ( ' --------------------- ');
					Writeln ('Enter para encerrar');
					Readln;     	  
End.