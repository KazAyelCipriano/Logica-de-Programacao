//4) Crie um subprograma que receba como parâmetro dois valores x e z, calcule e retorne x^z sem utilizar funções ou operadores de potência prontos. 

function calcularPotencia(num,exp){
    var acum = num 
    for(let i=1; i<exp; i++){
        acum *= num
    }
    return acum
}

console.log(calcularPotencia(2,6))