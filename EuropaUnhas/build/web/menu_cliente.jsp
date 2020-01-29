

<%@page import="model.Cliente"%>
<%@page import="model.Usuario"%>
<%@page import="controller.GerenciarLogin"%>

<%

    Cliente cliente = new Cliente();

    Usuario ulogado = GerenciarLogin.verificarAcesso(request, response);
    request.setAttribute("ulogado", ulogado);

    if (ulogado != null) {
        Cliente usua = cliente.getCarregaPorUsuario(ulogado.getIdusuario());
        request.setAttribute("c", usua);
    }

%>



<nav class="navbar navbar-expand-lg navbar-dark " style="background-color: #ffb4b4">
    <a class="navbar-brand ml-5" href="index_cliente.jsp">
        <img src="assets/images/logo-text1.png" alt="">
    </a>    
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarText">
        <ul class="navbar-nav mr-auto">
            <c:if test="${ulogado!=null && ulogado.perfil!=null}">
                <c:forEach var="menu" items="${ulogado.perfil.menus}">
                    <c:if test="${menu.exibir==1}">
                        <li class="nav-item"><a id="rosa"  class="nav-link mr-3"  href="${menu.link}" >${menu.menu}</a></li>
                    </c:if>
                </c:forEach>
            </c:if>
        </ul>
        <ul class="navbar-nav float-right">
            <!-- ============================================================== -->
            <!-- MINHA CONTA -->
            <!-- ============================================================== -->
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle text-muted waves-effect waves-dark pro-pic" href="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img src="assets/images/users/1.jpg" alt="user" class="rounded-circle" width="31"></a>
                <div class="dropdown-menu dropdown-menu-right user-dd animated">
                    <ul class="navbar-nav">
                        <a class="dropdown-item" href="minhaconta.jsp"><i class="mdi mdi-account"></i>Minha Conta</a>
                    </ul>
                    <ul class="navbar-nav">
                        <a class="dropdown-item" href="gerenciar_login.do"><i class="fa fa-power-off m-r-5 m-l-5"></i> Sair</a>
                    </ul>


                </div>
            </li>
            <!-- ============================================================== -->
            <!-- MINHA CONTA -->
            <!-- ============================================================== -->
        </ul>
    </div>
</nav>
