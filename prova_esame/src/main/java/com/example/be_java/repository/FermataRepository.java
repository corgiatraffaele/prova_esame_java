package com.example.be_java.repository;
//import java.sql.*;


import com.example.be_java.models.Fermata;

import java.sql.*;
import java.util.ArrayList;

public class FermataRepository {

    static final String DB_URL = "jdbc:mysql://localhost:3306/prova_esame";
    static final String USER = "root";
    static final String PASS = "";
    static final String QUERY = "SELECT id, nome, zona FROM fermata";

    public static ArrayList<Fermata> getFermate() {

        ArrayList<Fermata> fermate = new ArrayList<>();

        // Open a connection
        try{
            Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(QUERY);

            while(rs.next()){
                Fermata fermata = new Fermata(
                        rs.getInt("id"),
                        rs.getString("nome"),
                        rs.getString("zona")
                );
                fermate.add(fermata);
                //gestisci valori
                System.out.print("nome: " + rs.getString("nome"));
                System.out.print("zona: " + rs.getInt("zona"));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return fermate;
    }



}
