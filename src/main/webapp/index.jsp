<%@page import="com.mocchilupo.its.jsptestproject.ListaPersoneDAO"%>
<jsp:useBean id="listaPersone" class="com.mocchilupo.its.jsptestproject.ListaPersone" scope="request" />

<%-- Dopo aver salvato l'oggetto "nome" nello scope "request", sarà possibile accedervi
anche da altre parti della stessa pagina JSP o da altre pagine JSP incluse nella
stessa richiesta HTTP utilizzando la sintassi di espressione JSP
o di scriptlet JSP appropriata --%>

<%
    ListaPersoneDAO listaPersoneDAO = new ListaPersoneDAO();
    listaPersoneDAO.getPersoneList(listaPersone);
%>

<jsp:forward page="viewListaPersone.jsp" />