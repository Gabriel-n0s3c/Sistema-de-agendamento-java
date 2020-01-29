
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
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html dir="ltr" lang="pt-br">
    <head>
        <%@include file="required_meta.jsp" %>
    </head>
    <body>
        <!-- ============================================================== -->
        <!-- DIV PRINCIAL -->
        <!-- ============================================================== -->
        <div id="main-wrapper">
            <!-- ============================================================== -->
            <!-- MENU SUPERIOR -->
            <!-- ============================================================== -->
            <%@include  file="header.jsp" %>
            <!-- ============================================================== -->
            <!-- FIM DO MENU SUPERIOR -->
            <!-- ============================================================== -->

            <!-- ============================================================== -->
            <!-- MENU PRINCIPAL DA ESQUERDA  -->
            <!-- ============================================================== -->
            <%@include file="menu_admin.jsp" %>
            <!-- ============================================================== -->
            <!-- FIM MENU PRINCIPAL DA ESQUERDA  -->
            <!-- ============================================================== -->

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
                        <c:if test="${ulogado!=null && ulogado.perfil!=null}">
                            <c:forEach var="menu" items="${ulogado.perfil.menus}">
                                <c:if test="${menu.exibir==1}">
                                    <div class="col-md-4 col-lg-4 col-xlg-4">
                                        <div class="card card-hover">
                                            <a href="${menu.link}">
                                                <div class="box text-center"  style="background-color: #e6005c;">
                                                    <h1 class="font-light text-white"><i class="${menu.icone}"></i></h1>
                                                    <h6 class="text-white">${menu.menu}</h6>
                                                </div>
                                            </a>
                                        </div>
                                    </div>

                                </c:if>
                            </c:forEach>
                        </c:if>
                    </div>
                    <!-- ============================================================== -->
                    <!-- CONTEUDO - PRIMEIRO BLOCO -->
                    <!-- ============================================================== -->

                    <div class="row">
                        <div class="col-md-12">
                            <div class="card">
                                <div class="card-body">
                                    <div class="d-md-flex align-items-center">

                                        <div class="row">
                                            <!-- column -->
                                            <div class="col-lg-9">
                                                <div class="flot-chart">
                                                    <div class="flot-chart-content" id="flot-line-chart">
                                                        <h4 class="card-title">Painel de Gerência</h4>
                                                        <h5 class="card-subtitle">Agendamentos - Status</h5>
                                                        <canvas id="qtdAgendamento" width="600" height="200"></canvas>

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
                    </div>
                    <!-- ============================================================== -->
                    <!-- CONTEUDO - PRIMEIRA BLOCO -->
                    <!-- ============================================================== -->



                    <!-- ============================================================== -->
                    <!-- CONTEUDO - SEGUNDO BLOCO -->
                    <!-- ============================================================== -->
                    <div class="row">
                        <!-- column -->
                        <div class="col-lg-6">

                            <!-- Card -->
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="card-title">Serviços</h4>
                                    <canvas id="qtdserv" width="800" height="450"></canvas>


                                </div>
                            </div>
                            <jsp:useBean class="model.AgendamentoServico" id="agen"/>

                            <div class="card">
                                <div class="card-body">
                                    <h4 class="card-title m-b-0">Próximos Agendamentos</h4>
                                </div>
                                <ul class="list-style-none" style="min-height: 150px; max-height: 250px; overflow-y: scroll; ">
                                    <c:forEach var="a" items="${agen.listaDataDesc}">
                                        <li class="d-flex no-block card-body brabo">
                                            <i class="fa fa-check-circle w-30px m-t-5"></i>
                                            <div class="container mr-0">
                                                <div class="row ">
                                                    <div class="col-4  ">
                                                        <span class="">Cliente: ${a.agendamento.cliente.nome}</span><br>
                                                        <span class="">Serviço: ${a.servico.nome_servico} </span>
                                                    </div>
                                                    <div class="col-5">
                                                        <span>Funcionário: ${a.agendamento.funcionario.nome}</span><br> 
                                                        <span style="color: #008a00">R$ ${a.servico.preco}0</span>
                                                    </div>
                                                    <div class="col-3">
                                                        <div class="text-right">
                                                            <fmt:parseDate value="${a.agendamento.data}" pattern="yyyy-MM-dd" var="parsedDate" />
                                                            <h5 class="text-muted mb-0"><fmt:formatDate value="${parsedDate}" pattern="dd MMM yy" /></h5>
                                                            <span class="text-muted font-16">${a.horario}</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                        </li>
                                    </c:forEach>
                                </ul>
                            </div>
                        </div>
                        <!-- column -->

                        <div class="col-lg-6">
                            <!-- Card -->
                            <div class="card">
                                <div class="card-body">
                                    <canvas id="qtdPorFun" width="800" height="450"></canvas>

                                </div>
                            </div>
                            <!-- card -->
                            <div class="card">
                                <canvas id="qtdProduto" width="800" height="450"></canvas>

                            </div>

                            <!-- toggle part -->
                            
                            <!-- Tabs -->

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
        <script src="jquery/graficos.min.js"></script>

        <script type="text/javascript">

            var nome = [];
            <jsp:useBean class="model.AgendamentoServico" id="asd">


            new Chart(document.getElementById("qtdAgendamento"), {
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
            </jsp:useBean>
//--------------------------------------------------------------------------------------------------------------------------------------//
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

            var nome = [];
            var quan = [];

            <c:forEach var="a" items="${agend.quantidadePorFuncionario}">

            nome.push('${a.funcionario.nome}');
            quan.push(${a.idagendamento});


            </c:forEach>
            quan.push(0);
            quan.push(80);
            new Chart(document.getElementById("qtdPorFun"), {
                type: 'horizontalBar',
                data: {

                    labels: nome,
                    datasets: [{
                            label: "Atendimentos",
                            backgroundColor: ["#3e95cd", "#8e5ea2", "#", "#", "#"],
                            data: quan
                        }
                    ]
                },

                options: {
                    legend: {display: false},
                    title: {
                        display: true,
                        text: 'Atendimentos por funcionário'
                    }
                }
            });

//--------------------------------------------------------------------------------------------------------------------------------------//
            var back = [];
            nome = [];
            quan = [];
            <c:forEach var="p" items="${prod.quantidadePorProduto}">

            nome.push('${p.nome}');
            quan.push(${p.quantidade});
            if (${p.quantidade} <= 10) {
                back.push("#dd0000");
            } else if (${p.quantidade} > 10 && ${p.quantidade} <= 15) {
                back.push("#f9c804");
            } else {
                back.push("#65e018");
            }

            </c:forEach>
            quan.push(0);
            quan.push(100);

            new Chart(document.getElementById("qtdProduto"), {
                type: 'bar',
                data: {
                    labels: nome,
                    datasets: [{
                            label: "Quantidade",
                            backgroundColor: back,
                            data: quan
                        }]
                },
                options: {
                    legend: {display: false},
                    title: {
                        display: true,
                        text: 'Quantidade por produto (UND)'
                    }
                }
            });
        </script>



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
