package com.mocchilupo.its.jsptestproject;

import com.mocchilupo.its.jsptestproject.util.DataAccessObject;

import java.sql.*;

public class ListaPersoneDAO extends DataAccessObject<Persone> {


    public ListaPersoneDAO(){
        super();
    }


    public void getPersoneList(ListaPersone listaPersone){
        DatabaseConnectionManager dcm = new DatabaseConnectionManager("127.0.0.1:3306","anagrafe", "root","root");
        Persone persone;
        String sql = "SELECT * FROM persone ORDER BY id";

        try {
            Connection connection = dcm.getConnection();
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            while(resultSet.next()){
                persone = new Persone(resultSet.getString("nome"),resultSet.getString("cognome"),resultSet.getString("email"),resultSet.getString("data_di_nascita"),resultSet.getString("telefono"));
                listaPersone.addPersone(persone);
            }

        }catch(SQLException e){
            e.printStackTrace();
            throw new RuntimeException(e);
        }

    }

    public void addPersone(Persone persone, ListaPersone listaPersone){
        DatabaseConnectionManager dcm = new DatabaseConnectionManager("127.0.0.1:3306","anagrafe", "root","root");
        String sql = "INSERT INTO persone(nome, cognome, email, data_di_nascita, telefono) VALUES ( ?, ?, ?, ?, ?);";
        try {
            Connection connection = dcm.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(sql);

            preparedStatement.execute();
        }catch(SQLException e){
            e.printStackTrace();
            throw new RuntimeException(e);
        }
        listaPersone.addPersone(persone);
    }


}
