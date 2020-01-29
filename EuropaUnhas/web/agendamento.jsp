<%-- 
    Document   : Agendamento
    Created on : 20/02/2019, 20:48:34
    Author     : Gabriel Marques
--%>
<%@page import="model.AgendamentoServico"%>
<%@page import="model.Usuario"%>
<%@page import="model.Cliente"%>
<%@page import="model.Funcionario"%>
<%@page import="model.Agendamento"%>
<%@page import="model.Servico"%>
<%@page import="model.Menu"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html dir="ltr" lang="pt-br">
    <head>
        <%@include file="required_meta.jsp" %>
        <script src="jquery/jquery-3.2.1.min.js"></script>
        <script>
        </script>    
    </head>
    <body>
        <!-- ============================================================== -->
        <!-- DIV PRINCIAL -  -->
        <!-- ============================================================== -->
        <div id="main-wrapper">

            <!-- MENU SUPERIOR - -->
            <%@include file="header.jsp" %>
            <!-- FIM DO MENU SUPERIOR -->

            <!-- MENU PRINCIPAL DA ESQUERDA - -->
            <%@include file="menu_admin.jsp" %>

            <!-- CONTEUDO  -->
            <div class="page-wrapper">

                <!-- INFORMAÇÃO DE QUEM ESTÁ LOGADO -->
                <div class="page-breadcrumb">
                    <div class="row">
                        <div class="col-12 d-flex no-block align-items-center">
                            <h4 class="page-title">${ulogado.perfil} - ${usando.nome}</h4>
                            <div class="ml-auto text-right">
                            </div>
                        </div>
                    </div>
                </div>
                <!-- INFORMAÇÃO DE QUEM ESTÁ LOGADO -->

                <!-- CONTAINER DOS MINI BOTÕES  -->
                <div class="container-fluid" >
                    <!-- MINI BOTÕES -->
                    <div class="row">
                        <div class="col-md-6 col-lg-6 col-xlg-6">
                            <div class="card card-hover">
                                <a href="form_agendamento.jsp">
                                    <div class="box meusCards1 text-center"  >
                                        <h1 class="font-light text-white"><i class="mdi mdi-calendar-plus"></i></h1>
                                        <h6 class="text-white">Agendar</h6>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-6 col-xlg-6">
                            <div class="card card-hover">
                                <a href="listar_agendamento.jsp">
                                    <div class="box meusCards2 text-center" >
                                        <h1 class="font-light text-white"><i class="fas fa-search"></i></h1>
                                        <h6 class="text-white"  >Consultar Agendamentos</h6>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                    <!-- FINAL MINI BOTÕES -->

                    <!-- CONTEUDO DA PAGINA -->
                    <div class="row">
                        <div class="col-sm-12">
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
                                                <div class="">
                                                    <!-- card -->
                                                    <canvas id="bar-chart" width="600" height="200"></canvas>
                                                </div>
                                            </div>
                                        </div>

                                        <%@include file="mini_informacoes.jsp" %>
                                        <!-- COLUNA -->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- ============================================================== -->
                    <!-- FIM CONTEUDO DA PAGINA -->
                    <!-- ============================================================== -->

                    <!-- ============================================================== -->
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="card-title m-b-0">Relação de Agendamentos</h4>
                                </div>
                                <div>
                                    <canvas id="polar-chart" height="200"></canvas>
                                </div>
                            </div>

                        </div>
                        <div class="col-lg-6">
                            <jsp:useBean class="model.AgendamentoServico" id="agen">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="card-title m-b-0">Próximos Agendamentos</h4>
                                    </div>
                                    <ul class="list-style-none" style="min-height: 150px; max-height: 525px; overflow-y: scroll; ">
                                        <c:forEach var="a" items="${agen.listaDataDesc}">
                                            <li class="d-flex no-block card-body brabo">
                                                <i class="fa fa-check-circle w-30px m-t-5"></i>
                                                <div class="container mr-0">
                                                    <div class="row ">
                                                        <div class="col-4  ">
                                                            <span class="">Cliente: ${a.agendamento.cliente.nome}</span><br>
                                                            <span class="">Serviço: ${a.servico.nome_servico} </span>
                                                        </div>
                                                        <div class="col-4">
                                                            <span>Funcionário: ${a.agendamento.funcionario.nome}</span><br> 
                                                            <span style="color: #008a00">R$ ${a.servico.preco}0</span>
                                                        </div>
                                                        <div class="col-4">
                                                            <div class="text-right">
                                                                <fmt:parseDate value="${a.agendamento.data}" pattern="yyyy-MM-dd" var="parsedDate" />
                                                                <h5 class="text-muted mb-0"><fmt:formatDate value="${parsedDate}" pattern="dd MMMM yy" /></h5>
                                                                <span class="text-muted font-16">${a.horario}</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                        </c:forEach>
                                    </ul>
                                </div>
                            </jsp:useBean>
                        </div>
                    </div>
                    <!-- ============================================================== -->
                </div>
                <!-- FIM DO CONTEUDO  -->

                <!-- RODAPÉ -->
                <footer class="footer text-center">

                </footer>
                <!-- FINAL DO RODAPÉ -->
            </div>
            <!-- ============================================================== -->
            <!-- FINAL DA PÁGINA  -->
            <!-- ============================================================== -->
        </div>
        <!-- ============================================================== -->
        <!--  Jquery -->
        <!-- ============================================================== -->
        <script src="assets/libs/jquery/dist/jquery.min.js"></script>
        <!-- Bootstrap  -->
        <script src="assets/libs/popper.js/dist/umd/popper.min.js"></script>
        <script src="assets/libs/bootstrap/dist/js/bootstrap.min.js"></script>
        <script src="assets/libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js"></script>
        <script src="assets/extra-libs/sparkline/sparkline.js"></script>
        <!--Wave  -->
        <script src="dist/js/waves.js"></script>
        <!--Menu  -->
        <script src="dist/js/sidebarmenu.js"></script>
        <!-- JavaScript -->
        <script src="dist/js/custom.min.js"></script>
        <!-- JavaScript -->
        <script src="jquery/graficos.min.js"></script>

        <script type="text/javascript">

            var nome = [];
            <jsp:useBean class="model.AgendamentoServico" id="asd">


            new Chart(document.getElementById("bar-chart"), {
                type: 'bar',
                data: {
                    labels: ["Realizados", "Agendados", " Cancelados"],
                    datasets: [{
                            label: "",
                            backgroundColor: ["#67d328", "#e8d914", "#ba1414"],
                            data: [${asd.quantidadePorStatus.get(1)}, ${asd.quantidadePorStatus.get(0)}, ${asd.quantidadePorStatus.get(2)}, 0]
                        }]
                },
                options: {
                    legend: {display: false},
                    title: {
                        display: true,
                        text: 'Agendamentos'
                    }
                }
            });

            new Chart(document.getElementById("polar-chart"), {
                type: 'pie',
                data: {
                    labels: ["Realizados", "Agendados", " Cancelados"],
                    datasets: [{
                            label: "",
                            backgroundColor: ["#67d328", "#e8d914", "#ba1414"],
                            data: [${asd.quantidadePorStatus.get(1)}, ${asd.quantidadePorStatus.get(0)}, ${asd.quantidadePorStatus.get(2)}]
                        }]
                },
                options: {
                    legend: {display: false},
                    title: {
                        display: true,
                        text: 'Agendamentos'
                    }
                }
            });
            </jsp:useBean>
        </SCRIPT>
    </body>
</html>