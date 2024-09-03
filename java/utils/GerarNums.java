package utils;

import java.util.ArrayList;
import java.util.Random;

public class GerarNums {

    // Método privado para sortear um número aleatório entre min e max (inclusive)
    private int sortear(int min, int max) {
        Random random = new Random();
        return random.nextInt((max - min) + 1) + min;
    }

    // Gera uma lista em ordem crescente
    public ArrayList<Integer> crescente(int tamanho) {
        ArrayList<Integer> listSaida = new ArrayList<>();
        int num = 0;

        // Loop que preenche a lista com números em ordem crescente
        for (int i = 0; i < tamanho; i++) {
            listSaida.add(num);
            num += sortear(0, 4); // Incrementa o número por um valor aleatório entre 0 e 4
        }

        return listSaida;
    }

    // Gera uma lista em ordem decrescente
    public ArrayList<Integer> decrescente(int tamanho) {
        ArrayList<Integer> listSaida = new ArrayList<>();
        int num = tamanho * 2;

        // Loop que preenche a lista com números em ordem decrescente
        for (int i = 0; i < tamanho; i++) {
            listSaida.add(num);
            num -= sortear(0, 4); // Decrementa o número por um valor aleatório entre 0 e 4
        }

        return listSaida;
    }

    // Gera uma lista com números aleatórios
    public ArrayList<Integer> aleatorio(int tamanho) {
        ArrayList<Integer> listSaida = new ArrayList<>();

        // Loop que preenche a lista com números aleatórios
        for (int i = 0; i < tamanho; i++) {
            int num = sortear(0, tamanho);
            listSaida.add(num);
        }

        return listSaida;
    }

}
