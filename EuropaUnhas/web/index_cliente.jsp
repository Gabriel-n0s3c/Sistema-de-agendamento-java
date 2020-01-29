<!doctype html>
<html lang="pt-br">
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <head>

        <!-- Bootstrap CSS -->
        <%@include file="required_meta.jsp" %>
                <link href="jquery/jquery-ui.css" rel="stylesheet">

        <title> Studio Europa Unhas</title>
    </head>
    <body>

        <%@include file="menu_cliente.jsp" %>


        <!-- ************************** CONTAINER CARDS ************************* --> 
        <div class="container mb-5">
            <div class="row">
                <div class="col-sm-12 text-center mt-5">
                    <img src="assets/images/section_tittle_icon.png" style="position: relative">
                    <h2>Serviços em Promoção</h2>
                    <p></p>
                    <hr height="50px" width="55% " class="mb-5">
                </div>
            </div>
            <div class="row justify-content-sm-center" >

                <jsp:useBean class="model.Servico" id="servico">
                    <div class="container-fluid ml-0 mr-0">
                        <div class="row">
                            <c:forEach var="s" items="${servico.promoAsc}">
                                <div class="col-lg-4 col-md-7 " >
                                    <div class="card" style=" border: 1px solid rgba(209, 208, 200,0.6); padding: 5px" >
                                        <img class="card-img-top" src="${s.link_img}" alt="${s.nome_servico}" style=" max-width:100%; max-height: 250px; border-radius: 4px;">
                                        <div class="card-body ">
                                            <div class="row mb-0">
                                                <div class="col-8">
                                                    <h5 class="card-title">${s.nome_servico}</h5>
                                                </div>
                                                <div class="col-4 text-right">
                                                    <H6 class="card-title  text-success">R$:${s.preco}0</H6>
                                                </div>

                                            </div>
                                            <hr>
                                            <p class="text-left"> ${s.descricao}</p>
                                        </div>
                                        <div class=" text-center mb-2">
                                            <a href="agendamento_cliente.jsp" ><button id="botao" class="btn btn-md text-center" >Agendar</button></a>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                </jsp:useBean>


            </div>
        </div>



        <div class="container mb-5" id="servicos">
            <div class="row">
                <div class="col-sm-12 text-center mt-5">
                    <img src="assets/images/section_tittle_icon.png" style="position: relative">
                    <h2>Serviços</h2>
                    <p></p>
                    <hr height="50px" width="55% " class="mb-5">
                </div>
            </div>
            <div class="row">
                <c:forEach var="s" items="${servico.lista}">
                    <div class="col-lg-6 col-md-12">
                        <div class="row mb-5">
                            <div class="col-3 text-right">
                                <img src="${s.link_img}" style="max-height: 50px; border-radius: 100px;">
                            </div>
                            <div class="col-6 text-left">
                                <span class="lead text-dark"> ${s.nome_servico}</span> <br>
                                <span class="text-muted" style="font-size: 10pt;">${s.descricao}</span>
                            </div>
                            <div class="col-3 text-left">
                                <span class="text-success">R$:${s.preco}0</span>
                            </div>
                        </div>
                    </div>
                </c:forEach>

            </div>
        </div>

        <!-- ************************** JUMBOTRON  ************************* -->
        <div class="jumbotron jumbotron-fluid">
            <div class="container">
                <div class="row">
                    <div class="col-6 text-center">
                        <div class="embed-responsive embed-responsive-4by3 ">

                            <iframe class="embed-responsive-item" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3839.394501485128!2d-47.89065278514516!3d-15.783139089058215!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x935a3af93cd48179%3A0xe0328d9fbf5a5f44!2sStudio+Europa+Unhas!5e0!3m2!1spt-BR!2sbr!4v1536791750607"  frameborder="0" style="border:0" allowfullscreen></iframe>
                        </div>

                    </div>

                    <div class=" col-md-6  ">
                        <h3 class="display-4">Endereço</h3>
                        <hr>
                        <p class="lead ">SRTVN 702 Edificio Brasilia Radio Center Sobreloja 09 Asa Norte Brasília.</p>
                        <br><br>
                        <div class="container">
                            <div class="row ">
                                <div class="col-6 col-sm-3">
                                    <a id="local" href="https://www.google.com/maps/dir//Studio+Europa+Unhas/@-15.7831279,-47.9585046,12z/data=!4m8!4m7!1m0!1m5!1m1!1s0x935a3af93cd48179:0xe0328d9fbf5a5f44!2m2!1d-47.8884641!2d-15.7831391"> <h6 class="lead "><img src="data:image/png;base64,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"> Definir rota.</h6></a>
                                </div>
                                <div class="col-6 col-sm-3">   
                                    <a id="local" class="justify-content-end" href="tel:061998828252"><h6 class="lead "><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADIAAAAyCAYAAAAeP4ixAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAJ0SURBVGhD7ZjLa1NBFMZHxQc+ENFSd4Loxq17Ef8Dt+JSRLpzY6moV9TknBgXBu9MvCiUblyEolhKK4godKHgyqr4H7hQXCrig3hmcqK5mWONhSYzMD/4yGLOSb7v3juPXJVIJBKJ8CiKjcrAeWVwUWl8LAsW6POcqw0WXZ2kEO2BpOESdwWIhoeiaVHwjLsCxMC8bFoSLHFXgKQgoaFxVjYtKeggcFs2LSnsIJdl05JCDtKE47JpSSEHaVTGZNOC7A4fNBpfi8ZLgmWVX9/LHYGicUo2z9LwUt2q7ubqgMnr+8jwTy+AE82LAndyZQRovO+FsCffItvKFZFg4LAfpHqGRyPD4Fw5CL5TjcZmHo2IZu0g3ZmvpTAGkUcjQ8OVUhANPyjcMR6NiOlsCxl/VQpj8IPKqwe4IiKalUM0Pz6Xw8Ab0i6uiAgDp8pBnF6ou7UdXBERBm/2BbEr2ZP49pZWawNNdv/lhA2TZ9u5KhLs1df41A8DzweaM3cq4+5i9L4nM/CAvqPVo3tK1yZUlq3nrjWiXt9GP77kApTkFoD9XOVT3NhD48t+31+Uw1nuXEPso6ThkffjGj6SgSNc9Qd70LSn5v76lWTv3FBwr1dxxjNg8Ds9MldVK9vUqaPHUbyD/xLMu/6h0G6vI9NTdPVox+8zovEtmTndmQd9YwNpmEG62GOL3fFFQ6vVKIJY3Iok/I9ZtUYVpIuBExTovWzufzTqIBa7qhm4RvoimxxEIQTpYt+0aKzQYvBJNrui5vhbAqKz75wkLZC+CaYlXeTuQLEngyYcpTtFyzbmpFlSz5EFF+mxuvB7H0okEolEOCj1CxCBh3pePjdnAAAAAElFTkSuQmCC">Ligue-nos.</h6></a>
                                </div>
                            </div>
                        </div>
                    </div>    
                </div>      
            </div> 
        </div>




   


        <hr width="80%">
        <footer >
            <p class="text-center ">Telefone: (61) 9132-1234<br>
                SRTVN 702 Edificio Brasilia Radio Center Sobreloja 09 Asa Norte Brasília - DF 70719-900 Brasil</p>

            <p class="text-center "> Copyright &copy; 2019.</p>
        </footer>
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
        <script src="jquery/external/jquery/jquery.js"></script>
    
    </body>
</html>
