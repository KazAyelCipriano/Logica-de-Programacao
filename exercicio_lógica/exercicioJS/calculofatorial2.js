/*Faça um algoritmo contendo duas sub-rotinas. A primeira deverá receber como parâmetro de passagem por valor, um número inteiro e positivo, calcular e retornar o seu fatorial. A segunda deverá receber também, como parâmetro passador por valor, um número inteiro e positivo N, calcular e retornar o valor de S, obtido pelo seguinte cálculo: 
S = 1 + 1/1! + 1/2! + 1/3! + ... + 1/N! 
Para calcular o valor de S, a segunda subrotina deverá chamar a primeira, a fim de calcular os fatoriais dos denominadores dos termos da sequência. */

function calcularS(num){
    function recursividadeFatorial(n){
        if(n<0){
            return "Valor de entrada inválido"
        }else if(n<2){
            return 1
        }else{
            return recursividadeFatorial(n-1) * n
        }
    }

    var s = 1
    while(num > 0){
        s += 1/recursividadeFatorial(num)
        num--
    }

    return s
}

console.log(calcularS(4))