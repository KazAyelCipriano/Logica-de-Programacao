'''Crie um programa que permita ao usuário cadastrar suas tarefas semanais. O programa 
deve solicitar ao usuário os dias da semana e, para cada dia, pedir uma lista de atividades a serem 
realizadas naquele dia. Requisitos:
❖ O programa deve permitir o cadastro de tarefas para todos os sete dias da semana: segunda-feira, terça-feira, quarta-feira, quinta-feira, sexta-feira, sábado e domingo.
❖ Para cada dia, o usuário deve inserir uma lista de atividades que deseja realizar naquele dia.
❖ O programa deve continuar até que todas as tarefas para todos os dias sejam cadastradas.
❖ Após o cadastro das tarefas, o programa deve exibir todas as tarefas para cada dia da semana, 
listando-as de forma organizada.'''

#IMPORTAR BIBLIOTECAS NECESSÁRIAS 
from os import system
from time import sleep

#LIMPAR TERMINAL
system("cls")

#DEFINIR VARIÁVEIS GLOBAIS
dicSemana = {
    1 : [[],'domingo'],
    2 : [[],'segunda-feira'],
    3 : [[],'terça-feira'],
    4 : [[],'quarta-feira'],
    5 : [[],'quinta-feira'],
    6 : [[],'sexta-feira'],
    7 : [[],'sábado'],
}

#CRIAR FUNÇÕES 
def limparTerminal():
    sleep(1)
    system("cls")

def cadastrarTarefa():
    dia = 1 
    while True:
        print("Leve em conta domingo como sendo dia 1")
        dia = int(input("Qual dia deseja cadastrar a tarefa: "))
        if dia in dicSemana:
            while True :
                tarefa = str(input("Qual tarefa deseja adicionar: "))
                listDia = dicSemana[dia]
                listDia[0].append(tarefa)
                
                while True:
                    opcao = str(input("Deseja adicionar mais tarefas nesse dia [S|N]: "))
                    if opcao[0] in ["S","s","N","n"]:
                        break
                    else:
                        print("Resposta inválida") 
                    print(opcao)
                if opcao in ["N","n"]:
                    break
                else:
                    limparTerminal()
            
        else:
            print("\n\033[31mDia inválido\033[37m")   
            limparTerminal()            
        if opcao in ["N","n"]:
            break
def visualizarTarefa():
    for num in dicSemana:
        lista = dicSemana[num]
        dia = lista[1]
        tarefas = lista[0]
        print(f"\n{dia}")
        for tarefa in tarefas:
            print(tarefa)
    print("\nPressione entrer para sair")
    input()

while True:
    print('''[1] Cadastrar tarefa\n'''
            '''[2] Visualizar Todas as tarefas cadastradas\n'''
            '''[3] Sair''')
    escolha = int(input("Digite sua opção: "))

    match escolha:
        case 1:
            limparTerminal()
            cadastrarTarefa()
            limparTerminal()
        case 2:
            limparTerminal()
            visualizarTarefa()
            limparTerminal()
        case 3: 
            print("Obrigado por utilizar meu código!")
            break
        case _:
            print("\n\033[31mEntrada inválida\033[37m")
            limparTerminal()
            
        