

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html dir="ltr">
   <head>

        <%@include file="required_meta.jsp" %>
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
                              action="gerenciar_perfil.do" method="POST">
                            <div class="row">
                                <input type="hidden" name="idperfil" id="idperfil"
                                       value="${perfil.idperfil}"/>
                                <div class="form-group col-sm-8">
                                    <label for="perfil" class="control-label">
                                        Perfil
                                    </label>
                                    <input type="text" name="perfil" id="perfil"
                                           class="form-control" required=""
                                           value="${perfil.perfil}"/>
                                </div>
                            </div>
                            <div class="row">
                                <button class="btn btn-primary">Gravar</button> &nbsp;
                                <a href="perfil.jsp" class="btn btn-success">
                                    Voltar
                                </a>    
                            </div>
                        </form>
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

</script>
</body>

</html>