print("========LOCADORA==========")
carro=str(input("Qual o carro a ser alugado? Luxo [L] / Popular [P]" ))
##
dias=int(input("Por quantos dias o carro foi alugado: "))
km=int(input("Quantos km's foram percorridos pelo carro: "))

##calculo carro popular
alupop=dias*90
if carro=="P" and km<=100:
    alukm=0.20*km
    totalp=alupop+alukm
    print("O valor do aluguel é de R$", totalp)
elif  carro=="P" and km >100:
    alukm=0.10*km
    totalp=alupop+alukm
    print("O valor do aluguel é de R$", totalp) 

##calculo carro luxo
alulux=dias*150
if carro=="L" and km<=200:
    alukm=0.30*km
    totall=alulux+alukm
    print("O valor do aluguel é de R$", totall)
elif carro=="L" and km>200:
    alukm=0.25*km
    totall=alulux+alukm
    print("O valor do alugeul é de R$", totall)

