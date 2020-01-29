
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
                                <a href="form_cliente.jsp">
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
                                <a href="listar_cliente.jsp">
                                    <div class="box meusCards2 text-center" >
                                        <h1 class="font-light text-white"><i class="fas fa-search"></i></h1>
                                        <h6 class="text-white"  >Consultar Clientes</h6>
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
                                        <div class="col-lg-9">
                                            <div class="flot-chart">
                                                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel" >
                                                    <ol class="carousel-indicators" >
                                                        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                                                        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                                                    </ol>
                                                    <div class="carousel-inner" style="min-height: 350px;">
                                                        <div class="carousel-item active">
                                                            <!-- card -->
                                                            <div class="card p-10 mb-0 ">
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
                                                            <div class="card mt-2 mb-4  p-10    ">
                                                                <div class="card-body ">

                                                                    <canvas id="qtdPorStatus"  height="100%"></canvas>

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
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="card">
                                <div class="col-12">
                                    <div class="card-body">
                                        <canvas id="FrequenciaCliente" width="800" height="450"></canvas>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="card">
                                <div class="col-12">
                                    <div class="card-body">

                                        <canvas id="desistentes" width="800" height="450"></canvas>

                                    </div>
                                </div>
                            </div>
                        </div>

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

        <script src="jquery/graficos.min.js"></script>

        <script type="text/javascript">
            new Chart(document.getElementById("qtdPorStatus"), {
                type: 'doughnut',
                data: {
                    labels: ["Não ativos", "Ativos"],
                    datasets: [
                        {
                            label: "Status",
                            backgroundColor: ["#3e95cd", "#8e5ea2"],
                            data: [${cli.quantidadePorStatus.get(0)},${cli.quantidadePorStatus.get(1)}]
                        }
                    ]
                },
                options: {
                    title: {
                        display: true,
                        text: 'Relação de clientes'
                    }
                }
            });



            var nome = [];
            var quan = [];

            <c:forEach var="a" items="${agend.quantidadePorClienteFrequente}">

            nome.push('${a.cliente.nome}');
            quan.push(${a.idagendamento});

            </c:forEach>
            quan.push(0);
            quan.push(80);
            new Chart(document.getElementById("FrequenciaCliente"), {
                type: 'horizontalBar',
                data: {

                    labels: nome,
                    datasets: [{
                            label: "Serviços realizados",
                            backgroundColor: ["#3e95cd", "#8e5ea2", "#ded", "#123", "#111"],
                            data: quan
                        }
                    ]
                },

                options: {
                    legend: {display: false},
                    title: {
                        display: true,
                        text: 'TOP 10 Cliente c/ serviços realizados'
                    }
                }
            });

            var nome = [];
            var quan = [];
            var back = [];
            <c:forEach var="a" items="${agend.quantidadePorClienteDesistente}">

            nome.push('${a.cliente.nome}');
            quan.push(${a.idagendamento});
            back.push("#ce0606")
            </c:forEach>
            quan.push(0);
            quan.push(80);
            new Chart(document.getElementById("desistentes"), {
                type: 'horizontalBar',
                data: {

                    labels: nome,
                    datasets: [{
                            label: "Serviços cancelados",
                            backgroundColor: back,
                            data: quan
                        }
                    ]
                },

                options: {
                    legend: {display: false},
                    title: {
                        display: true,
                        text: 'TOP 10 Cliente c/ serviços não realizados'
                    }
                }
            });
        </script>
    </body>
</html>