'''Crie um programa que calcule a média ponderada de um conjunto de notas e seus 
respectivos pesos. O programa deve seguir os seguintes passos:
1. Solicitar ao usuário o número de notas que deseja calcular a média.
2. Para cada nota, pedir ao usuário que insira o valor da nota e o peso correspondente.
3. Calcular a média ponderada das notas inseridas usando a fórmula:
Média Ponderada = (Valor1 * Peso1 + Valor2 * Peso2 + ... + ValorN * PesoN) / (Peso1+ Peso2 + ... + PesoN)'''
acumValor,acumPeso = 0,0
entradas = int(input("Qual o número de médias você deseja calcular: "))

for i in range(1,entradas+1):
    valor = int(input(f"Qual o {i}° valor: "))
    peso = int(input(f"Qual o {i}° peso: "))
    acumValor += (valor*peso) 
    acumPeso += peso
    
resul = acumValor / acumPeso

print(f"O resultado do calculo foi: {resul}")
    

    
