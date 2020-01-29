<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html dir="ltr">
    <head>

        <%@include file="required_meta.jsp" %>
        <link rel="stylesheet" href="datatables/jquery.dataTables.min.css"/>
        <script type="text/javascript">
            function confirmarExclusao(idperfil, nome, idmenu) {
                if (confirm('Deseja realmente desvincular o menu ' + nome + '?')) {
                    location.href = 'gerenciar_menu_perfil.do?acao=desvincular&idperfil=' + idperfil + '&idmenu=' + idmenu;
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
                            <form name="form_inserir_perfil" 
                                  action="gerenciar_menu_perfil.do" method="POST">
                                <div class="row">
                                    <input type="hidden" name="idperfil" id="idperfil"
                                           value="${perfilv.idperfil}"/>
                                    <div class="form-group col-sm-8">
                                        <label for="perfil" class="control-label">
                                            Perfil: ${perfilv.perfil}
                                        </label>
                                        <br />
                                        <label for="idmenu" class="control-label">
                                            Menu
                                        </label>
                                        <select name="idmenu" id="idmenu" required=""  class="form-control">
                                            <option value="">Selecione o Menu</option>
                                            <c:forEach var="m" items="${perfilv.naoMenus}">
                                                <option value="${m.idmenu}">${m.menu}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </div>
                                <div class="row">
                                    <button class="btn btn-success">Vincular</button> &nbsp;
                                    <a href="listar_perfil.jsp" class="btn btn-warning">
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
                                    <h3 class="display-4">Menus Vinculados</h3>
                                    <table class="table table-striped table-bordered 
                                           table-hover " id="listaMenu">
                                        <thead>
                                            <tr class="thead-dark text-center">
                                                <th>ID</th>
                                                <th>Menu</th>
                                                <th>Link</th>
                                                <th>Desvincular</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach var="m" items="${perfilv.menus}">
                                                <tr class="text-center">
                                                    <td>${m.idmenu}</td>
                                                    <td>${m.menu}</td>
                                                    <td>${m.link}</td>
                                                    <td>
                                                        <button class="btn btn-danger" 
                                                                onclick="confirmarExclusao(${perfilv.idperfil}, '${m.menu}',${m.idmenu})">
                                                            <i class="fas fa-unlink"> </i>
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