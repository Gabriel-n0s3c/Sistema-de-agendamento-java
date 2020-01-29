<%@page import="model.Produto"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Servico"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
    Produto p = new Produto();
    try {
        ArrayList<Produto> emFalta = p.getListaProdutoEmFalta();
        if (emFalta.isEmpty()) {
%>
<a class="nav-link dropdown-toggle waves-effect waves-dark" href="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="mdi mdi-bell font-24"> <span class="badge badge-danger badge-pill font-14" >${total}</span></i>
</a>
<div class="dropdown-menu semnotifica " id=""
    <ul class="list-group">  
        <li class="list-group-item">Sem notificações</li>
    
    </ul>
</div>

<%
} else {
    emFalta = p.getListaProdutoEmFalta();
    pageContext.setAttribute("as", emFalta);
    int total = emFalta.size();
    pageContext.setAttribute("total", total);
%> 
<a class="nav-link dropdown-toggle waves-effect waves-dark" href="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="mdi mdi-bell font-24"> <span class="badge badge-danger badge-pill font-14" >${total}</span></i>
</a>
<div class="dropdown-menu notificacoes " id="comnotificacoes" aria-labelledby="navbarDropdown" >

    <ul class="list-group">
        <c:forEach var="a" items="${as}">  
            <li class="list-group-item">O produto ${a.nome} está com estoque baixo - <span class="badge badge-danger badge-pill">${a.quantidade}</span> </li>

        </c:forEach>
    </ul>
</div>
<%        }

    } catch (Exception e) {
        System.out.println("Ruim: " + e);
    }
%>

