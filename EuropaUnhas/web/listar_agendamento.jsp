

<%-- 
    Document   : index
    Created on : 20/02/2019, 20:48:34
    Author     : Administrador
--%>



<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html dir="ltr" lang="pt-br">

    <head>
        <%@include file="required_meta.jsp" %>
        <link rel="stylesheet" href="datatables/jquery.dataTables.min.css"/>
        <!-- Custom CSS -->
        <link href="dist/css/style.min.css" rel="stylesheet">

        <script type="text/javascript">
            function confirmarExclusao(id, nome, idservico) {
                if (confirm('Deseja realmente excluir o agendamento ' + nome + '?')) {
                    location.href = 'gerenciar_agendamento.do?acao=excluir&idagendamento=' + id + '&idservico=' + idservico;
                }
            }



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
                                <a href="form_agendamento.jsp">
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
                                <a href="listar_agendamento.jsp">
                                    <div class="box meusCards2 text-center" >
                                        <h1 class="font-light text-white"><i class="fas fa-search"></i></h1>
                                        <h6 class="text-white"  >Consultar Agendamentos</h6>
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
                                    <table class="table table-striped table-bordered 
                                           table-hover display" id="listaAgendamento">
                                        <thead>
                                            <tr>
                                                <th>ID</th>
                                                <th>Data</th>
                                                <th>Horário</th>
                                                <th>Status</th>
                                                <th>Serviço</th>
                                                <th>Duração</th>
                                                <th>Valor</th>
                                                <th>Cliente</th>
                                                <th>Funcionário</th>
                                                <th>Opções</th>
                                            </tr>
                                        </thead>

                                        <jsp:useBean class="model.AgendamentoServico" id="agendamento"/>
                                        <tbody>
                                            <c:forEach var="a" items="${agendamento.lista}">
                                                <tr class="text-center">
                                                    <td>${a.agendamento.idagendamento}</td>
                                                    <td> 
                                                        <fmt:parseDate value="${a.agendamento.data}" pattern="yyyy-MM-dd" var="parsedDate" />
                                                        <fmt:formatDate value="${parsedDate}" pattern="dd/MM/yyyy" />
                                                    </td>
                                                    <td>${a.horario}</td>
                                                    <td>
                                                        <input hidden="" type="hidden" value="${a.status}" id="statusAntigo${a.agendamento.idagendamento}${a.servico.idservico}">
                                                        <select id="status${a.agendamento.idagendamento}${a.servico.idservico}" 
                                                                name="status" required="" class="form-control " 
                                                                onchange="atualizarStatus(${a.agendamento.idagendamento},${a.servico.idservico})"
                                                                <c:if test="${a.status==0}">
                                                                    style="background-color: orange; color:black"
                                                                </c:if>  
                                                                <c:if test="${a.status==1}">
                                                                    style="background-color: #0b0; color:black"
                                                                </c:if>
                                                                <c:if test="${a.status==2}">
                                                                    style="background-color: #ff3111; color:black"
                                                                </c:if>


                                                                >
                                                            <c:if test="${a.status==0}">
                                                                <option value="0" selected="">Agendado</option>
                                                                <option value="1">Realizado</option>
                                                                <option value="2">Não Realizado</option>
                                                            </c:if>  
                                                            <c:if test="${a.status==1}">
                                                                <option value="0">Agendado</option>
                                                                <option value="1" selected="">Realizado</option>
                                                                <option value="2">Não Realizado</option>
                                                            </c:if>
                                                            <c:if test="${a.status==2}">
                                                                <option value="0">Agendado</option>
                                                                <option value="1">Realizado</option>
                                                                <option value="2" selected="">Não Realizado</option>
                                                            </c:if>
                                                        </select>
                                                    </td>
                                                    <td>${a.servico.nome_servico}</td>
                                                    <td>
                                                        <c:if test="${a.servico.duracao==1}">1 hora</c:if>
                                                        <c:if test="${a.servico.duracao==2}">30 min</c:if>
                                                        </td>
                                                        <td>${a.agendamento.valor}</td>
                                                    <td>${a.agendamento.cliente.nome}</td>
                                                    <td>${a.agendamento.funcionario.nome}</td>
                                                    <td>
                                                        <a class="btn btn-primary" href="gerenciar_agendamento.do?acao=alterar&idagendamento=${a.agendamento.idagendamento}&idservico=${a.servico.idservico}">
                                                            <i class="fas fa-pencil-alt"></i>
                                                        </a>
                                                        <a class="btn btn-success" target="_blank" href="gerenciar_agendamento.do?acao=relatorio&idagendamento=${a.agendamento.idagendamento}&idservico=${a.servico.idservico}">
                                                            <i class=" fas fa-print"></i>
                                                        </a>
                                                        <button class="btn btn-danger" onclick="confirmarExclusao(${a.agendamento.idagendamento}, '${a.agendamento.idagendamento}', ${a.servico.idservico})">
                                                            <i class="fas fa-trash-alt"></i>
                                                        </button>    
                                                    </td>
                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>   
                                </div>
                            </div>
                        </div>
                    </div>
                    <footer class="footer text-center">

                    </footer>
                </div>
            </div>
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
            <script type="text/javascript" src="datatables/jquery.dataTables.min.js"></script>
            <script type="text/javascript">

                                                            function atualizarStatus(idagendamento, idservico) {
                                                                var status = $("#status" + idagendamento + idservico).val();
                                                                var statusAntigo = $("#statusAntigo" + idagendamento + idservico).val();

                                                                if (status == 1) {
                                                                    if (confirm("Deseja atualizar o agendamento " + idagendamento + " para REALIZADO?")) {
                                                                        $.ajax({
                                                                            url: "buscaAjax/atualizaStatus.jsp",
                                                                            data: {idagendamento: idagendamento,
                                                                                idservico: idservico,
                                                                                status: status,
                                                                                statusAntigo: statusAntigo
                                                                            }, //Parametros com os valores da data e id
                                                                            method: "POST", //Método de envio.
                                                                            success: function (data)
                                                                            {
                                                                                
                                                                            }
                                                                        });
                                                                    }
                                                                } else if ((status == 2 || status == 0) && statusAntigo == 1) {
                                                                    if (confirm("Deseja atualizar o agendamento " + idagendamento + " para NÃO REALIZADO?")) {
                                                                        $.ajax({
                                                                            url: "buscaAjax/atualizaStatus.jsp",
                                                                            data: {idagendamento: idagendamento,
                                                                                idservico: idservico,
                                                                                status: status,
                                                                                statusAntigo: statusAntigo
                                                                            }, //Parametros com os valores da data e id
                                                                            method: "POST", //Método de envio.
                                                                            success: function (data)
                                                                            {
                                                                            }
                                                                        });
                                                                    }
                                                                } else {
                                                                    if (confirm("Deseja atualizar o agendamento " + idagendamento + "? ")) {
                                                                        $.ajax({
                                                                            url: "buscaAjax/atualizaStatus.jsp",
                                                                            data: {idagendamento: idagendamento,
                                                                                idservico: idservico,
                                                                                status: status,
                                                                                statusAntigo: statusAntigo
                                                                            }, //Parametros com os valores da data e id
                                                                            method: "POST", //Método de envio.
                                                                            success: function (data)
                                                                            {
                                                                                
                                                                            }
                                                                        });


                                                                    }
                                                                }
                                                                
                                                                alert("Agendamento atualizado!");
                                                                $(location).attr("href","listar_agendamento.jsp");
                                                                
                                                            }
            </script>


            <script type="text/javascript" src="datatables/jquery.dataTables.min.js"></script>
            <script type="text/javascript">
                                                            $(document).ready(function () {
                                                                $("#listaAgendamento").dataTable({
                                                                    bJQueryUI: true,
                                                                    autoWidth: false,
                                                                    scrollY: true,
                                                                    scrollX: true,
                                                                    scrollCollapse: true,
                                                                    paging: true,
                                                                    fixedColumns: {
                                                                        heightMatch: 'none'
                                                                    },
                                                                    "oLanguage": {
                                                                        "sProcessing": "Processando...",
                                                                        "sLengthMenu": "Mostrar _MENU_ registros",
                                                                        "sZeroRecords": "Não foram encontrados resultados",
                                                                        "sInfo": "Mostrando de _START_ até _END_ de _TOTAL_ registros",
                                                                        "sInfoEmpty": "Mostrando de 0 até 0 de 0 registros",
                                                                        "sInfoFiltered": "",
                                                                        "sInfopostFix": "",
                                                                        "sSearch": "Pesquisar:",
                                                                        "sURL": "",
                                                                        "oPaginate": {
                                                                            "sFirst": "Primeiro",
                                                                            "sPrevious": "Anterior",
                                                                            "sNext": "Próximos",
                                                                            "sLast": "Último"
                                                                        }
                                                                    }
                                                                });
                                                            });
            </script>  

    </body>

</html>