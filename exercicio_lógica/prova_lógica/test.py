from os import system

dicSemana = {
    1 : [[]] #'segunda-feira'
}

def limparTerminal():
    pass

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