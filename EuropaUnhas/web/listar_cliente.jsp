
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
        <script src="jquery/jquery-3.2.1.min.js"></script>

        <script type="text/javascript">
            function confirmarExclusao(id, nome) {
                if (confirm('Deseja realmente excluir o cliente ' + nome + '?')) {
                    location.href = 'gerenciar_cliente.do?acao=excluir&idcliente=' + id;
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

            <%@include file="header.jsp" %>                <!-- ============================================================== -->
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
                                        <h1 class="font-light text-white"><i class="mdi mdi-account-multiple-plus"></i></h1>
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
                                    <table class="table table-striped table-bordered 
           table-hover display compact nowrap" 
                                           id="listaCliente">
                                        <thead>
                                            <tr class="thead-dark text-center">
                                                <th>ID</th>
                                                <th>Nome</th>
                                                <th>Data de Nascimento</th>
                                                <th>CPF</th>
                                                <th>sexo</th>
                                                <th>Email</th>
                                                <th>Endereço</th>
                                                <th>Telefone</th>
                                                <th>Login</th>
                                                <th>Status</th>
                                                <th>Perfil</th>
                                                <th>Opções</th>
                                            </tr>
                                        </thead>

                                        <jsp:useBean class="model.Cliente" id="cliente"/>
                                        <tbody>
                                            <c:forEach var="f" items="${cliente.lista}">
                                                <tr class="text-center">
                                                    <td>${f.idcliente}</td>
                                                    <td>${f.nome}</td>
                                                    <td> 
                                                        <fmt:parseDate value="${f.dataNasc}" pattern="yyyy-MM-dd" var="parsedDate" />
                                                        <fmt:formatDate value="${parsedDate}" pattern="dd/MM/yyyy" />
                                                    </td>
                                                    <td>${f.cpf}</td>
                                                    <td>${f.sexo}</td>
                                                    <td>${f.email}</td>
                                                    <td>${f.endereco}</td>
                                                    <td>${f.telefone}</td>
                                                    <td>${f.usuario.login}</td>
                                                    <td>
                                                        <c:if test="${f.usuario.status==1}">Ativo</c:if>
                                                        <c:if test="${f.usuario.status==2}">Inativo</c:if>
                                                        </td>
                                                        <td>${f.usuario.perfil}</td>
                                                    <td>
                                                        <a class="btn btn-primary" href="gerenciar_cliente.do?acao=alterar&idcliente=${f.idcliente}">
                                                            <i class="fas fa-pencil-alt"></i>
                                                        </a>
                                                        <button class="btn btn-danger" onclick="confirmarExclusao(${f.idcliente}, '${f.nome}')">
                                                            <i class=" fas fa-trash-alt"></i>
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
                                                            $(document).ready(function () {
                                                                $("#listaCliente").dataTable({
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