<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html dir="ltr">
    <head>

        <%@include file="required_meta.jsp" %>
        <link rel="stylesheet" href="datatables/jquery.dataTables.min.css"/>
        <script type="text/javascript">
            function confirmarExclusao(idproduto, nome, idservico) {
                if (confirm('Deseja realmente desvincular o produto ' + nome + '?')) {
                    location.href = 'gerenciar_servico_produto.do?acao=desvincular&idservico=' + idservico + '&idproduto=' + idproduto;
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
                <div class="container-fluid">
                    <!-- ============================================================== -->
                    <!-- Start Page Content -->
                    <!-- ============================================================== -->
                    <div class="card">
                        <div class="card-body wizard-content">
                            <form name="form_inserir_servico" 
                                  action="gerenciar_servico_produto.do" method="POST">
                                <div class="row">
                                    <input type="hidden" name="idservico" id="idservico"
                                           value="${servicop.servico.idservico}"/>

                                    <div class="form-group col-sm-8">
                                        <h4 class="">Serviço - ${servicop.servico.nome_servico}</h6>
                                            <p></p>

                                            <label for="idproduto" class="control-label">
                                                Produto:
                                            </label>
                                            <select name="idproduto" id="idproduto" required="" class="form-control">
                                                <option value="">Selecione o Produto</option>
                                                <c:forEach var="p" items="${servicop.produtosNaoVinculados}">
                                                    <option value="${p.idproduto}"> ${p.idproduto} ${p.nome} </option>
                                                </c:forEach>
                                            </select>
                                            <p></p>

                                            <label for="quantidade" class="control-label">
                                                Quantidade utilizada por serviço:
                                            </label>
                                            <input type="number" name="quantidade" id="idservico" min="0"
                                                   value="0" required="" class="form-control"/>
                                            <br>

                                            </div>
                                            </div>
                                            <div class="row">
                                                <button class="btn btn-success">Vincular</button>&nbsp;
                                                <a href="listar_servico.jsp" class="btn btn-warning">
                                                    Voltar
                                                </a>    
                                            </div>
                                            </form>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="card">
                                            <div class="card-body">
                                                <h3 class="display-4">Produtos Vinculados</h3>
                                                <table class="table table-striped table-bordered 
                                                       table-hover display" id="listaMenu">
                                                    <thead>
                                                        <tr class="thead-dark text-center">
                                                            <th>ID</th>
                                                            <th>Produto</th>
                                                            <th>Descrição</th>
                                                            <th>Quantidade no estoque</th>
                                                            <th>Quantidade utilizada</th>
                                                            <th>Desvincular</th>

                                                        </tr>
                                                    </thead>

                                                    <tbody>
                                                        <c:forEach var="p" items="${servicop.produtosVinculados}">
                                                            <tr class="text-center">
                                                                <td>${p.produto.idproduto}</td>
                                                                <td>${p.produto.nome}</td>
                                                                <td>${p.produto.descricao}</td>
                                                                <th>${p.produto.quantidade}</th>
                                                                <th>${p.descontarqtd}</th>
                                                                <td>
                                                                    <button class="btn btn-danger" 
                                                                            onclick="confirmarExclusao(${p.produto.idproduto}, '${p.produto.nome}',${servicop.servico.idservico})">
                                                                        <i class=" fas fa-unlink"> </i>
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
                <!-- slimscrollbar scrollbar JavaScript -->
                <script src="assets/libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js"></script>
                <script src="assets/extra-libs/sparkline/sparkline.js"></script>
                <!--Wave Effects -->
                <script src="dist/js/waves.js"></script>
                <!--Menu sidebar -->
                <script src="dist/js/sidebarmenu.js"></script>
                <!--Custom JavaScript -->
                <script src="dist/js/custom.min.js"></script>
                <!-- this page js -->
                <script src="assets/libs/jquery-steps/build/jquery.steps.min.js"></script>
                <script src="assets/libs/jquery-validation/dist/jquery.validate.min.js"></script>
                <script type="text/javascript" src="datatables/jquery.js"></script>
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



                </script>
                </body>

                </html>