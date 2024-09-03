package utils;

import java.util.ArrayList;

public class AlgsOrdenacao {
    
    // Algoritmo de ordenação Bubble Sort
    public ArrayList<Integer> bubble(ArrayList<Integer> listaEntrada) {
        boolean houveTroca = true;

        // Loop principal que continua enquanto houver trocas a serem feitas
        while (houveTroca) {
            int j = 0;
            int aux;
            houveTroca = false;

            // Loop que percorre a lista comparando elementos adjacentes
            for (int i = 1; i < listaEntrada.size(); i++) {

                // Se o elemento atual for maior que o próximo, realiza a troca
                if (listaEntrada.get(j) > listaEntrada.get(i)) {
                    aux = listaEntrada.get(j);
                    listaEntrada.set(j, listaEntrada.get(i));
                    listaEntrada.set(i, aux);
                    houveTroca = true;
                }

                j++;
            }
        }

        return listaEntrada;
    }

    // Algoritmo de ordenação Selection Sort
    public ArrayList<Integer> selection(ArrayList<Integer> listaEntrada){
        int aux;
        int menor;
    
        // Loop que percorre a lista selecionando o menor elemento
        for (int i = 0; i < listaEntrada.size() - 1; i++) {
            menor = i;
    
            // Loop que busca o menor elemento no restante da lista
            for (int j = i + 1; j < listaEntrada.size(); j++) {
                if (listaEntrada.get(j) < listaEntrada.get(menor)) {
                    menor = j;
                }
            }
    
            // Troca o elemento atual com o menor elemento encontrado
            aux = listaEntrada.get(menor);
            listaEntrada.set(menor, listaEntrada.get(i));
            listaEntrada.set(i, aux);
        }
    
        return listaEntrada;
    }

    public ArrayList<Integer> insertion(ArrayList<Integer> listaEntrada){
        
        //lógica do insertion

        return listaEntrada;
    }

}

    
