//3) Elabore um algoritmo contendo uma sub-rotina que receba as três notas de um aluno como parâmetros e uma letra. Se a letra for A, a sub-rotina deverá calcular a média aritmética das notas do aluno; se for P, devera calcular a média ponderada, com pesos 5, 3 e 2. A média calculada deverá ser devolvida ao algoritmo principal para, então, ser mostrada. Realizar, antes, a validação da nota e da letra no algoritmo principal.

function calcularMedias(num1,num2,num3,modo){
    if(modo === "a" | modo === "A" ){
        return (num1+num2+num3)/3
    }else if(modo === "p" | modo === "P"){
        resultado = (num1*5 + num2*3 + num3*2) / 10
        return resultado
    }else{
        return "Modo insérido é inválido"
    }
}

console.log(calcularMedias(5,10,6,"g"))