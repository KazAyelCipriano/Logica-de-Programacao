programa {
  inclua biblioteca Util --> u
  funcao inicio() {
        // inteiro vet[100]
       //  para(inteiro i = 0; i<= 99; i++){
        //    vet[i] = u.sorteia(1,100)
            
    }//bubblesort(vet)
    // para( i = 0; i<=99; i++){
     // escreva(vet[i]," ")  
    }
    
  }funcao bubblesort(inteiro v[]){
    inteiro aux,tam
     tam = u.numero_elementos(v)
       para(inteiro n =0;n<tam;n++){
        para(inteiro j =0;j< (tam - n - 1);j++){
          se(v[j] >v[j+1]){
            aux = v[j]
            v[j] = v[j+1]
            v[j+1] = aux
        }
      }
    }
  }
 
}
