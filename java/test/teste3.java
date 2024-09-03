package test;

import java.util.ArrayList;
import utils.GerarNums;

public class teste3 {

    // Algoritmo de ordenação QuickSort
    public void quickSort(ArrayList<Integer> listaEntrada, int inicio, int fim) {
        if (inicio < fim) {
            // Encontra o índice do pivô após particionar o array
            int partitionIndex = partition(listaEntrada, inicio, fim);

            // Chama recursivamente quickSort para as duas partes divididas
            quickSort(listaEntrada, inicio, partitionIndex - 1);
            quickSort(listaEntrada, partitionIndex + 1, fim);
        }
    }

    // Função para particionar o array e retornar o índice do pivô
    public int partition(ArrayList<Integer> listaEntrada, int inicio, int fim) {
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

    public static void main(String[] args) {
        GerarNums gerar = new GerarNums();
        ArrayList<Integer> listDeso = gerar.aleatorio(10);
        System.out.println(listDeso);

        teste3 obj = new teste3();
        obj.quickSort(listDeso, 0, listDeso.size() - 1);

        System.out.println(listDeso);
    }
}
