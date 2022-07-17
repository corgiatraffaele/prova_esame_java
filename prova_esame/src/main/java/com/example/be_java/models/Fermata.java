package com.example.be_java.models;

public class Fermata {

    private int id;
    private String nome_fermata;
    private String zona;

    public Fermata(int id, String nome_fermata, String zona) {
        this.id = id;
        this.nome_fermata = nome_fermata;
        this.zona = zona;
    }


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNome_fermata() {
        return nome_fermata;
    }

    public void setNome_fermata(String nome_fermata) {
        this.nome_fermata = nome_fermata;
    }

    public String getZona() {
        return zona;
    }

    public void setZona(String zona) {
        this.zona = zona;
    }
}
