<%@page import="com.mocchilupo.its.jsptestproject.Persone" %>
<%@page import="com.mocchilupo.its.jsptestproject.ListaPersone" %>
<%@page import="com.mocchilupo.its.jsptestproject.ListaPersoneDAO" %>


<%


    String nome = request.getParameter("nome");
    if (nome == null){
        nome = "";
    }

    String cognome = request.getParameter("cognome");
    if (cognome == null){
        cognome = "";
    }

    String data = request.getParameter("data");
    if (data == null){
        data = "";
    }

    String email = request.getParameter("email");
    if (email == null){
        email = "";
    }

    String telefono = request.getParameter("telefono");
    if (telefono == null){
        telefono = "";
    }

    Persone persone = new Persone(nome,cognome,data,email,telefono);

    ListaPersone listaPersone = new ListaPersone();
    ListaPersoneDAO listaPersoneDAO = new ListaPersoneDAO();

    listaPersoneDAO.addPersone(persone,listaPersone);

    response.sendRedirect("index.jsp");
%>