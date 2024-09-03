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
    public ArrayList<Integer> selection(ArrayList<Integer> listaEntrada) {
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

    public ArrayList<Integer> insertion(ArrayList<Integer> listaEntrada) {

        // lógica do insertion

        return listaEntrada;
    }

    // Algoritmo de ordenação QuickSort
    public ArrayList<Integer> quicksort(ArrayList<Integer> listaEntrada) {
        // Chamada inicial com índices de toda a lista
        return quicksort(listaEntrada, 0, listaEntrada.size() - 1);
    }

    // Função privada algoritmo de ordenação QuickSort
    private ArrayList<Integer> quicksort(ArrayList<Integer> listaEntrada, int inicio, int fim) {
        if (inicio < fim) {
            // Encontra o índice do pivô após particionar o array
            int partitionIndex = partition(listaEntrada, inicio, fim);

            // Chama recursivamente quickSort para as duas partes divididas
            quicksort(listaEntrada, inicio, partitionIndex - 1);
            quicksort(listaEntrada, partitionIndex + 1, fim);
        }

        // Retorna a lista após a ordenação
        return listaEntrada;

    }

    // Função privada para particionar o array e retornar o índice do pivô
    private int partition(ArrayList<Integer> listaEntrada, int inicio, int fim) {
        // Escolhe o último elemento como pivô
        int pivot = listaEntrada.get(fim);
        int i = inicio - 1;
        int aux;

        // Itera sobre os elementos, colocando os menores à esquerda e os maiores à
        // direita do pivô
        for (int j = inicio; j < fim; j++) {
            if (listaEntrada.get(j) <= pivot) {
                i++;

                // Troca array[i] e array[j]
                aux = listaEntrada.get(i);
                listaEntrada.set(i, listaEntrada.get(j));
                listaEntrada.set(j, aux);
            }
        }

        // Troca array[i+1] e array[fim] (pivô)
        aux = listaEntrada.get(i + 1);
        listaEntrada.set(i + 1, listaEntrada.get(fim));
        listaEntrada.set(fim, aux);

        // Retorna o índice do pivô após a partição
        return i + 1;
    }

}
