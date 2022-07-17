package com.example.be_java.models.payload;

import com.example.be_java.models.Preventivo;

public class LineaConPreventivo {
    private int id;
    private String nome_linea;
    private Preventivo preventivo;

    public LineaConPreventivo(int id, String nome_linea, Preventivo preventivo) {
        this.id = id;
        this.nome_linea = nome_linea;
        this.preventivo = preventivo;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNome_linea() {
        return nome_linea;
    }

    public void setNome_linea(String nome_linea) {
        this.nome_linea = nome_linea;
    }

    public Preventivo getPreventivo() {
        return preventivo;
    }

    public void setPreventivo(Preventivo preventivo) {
        this.preventivo = preventivo;
    }
}
