<%-- 
    Document   : index
    Created on : 20/02/2019, 20:48:34
    Author     : Administrador
--%>



<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                if (confirm('Deseja realmente excluir o menu ' + nome + '?')) {
                    location.href = 'gerenciar_menu.do?acao=excluir&idmenu=' + id;
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
                                <a href="form_menu.jsp">
                                    <div class="box meusCards1 text-center" >
                                        <h1 class="font-light text-white"><i class="mdi mdi-library-plus"></i></h1>
                                        <h6 class="text-white">Cadastrar</h6>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <!-- Column -->
                        <div class="col-md-6 col-lg-6 col-xlg-6">
                            <div class="card card-hover">
                                <a href="listar_menu.jsp">
                                    <div class="box meusCards2 text-center" >
                                        <h1 class="font-light text-white"><i class="fas fa-search"></i></h1>
                                        <h6 class="text-white" >Consultar Menus</h6>
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
                                           table-hover display compact nowrap" id="listaMenu">
                                        <thead>
                                            <tr class="thead-dark text-center">
                                                <th>ID</th>
                                                <th>Menu</th>
                                                <th>Link</th>
                                                <th>Icone</th>
                                                <th>Exibir</th>
                                                <th>Opções</th>
                                            </tr>
                                        </thead>
                                        <jsp:useBean class="model.Menu" id="menu"/>
                                        <tbody>
                                            <c:forEach var="m" items="${menu.lista}">
                                                <tr class="text-center">
                                                    <td>${m.idmenu}</td>
                                                    <td>${m.menu}</td>
                                                    <td>${m.link}</td>
                                                    <td>${m.icone}</td>
                                                    <td>
                                                        <c:if test="${m.exibir==1}">Sim</c:if>
                                                        <c:if test="${m.exibir==2}">Não</c:if>
                                                        </td>
                                                        <td>
                                                        <a class="btn btn-primary" href="gerenciar_menu.do?acao=alterar&idmenu=${m.idmenu}">
                                                            <i class="fas fa-pencil-alt"></i>
                                                        </a>
                                                        <button class="btn btn-danger" onclick="confirmarExclusao(${m.idmenu}, '${m.menu}')">
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
                                                                $("#listaMenu").dataTable({
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