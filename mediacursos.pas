Program mediacursos ;
//cadastro matricula + notas e médias dos cursos

var	tot, so:array[1..10] of integer;
		cod, nota, x: integer;
		mat: string[13];
		med: real;
			
Begin
			Writeln ('Insira os dados solicitados e para encerrar, digite 0 como próximo código.');
			Writeln ('');
 			Repeat
 					Writeln ('Digite o código do curso: ');
 					Readln (cod);
			Until cod <=10;       //cod é indice -> tem que estar entre 1 e 10
			
			 
			While cod > 0 do            //loop até o usuário encerrar com 0
				Begin
						Writeln ('Informe a matrícula do aluno/a: ');
						Readln (mat);
						Writeln ('Informe a nota do aluno/a: ');
						Readln (nota);
						Writeln ('');
						
						tot[cod]:=tot[cod]+1;            //conta as notas POR CURSO
						so[cod]:=so[cod]+nota;          //soma notas POR CURSO
						
				   Repeat
				   		Writeln ('Digite o código do curso: ');
				   		Readln (cod);
				   Until cod <=10;
				   
				End;
				
				
			For x:= 1 to 10 do  //pois são 10 cursos
					If tot[x] > 0 then
						Begin
								med := so[x]/tot[x];
								Writeln ('Curso ', x, ' -> média = ', med:8:2);
						End
					Else
								Writeln ('Curso ', x, ' -> não possui alunos.');
				
End.