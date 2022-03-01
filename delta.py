a=int(input("Digite o valor de A: "))
b=int(input("Digite o valor de B: "))
c=int(input("Digite o valor de C: "))

delta=int(b)**2-4*(a)*(c)

print("O delta da equação é: ", delta)

if delta>0:
    print("A equação possui duas raízes reais distintas.")
elif delta== 0:
    print("A equação possui duas raízes reais iguais.")
else:
    print("A equação não possui raízes reais")


