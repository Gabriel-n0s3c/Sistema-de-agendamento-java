
<%-- 
    Document   : index
    Created on : 20/02/2019, 20:48:34
    Author     : Administrador
--%>
<%@page import="model.Usuario"%>
<%@page import="model.Cliente"%>
<%@page import="model.Funcionario"%>
<%@page import="model.Agendamento"%>
<%@page import="model.Servico"%>
<%@page import="model.Menu"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html  dir="ltr" lang="pt-br">
    <head>
        <%@include file="required_meta.jsp" %>
        <script src="jquery/jquery-3.2.1.min.js"></script>
        <script>
        </script>    
    </head>

    <body>

        <!-- ============================================================== -->
        <!-- DIV PRINCIAL - pages.scss -->
        <!-- ============================================================== -->
        <div id="main-wrapper">
            <!-- ============================================================== -->
            <!-- MENU SUPERIOR -  pages.scss -->
            <!-- ============================================================== -->
            
            <%@include file="header.jsp" %>
                <!-- ============================================================== -->
                <!-- FIM DO MENU SUPERIOR -->
                <!-- ============================================================== -->
                <!-- ============================================================== -->
                <!-- MENU PRINCIPAL DA ESQUERDA - sidebar.scss  -->
                <!-- ============================================================== -->

            <%@include file="menu_admin.jsp" %>
            <!-- ============================================================== -->
            <!-- CONTEUDO  -->
            <!-- ============================================================== -->
            <div class="page-wrapper">
                <!-- ============================================================== -->
                <!-- INFORMAÇÃO DE QUEM ESTÁ LOGADO -->
                <!-- ============================================================== -->
                <div class="page-breadcrumb">
                    <div class="row">
                        <div class="col-12 d-flex no-block align-items-center">
                            <h4 class="page-title">${ulogado.perfil} - ${usando.nome}</h4>
                            <div class="ml-auto text-right">

                            </div>
                        </div>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- INFORMAÇÃO DE QUEM ESTÁ LOGADO -->
                <!-- ============================================================== -->
                <!-- ============================================================== -->
                <!-- CONTAINER DOS MINI BOTÕES  -->
                <!-- ============================================================== -->
                <div class="container-fluid" >
                    <!-- ============================================================== -->
                    <!-- MINI BOTÕES -->
                    <!-- ============================================================== -->
                    <div class="row">
                        <!-- Column -->
                        <div class="col-md-6 col-lg-6 col-xlg-6">
                            <div class="card card-hover">
                                <a href="form_usuario.jsp">
                                    <div class="box meusCards1 text-center" >
                                        <h1 class="font-light text-white"><i class="mdi mdi-account-plus"></i></h1>
                                        <h6 class="text-white">Cadastrar</h6>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <!-- Column -->
                        <div class="col-md-6 col-lg-6 col-xlg-6">
                            <div class="card card-hover">
                                <a href="listar_usuario.jsp">
                                    <div class="box meusCards2 text-center" >
                                        <h1 class="font-light text-white"><i class="fas fa-search"></i></h1>
                                        <h6 class="text-white"  >Consultar Usuários</h6>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <!-- Column -->
                    </div>
                    <!-- ============================================================== -->
                    <!-- CONTEUDO -->
                    <!-- ============================================================== -->
                    <!-- ============================================================== -->
                    <div class="row">
                        <div class="col-md-12">
                            <div class="card">
                                <div class="card-body">
                                    <div class="d-md-flex align-items-center">
                                        <div>
                                            <h4 class="card-title">Acompanhamento</h4>
                                            <h5 class="card-subtitle">Últimas atualizações</h5>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <!-- column -->
                                        <div class="col-lg-9">
                                            <div class="flot-chart">
                                                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                                            <ol class="carousel-indicators">
                                                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                                                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                                            </ol>
                                            <div class="carousel-inner bg-dark">
                                                <div class="carousel-item active">
                                                    <!-- card -->
                                                    <div class="card  bg-dark p-10 text-white mb-0 ">
                                                        <div class="card-body  mb-5">
                                                            <h4 class="card-title m-b-0 font-16">Clientes Adicionados Recentemente</h4>
                                                            <div class="m-t-20 ">
                                                                <div class="d-flex no-block align-items-center">
                                                                    <jsp:useBean class="model.Cliente" id="clie">
                                                                        <table class="table table-striped table-bordered 
                                                                               display table-sm bg-light text-dark mb-0">
                                                                            <tr class="text-center"> <th>ID</th>
                                                                                <th>Nome</th>
                                                                                <th>Email</th>
                                                                                <th>Login</th></tr>
                                                                                    <c:forEach var="c" items="${clie.ultimos}">
                                                                                <tr class="text-center ">
                                                                                    <td>${c.idcliente}</td>
                                                                                    <td>${c.nome}</td>
                                                                                    <td>${c.email}</td>
                                                                                    <td>${c.usuario.login}</td>
                                                                                </tr>
                                                                            </c:forEach>
                                                                        </table>
                                                                    </jsp:useBean>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="carousel-item ">
                                                    <!-- card -->
                                                    <div class="card mt-2 mb-4 bg-dark p-10 text-white   ">
                                                        <div class="card-body  mb-5">
                                                            <h4 class="card-title m-b-0 font-16">Agendamentos</h4>
                                                            <div class="m-t-20 ">
                                                                <div class="d-flex no-block align-items-center">
                                                                    <span>50% Agendados</span>
                                                                    <div class="ml-auto">
                                                                        <span>50</span>
                                                                    </div>
                                                                </div>
                                                                <div class="progress">
                                                                    <div class="progress-bar progress-bar-striped bg-warning" role="progressbar" style="width: 50%" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100"></div>
                                                                </div>
                                                            </div>
                                                            <div>
                                                                <div class="d-flex no-block align-items-center m-t-25">
                                                                    <span>40% Realizados</span>
                                                                    <div class="ml-auto">
                                                                        <span>40</span>
                                                                    </div>
                                                                </div>
                                                                <div class="progress">
                                                                    <div class="progress-bar progress-bar-striped bg-success" role="progressbar" style="width: 40%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                                                                </div>
                                                            </div>
                                                            <div>
                                                                <div class="d-flex no-block align-items-center m-t-25">
                                                                    <span>10% Cancelados</span>
                                                                    <div class="ml-auto">
                                                                        <span>10</span>
                                                                    </div>
                                                                </div>
                                                                <div class="progress">
                                                                    <div class="progress-bar progress-bar-striped bg-danger" role="progressbar" style="width: 10%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                            </div>
                                        </div>
                                        <%@include file="mini_informacoes.jsp" %>
                                        <!-- column -->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- ============================================================== -->
                    <!-- Sales chart -->
                    <!-- ============================================================== -->



                    <!-- ============================================================== -->
                    <!-- Recent comment and chats -->
                    <!-- ============================================================== -->
                    <div class="row">
                        <!-- column -->
                        
                        <div class="col-lg-12">
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="card-title m-b-0">Próximos Agendamentos</h4>
                                </div>
                                <ul class="list-style-none">
                                    <li class="d-flex no-block card-body">
                                        <i class="fa fa-check-circle w-30px m-t-5"></i>
                                        <div>
                                            <a href="#" class="m-b-0 font-medium p-0">Manicure</a>
                                            <span class="text-muted">Gabriel Marques - 16:00</span>
                                        </div>
                                        <div class="ml-auto">
                                            <div class="tetx-right">
                                                <h5 class="text-muted m-b-0">20</h5>
                                                <span class="text-muted font-16">Maio</span>
                                            </div>
                                        </div>
                                    </li>
                                   
                                </ul>
                            </div>
                        </div>
                        <!-- column -->

                    </div>
                    <!-- ============================================================== -->
                    <!-- SEGUNDO - BLOCO -->
                    <!-- ============================================================== -->
                </div>
                <!-- ============================================================== -->
                <!-- FIM DO CONTAINER - FLUID  -->
                <!-- ============================================================== -->
                
                
                <!-- ============================================================== -->
                <!-- RODAPÉ -->
                <!-- ============================================================== -->
                <footer class="footer text-center">
                    Gabriel Marques &COPY;
                </footer>
                <!-- ============================================================== -->
                <!-- RODAPÉ -->
                <!-- ============================================================== -->
            </div>
            <!-- ============================================================== -->
            <!-- FIM DA PÁGINA  -->
            <!-- ============================================================== -->
        </div>
        <!-- ============================================================== -->
        <!-- FIM DA DIV PRINCIPAL -->
        <!-- ============================================================== -->
        
        
        <!-- ============================================================== -->
        <!-- JQUERY UTILIZADO-->
        <!-- ============================================================== -->
        <script src="assets/libs/jquery/dist/jquery.min.js"></script>
        <!-- Bootstrap tether Core JavaScript -->
        <script src="assets/libs/popper.js/dist/umd/popper.min.js"></script>
        <script src="assets/libs/bootstrap/dist/js/bootstrap.min.js"></script>
        <script src="assets/libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js"></script>
        <script src="assets/extra-libs/sparkline/sparkline.js"></script>
        <!--Wave Effects -->
        <script src="dist/js/waves.js"></script>
        <!--Menu sidebar -->
        <script src="dist/js/sidebarmenu.js"></script>
        <!--Custom JavaScript -->
        <script src="dist/js/custom.min.js"></script>
        <!--This page JavaScript -->



    </body>

</html>