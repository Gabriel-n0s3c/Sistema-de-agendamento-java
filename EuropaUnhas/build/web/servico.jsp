
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
            
            <%@include  file="header.jsp" %>
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
                                <a href="form_servico.jsp">
                                    <div class="box meusCards1 text-center" >
                                        <h1 class="font-light text-white"><i class="fas fa-plus"></i></h1>
                                        <h6 class="text-white">Cadastrar</h6>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <!-- Column -->
                        <div class="col-md-6 col-lg-6 col-xlg-6">
                            <div class="card card-hover">
                                <a href="listar_servico.jsp">
                                    <div class="box meusCards2 text-center" >
                                        <h1 class="font-light text-white"><i class="fas fa-search"></i></h1>
                                        <h6 class="text-white"  >Consultar Serviços</h6>
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
                                        <div class="col-9">
                                             <canvas id="qtdserv" width="800" height="450"></canvas>
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
                                    <h4 class="card-title m-b-0">Preço por serviço</h4>
                                </div>
                                 <canvas id="precoServ" width="800" height="450"></canvas>
                            </div>
                        </div>
                        <!-- column -->

                    </div>
                    <!-- ============================================================== -->
                    <!-- Recent comment and chats -->
                    <!-- ============================================================== -->
                </div>
                <!-- ============================================================== -->
                <!-- End Container fluid  -->
                <!-- ============================================================== -->
                <!-- ============================================================== -->
                <!-- footer -->
                <!-- ============================================================== -->
                <footer class="footer text-center">

                </footer>
                <!-- ============================================================== -->
                <!-- End footer -->
                <!-- ============================================================== -->
            </div>
            <!-- ============================================================== -->
            <!-- End Page wrapper  -->
            <!-- ============================================================== -->
        </div>
        <!-- ============================================================== -->
        <!-- End Wrapper -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- All Jquery -->
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


<script src="jquery/graficos.min.js"></script>

        <script type="text/javascript">
        <jsp:useBean class="model.Servico" id="servico"/>

            var nome = [];
            var quan = [];
            <c:forEach var="s" items="${servico.quantidadeRealizada}">

            nome.push('${s.nome_servico}');
            quan.push(${s.idservico});
            </c:forEach>
            var back = ["#e5550d", "#d3e021", "#73e021", "#21e0a0", "#2c92e0", "#c242f4", "#41f4d6", "#f4af41"];
            new Chart(document.getElementById("qtdserv"), {
                type: 'pie',
                data: {
                    labels: nome,
                    datasets: [{
                            label: "quantidade realizada",
                            backgroundColor: back,
                            data: quan
                        }]
                },
                options: {
                    title: {
                        display: true,
                        text: 'Serviços mais realizados'
                    }
                }
            });

//--------------------------------------------------------------------------------------------------------------------------------------//
      var back = [];
            nome = [];
            quan = [];
        <c:forEach var="p" items="${serv.precoPorServ}">

            nome.push('${p.nome_servico}');
            quan.push(${p.preco});
            if (${p.preco} <= 10) {
                back.push("#7ab572");
            } else if (${p.preco} > 10 && ${p.preco} <= 15) {
                back.push("#7ab572");
            } else {
                back.push("#7ab572");
            }

            </c:forEach>
            quan.push(0);
            quan.push(100);

            new Chart(document.getElementById("precoServ"), {
                type: 'bar',
                data: {
                    labels: nome,
                    datasets: [{
                            label: "Preço - R$",
                            backgroundColor: back,
                            data: quan
                        }]
                },
                options: {
                    legend: {display: false},
                    title: {
                        display: true,
                        text: ''
                    }
                }
            });
    </script>
        
        
    </body>

</html>