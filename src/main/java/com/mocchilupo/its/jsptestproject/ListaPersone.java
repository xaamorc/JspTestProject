package com.mocchilupo.its.jsptestproject;

import java.util.ArrayList;
public class ListaPersone {
    private ArrayList<Persone> elenco;

    public ListaPersone(){
        this.elenco = new ArrayList<Persone>();
    }

    public ArrayList<Persone> getElenco(){
        return elenco;
    }

    public void addPersone(Persone persone){
        elenco.add(persone);
    }
}
