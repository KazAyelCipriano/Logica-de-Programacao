function calcular(num1,num2,simb){

    switch(simb){
        case "+":
            console.log(somar(num1,num2))
            break
        case "-":
            console.log(subtrair(num1,num2))
            break
            case "*":
            console.log(multiplicar(num1,num2))
            break
        case "/":
            console.log(dividir(num1,num2))
            break
        default:
            console.log("Operação inválida")
        
    }


    function somar(num1,num2){
        return num1+num2
    }
    function subtrair(num1,num2){
        return num1-num2
    }
    function multiplicar(num1,num2){
        return num1*num2
    }
    function dividir(num1,num2){
        return num1/num2
    }
}

calcular(5,2,"a")