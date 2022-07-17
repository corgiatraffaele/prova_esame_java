package com.example.be_java.controller;

import com.example.be_java.models.Fermata;
import com.example.be_java.models.Linea;
import com.example.be_java.models.Preventivo;
import com.example.be_java.repository.FermataRepository;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;

//definiamo le chiamate API
@RestController
public class Contoller {

    //chiamata per tutte le fermate
    @GetMapping("/fermate")
    public ArrayList<Fermata> getFermate() {
      return FermataRepository.getFermate();
    };
//
//
//    //chiamate tutti preventivi
//    @GetMapping("/preventivi")
//    public ArrayList<Preventivo> getPreventivi() {
//        return;
//    }
//
//
//    //chiamate tutte linee
//    @GetMapping("/linee"){
//        public ArrayList<Linea> getLinee() {
//            return;
//        }
//    }
//
//    //chiamata per le linee_preventivo
//
//  @GetMapping("/linea"){
//        public
//  }


    }
