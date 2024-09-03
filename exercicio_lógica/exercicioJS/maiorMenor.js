//Faça uma sub-rotina que leia cinco valores inteiros, determine e mostre o maior e o menor deles.

function maiorMenor(num1,num2,num3,num4,num5){
    temp = 0 
    houveTroca = true
    while(houveTroca){
        houveTroca = false 

        if(num1<num2){
            temp = num1
            num1 = num2 
            num2 = temp
            houveTroca = true
        }else if(num2 < num3){
            temp = num2
            num2 = num3 
            num3 = temp
            houveTroca = true
        }else if(num3 < num4){
            temp = num3 
            num3 = num4 
            num4 = temp 
            houveTroca = true
        }else if(num4 < num5){
            temp = num4
            num4 = num5
            num5 = temp
            houveTroca = true
        }
    }
    resultado = `Maior = ${num1} \nMenor = ${num5}`
    console.log(resultado)
}

maiorMenor(132,24,57,100,1)