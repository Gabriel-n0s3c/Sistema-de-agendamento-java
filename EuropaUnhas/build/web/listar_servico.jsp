
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
                if (confirm('Deseja realmente excluir o servico ' + nome + '?')) {
                    location.href = 'gerenciar_servico.do?acao=excluir&idservico=' + id;
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
                                    <table class="table table-striped table-bordered 
                                           table-hover display compact nowrap" id="listaServico">
                                        <thead>
                                            <tr class="thead-dark text-center">
                                                <th>ID</th>
                                                <th>Nome</th>
                                                <th>Descricao</th>
                                                <th>Preço</th>
                                                <th>Duração</th>
                                                <th>Link Da Imagem</th>
                                                <th>Opções</th>
                                            </tr>
                                        </thead>
                                        <jsp:useBean class="model.Servico" id="servico"/>
                                        <tbody>
                                            <c:forEach var="s" items="${servico.lista}">
                                                <tr class="text-center">
                                                    <td>${s.idservico}</td>
                                                    <td>${s.nome_servico}</td>
                                                    <td>${s.descricao}</td>
                                                    <td>${s.preco}</td>
                                                    <td>
                                                        <c:if test="${s.duracao==1}">01:00 hr</c:if>
                                                        <c:if test="${s.duracao==2}">00:30 min</c:if>
                                                        </td>
                                                        <td>${s.link_img}</td>
                                                    <td >
                                                        <a class="btn btn-success" href="gerenciar_servico.do?acao=alterar&idservico=${s.idservico}">
                                                            <i class="fas fa-pencil-alt"></i>
                                                        </a>
                                                        <a class="btn btn-warning" data-toggle="modal" data-target="#ver${s.idservico}">
                                                            <i class="fas fas fa-eye text-white"></i>
                                                        </a>
                                                        <button class="btn btn-danger" onclick="confirmarExclusao(${s.idservico}, '${s.nome_servico}')">
                                                            <i class="fas fa-trash-alt"></i>
                                                        </button>   
                                                        <a class="btn btn-default" href="gerenciar_servico_produto.do?acao=gerenciar&idservico=${s.idservico}">
                                                            <i class=" fas fa-link"> Vincular produto </i>
                                                        </a>
                                                    </td>
                                                </tr>
                                                <!-- Modal -->
                                            <div class="modal fade" id="ver${s.idservico}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                                <div class="modal-dialog" role="document">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h5 class="modal-title" id="exampleModalLabel">${s.nome_servico}</h5>
                                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                <span aria-hidden="true">&times;</span>
                                                            </button>
                                                        </div>
                                                        <div class="modal-body">
                                                            <div class="row">
                                                                <div class="col-md-6 product_img">
                                                                    <img src="${s.link_img}" style="position: relative; max-width:  100%" class="img-responsive">
                                                                </div>
                                                                <div class="col-md-6 product_content">
                                                                    <h4>Serviço - <span>${s.nome_servico}</span></h4>
                                                                    <div class="rating">
                                                                        <span class="far fa-star"></span>
                                                                        <span class="far fa-star"></span>
                                                                        <span class="far fa-star"></span>
                                                                        <span class="far fa-star"></span>
                                                                        <span class=" far fa-star"></span>
                                                                    </div>
                                                                    <p></p>
                                                                    <p>${s.descricao}</p>
                                                                    <h3 class="cost">R$ ${s.preco}0 <small ></small></h3>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-danger" data-dismiss="modal">Fechar</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
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
                                                                $("#listaServico").dataTable({
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