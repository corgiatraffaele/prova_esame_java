package com.example.be_java.models;

public class Preventivo {

    private int id;
    private String nome_azienda;
    private int max_fermate;
    private int max_extraurbane;
    private int max_zone;
    private double prezzo;

    public Preventivo(int id, String nome_azienda, int max_fermate, int max_extraurbane, int max_zone, double prezzo) {
        this.id = id;
        this.nome_azienda = nome_azienda;
        this.max_fermate = max_fermate;
        this.max_extraurbane = max_extraurbane;
        this.max_zone = max_zone;
        this.prezzo = prezzo;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNome_azienda() {
        return nome_azienda;
    }

    public void setNome_azienda(String nome_azienda) {
        this.nome_azienda = nome_azienda;
    }

    public int getMax_fermate() {
        return max_fermate;
    }

    public void setMax_fermate(int max_fermate) {
        this.max_fermate = max_fermate;
    }

    public int getMax_extraurbane() {
        return max_extraurbane;
    }

    public void setMax_extraurbane(int max_extraurbane) {
        this.max_extraurbane = max_extraurbane;
    }

    public int getMax_zone() {
        return max_zone;
    }

    public void setMax_zone(int max_zone) {
        this.max_zone = max_zone;
    }

    public double getPrezzo() {
        return prezzo;
    }

    public void setPrezzo(double prezzo) {
        this.prezzo = prezzo;
    }
}
