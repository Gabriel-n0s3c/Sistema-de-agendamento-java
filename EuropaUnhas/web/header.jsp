
<div class="preloader">
    <div class="lds-ripple">
        <div class="lds-pos"></div>
        <div class="lds-pos"></div>
    </div>
</div>

<header class="topbar" data-navbarbg="skin5" >
    <nav class="navbar top-navbar navbar-expand-md navbar-dark">
        <div class="navbar-header" data-logobg="skin5">
            <!-- PARA VER SOMENTE NO CELULAR -->
            <a class="nav-toggler waves-effect waves-light d-block d-md-none" href="javascript:void(0)"><i class="ti-menu ti-close"></i></a>
            <!-- ============================================================== -->
            <!-- Logo -->
            <!-- ============================================================== -->
            <%@include file="logo.jsp" %>
            <!-- ============================================================== -->
            <!-- FIM DA LOGO -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- VISIVEL NO CELULAR -->
            <!-- ============================================================== -->
            <a class="topbartoggler d-block d-md-none waves-effect waves-light" href="" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><i class="ti-more"></i></a>
        </div>
        <!-- ============================================================== -->
        <!-- FIM DA LOGO -->
        <!-- ============================================================== -->
        <div class="navbar-collapse collapse" id="navbarSupportedContent" data-navbarbg="skin5">
            <!-- ============================================================== -->
            <!-- NAV ITENS -->
            <!-- ============================================================== -->
            <ul class="navbar-nav float-left mr-auto">
                <li class="nav-item d-none d-md-block"><a class="nav-link sidebartoggler waves-effect waves-light" href="javascript:void(0)" data-sidebartype="mini-sidebar"><i class="mdi mdi-menu font-24"></i></a></li>

            </ul>
            <!-- ============================================================== -->
            <!-- MENU SUPERIO DA DIREITA -->
            <!-- ============================================================== -->
            <ul class="navbar-nav float-right">
                <!-- ============================================================== -->
                            <!-- NOTIFICAÇÕES -->
                            <!-- ============================================================== -->
                            <li class="nav-item dropdown" id="notificacoes">
                                
                            </li>
                            <!-- ============================================================== -->
                            <!-- NOTIFICAÇÃO -->
                            <!-- ============================================================== -->
                            
                            <!-- ============================================================== -->
                            <!-- MENSAGEM -->
                            <!-- ============================================================== -->
                            <!-- ============================================================== -->
                            <!-- FIM MENSAGEM -->
                            <!-- ============================================================== -->

                            <!-- ============================================================== -->
                            <!-- MINHA CONTA -->
                            <!-- ============================================================== -->
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle text-muted waves-effect waves-dark pro-pic" href="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img src="assets/images/users/1.jpg" alt="user" class="rounded-circle" width="31"></a>
                                <div class="dropdown-menu dropdown-menu-right user-dd animated">
                                    <ul class="navbar-nav">
                                        <c:if test="${ulogado!=null}"> </c:if>
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
</header>

<script src="jquery/jquery-3.4.1.min.js"></script>
<script>
//*************************************************************ATUALIZAR HORÁRIOS DE ACORDO COM A DATA E FUNCIONARIO*************************************************************************

    $(function() {
        $.ajax({
            url: "buscaAjax/notificacoes.jsp", //Local do arquivo
            method: "POST", //Método de envio.
            success: function (data)
            {
                $("#notificacoes").html(data); //O retorno da ação será aplicado nesta div.
            }
        });
    });
</script>