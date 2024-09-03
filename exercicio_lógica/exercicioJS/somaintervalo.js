//1) Faça um algoritmo que chame uma sub-rotina que retorne verdadeiro se o número digitado for par e falso se for ímpar. Em seguida, no algoritmo principal, escreva se o número é par ou ímpar. 

function somarIntervalo(inicio,fim){
    var acum = 0
    for(inicio;inicio<=fim;inicio++){
        acum+=inicio
    }
    return acum
}

console.log(somarIntervalo(1,10))