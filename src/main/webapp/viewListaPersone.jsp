<%--
  Created by IntelliJ IDEA.
  User: ilrit
  Date: 23/07/2023
  Time: 21:49
  To change this template use File | Settings | File Templates.
--%>
<%@page import = "com.mocchilupo.its.jsptestproject.Persone" %>
<jsp:useBean id="listapersone" class="com.mocchilupo.its.jsptestproject.ListaPersone" scope="request" />
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Lista Persone</title>
</head>
<body>
      <h1>Lista Persone</h1>
      <table>
        <%
          int pos = 0;
          for(Persone persone : listapersone.getElenco()){
            out.println("<tr>"
                    +"<td>"+persone.getNome()+"</td>"
                    +"<td>"+persone.getCognome()+"</td>"
                    +"<td>"+persone.getData_di_nascita()+"</td>"
                    +"<td>"+persone.getEmail()+"</td>"
                    +"<td>"+persone.getTelefono()+"</td>"
            );
          }
        %>
      </table>
      <form action="controller.jsp" method="get">
          <input type="text" name="nome" />
          <input type="text" name="cognome" />
          <input type="text" name="data" />
          <input type="text" name="email" />
          <input type="text" name="telefono" />


          <input type="submit" value="Aggiungi" />
      </form>

</body>
</html>
