/*Crie uma sub-rotina que receba como parâmetro a altura (ALT) e o sexo de uma
pessoa e retorne seu peso ideal. Para homens, deverá calcular o peso ideal usando a
fórmula: PESO IDEAL = 72,7 x ALT - 58; para mulheres: PESO IDEAL = 62,1 x ALT -
44,7.*/

function pesoIdeal(altura,sexo){
    if(sexo === "M" | sexo === "m" | sexo === "masculino" ){
        peso = 72.7 * altura - 58 
    }else if(sexo === "F" | sexo === "f" | sexo === "feminino"){
        peso = 62.1 * altura * 44.7 
    }
    return peso
}

console.log(pesoIdeal(1.84,"m"))