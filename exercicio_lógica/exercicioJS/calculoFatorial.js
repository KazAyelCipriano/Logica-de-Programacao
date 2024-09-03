/*function calculoFatoria(num){
    var num1 = num 
    if(num > 0 ){
        var acum = 1
        while(num > 1){
            acum*=num
            num--
        }
        console.log(`${num1}! = ${acum}`)
    }else{
        return "Número negativo, resultado fora do conjunto dos reais"
        
    }
}

calculoFatoria(10)*/

function recursividadeFatorial(n){
    if(n<0){
        return "Valor de entrada inválido"
    }else if(n<2){
        return 1
    }else{
        return recursividadeFatorial(n-1) * n
    }
}

console.log(recursividadeFatorial(10))