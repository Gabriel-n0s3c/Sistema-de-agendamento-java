<!doctype html>
<html lang="pt-br">
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <head>

        <!-- Bootstrap CSS -->
        <%@include file="required_meta.jsp" %>
        <link href="jquery/jquery-ui.css" rel="stylesheet">
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js" type="text/javascript"></script>
        <script src="http://digitalbush.com/files/jquery/maskedinput/rc3/jquery.maskedinput.js" type="text/javascript"></script>
        <script>
            jQuery(function ($) {
                $("#cpf").mask("999.999.999-99");
            });
        </script>


        <script type="text/javascript" >

            function limpa_formulário_cep() {
                //Limpa valores do formulário de cep.
                document.getElementById('endereco').value = ("");
            }

            function meu_callback(conteudo) {
                if (!("erro" in conteudo)) {
                    //Atualiza os campos com os valores.
                    document.getElementById('endereco').value = (conteudo.logradouro);
                } //end if.
                else {
                    //CEP não Encontrado.
                    limpa_formulário_cep();
                    alert("CEP não encontrado.");
                }
            }

            function pesquisacep(valor) {

                //Nova variável "cep" somente com dígitos.
                var cep = valor.replace(/\D/g, '');

                //Verifica se campo cep possui valor informado.
                if (cep != "") {

                    //Expressão regular para validar o CEP.
                    var validacep = /^[0-9]{8}$/;

                    //Valida o formato do CEP.
                    if (validacep.test(cep)) {

                        //Preenche os campos com "..." enquanto consulta webservice.
                        document.getElementById('endereco').value = "...";

                        //Cria um elemento javascript.
                        var script = document.createElement('script');

                        //Sincroniza com o callback.
                        script.src = 'https://viacep.com.br/ws/' + cep + '/json/?callback=meu_callback';

                        //Insere script no documento e carrega o conteúdo.
                        document.body.appendChild(script);

                    } //end if.
                    else {
                        //cep é inválido.
                        limpa_formulário_cep();
                        alert("Formato de CEP inválido.");
                    }
                } //end if.
                else {
                    //cep sem valor, limpa formulário.
                    limpa_formulário_cep();
                }
            }
            ;

        </script>
        <script>
    function formatar(mascara, documento){
          var i = documento.value.length;
          var saida = mascara.substring(0,1);
          var texto = mascara.substring(i)

          if (texto.substring(0,1) != saida){
                    documento.value += texto.substring(0,1);
          }

        }
      </script>

        <title> Studio Europa Unhas</title>
    </head>
    <body>

        <!-- ************************** CAROUSEL ************************* --> 


        <!-- ************************** NAV BAR ************************* --> 
        <nav class="navbar navbar-expand-lg navbar-dark " style="background-color: #ffb4b4">
            <a class="navbar-brand ml-5" href="index.jsp">
                <img src="assets/images/logo-text1.png" alt="">
            </a>    
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarText">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item"><a id="rosa"  class="nav-link mr-3" href="index.jsp">Home</a></li>
                    <li class="nav-item"><a id="rosa"  class="nav-link mr-3" href="agendamento.jsp">Agendamento</a></li>
                    <li class="nav-item"><a id="rosa" class="nav-link" href="#servicos">Serviços</a></li>
                </ul>
                <span class="navbar-text">
                    <button type="button" id="rosa" class="btn pull-right btn-light  " data-toggle="modal" data-target="#exampleModal"><i class="fas fa-profile"></i> Acessar/Cadastrar</button>
                </span>
            </div>
        </nav>
        <section class="banner_part">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-6">
                        <div class="banner_text">
                            <div class="banner_text_iner">
                                <h5>Seja bem vindo</h5>
                                <h1>Garantia de Satisfação</h1>
                                <p>Alongamento de unhas com técnica, produtos e material importado da Europa e Estados Unidos. Profissionais altamente especializados.
                                    Agende um atendimento e venha nos conhecer!</p>
                                <button id="botao1" class="btn btn-lg btn-outline-light mr-2">Agendar</button>
                                <a id="local" class="justify-content-end" href="tel:061998828252" ><button id="botao2" class="btn btn-lg btn-light">Contate-nos</button></a>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="mt-3 mb-3">
            <div class="container">
                <div class="row" style="">
                    <div class="col-lg-7 mr1">
                        <img src="assets/images/model.jpg" id="sobrenos" class="mr-auto" >
                    </div>
                    <div class="col-lg-4 text-dark">
                        <p class="display-4"><span style="background-color: #ff7777;color: white ">Sobr</span>e nós</p>
                        <p class="lead" align="justify" style="text-indent: 25px; ">Nós somos uma empresa especialista em alongamentos de unhas em gel, acrigel e fibra de vidro. Pensando em nossos clientes, oferecemos os melhores produtos, além de atendimento com profissionais qualificados. Com mais de um ano, o estúdio está localizado em Brasília, Asa norte (DF) oferecendo do melhor serviço de manicure e pedicure da região.</p>
                    </div>
                </div>
            </div>
        </section>




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
                                            <a href="agendameto_cliente.jsp" ><button id="botao" class="btn btn-md text-center" >Agendar</button></a>
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




        <div class="modal fade " id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg  modal-dialog-centered " role="document">
                <div class="modal-content" >
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Acessar/Cadastrar</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <nav>
                            <div class="nav nav-tabs" id="nav-tab" role="tablist">
                                <a class="nav-item nav-link active" id="nav-login-tab" data-toggle="tab" href="#nav-login" role="tab" aria-controls="nav-login" aria-selected="true">Login</a>
                                <a class="nav-item nav-link" id="nav-cadastrar-tab" data-toggle="tab" href="#nav-cadastrar" role="tab" aria-controls="nav-cadastrar" aria-selected="false">Cadastrar</a>
                            </div>
                        </nav>
                        <div class="tab-content" id="nav-tabContent">
                            <div class="tab-pane fade show active" id="nav-login" role="tabpanel" aria-labelledby="nav-home-tab">
                                <div id="loginform mt-3">
                                    <form class="form-horizontal mt-3" id="loginform" action="gerenciar_login.do" method="POST">
                                        <div class="row p-b-30">
                                            <div class="col-12">
                                                <div class="input-group mb-3">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text bg-info text-white" id="basic-addon1"><i class="ti-user"></i></span>
                                                    </div>
                                                    <input class="form-control form-control-lg" placeholder="Login" aria-label="Login" aria-describedby="basic-addon1" required=""
                                                           type="text" name="login" class="form-control"
                                                           id="login" value="" required="">
                                                </div>
                                                <div class="input-group mb-3">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text text-white" id="basic-addon2" style="background-color:#cc0066 "><i class="ti-pencil"></i></span>
                                                    </div>
                                                    <input  type="password" name="senha"  class="form-control form-control-lg" placeholder="Senha" aria-label="Senha" aria-describedby="basic-addon1" required="">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="p-t-20">
                                                <button class="btn btn-info btn-block" type="submit">Entrar</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="nav-cadastrar" role="tabpanel" aria-labelledby="nav-cadastrar-tab">
                                <div class="card-body wizard-content ">
                                    <form name="form_cliente" action="gerenciar_cliente.do" method="POST">
                                        <div>
                                            <h3>Dados Pessoais</h3>
                                            <section>

                                                <input type="hidden" name="idcliente" id="idcliente"
                                                       class="form-control" value="${cliente.idcliente}"/>


                                                <input type="hidden" name="idusuario" id="idcliente"
                                                       class="form-control" value="${cliente.usuario.idusuario}"/>

                                                <input type="hidden" name="escolha" id="acao" class="form-control" 
                                                       <c:if test="${cliente.idcliente > 0}">
                                                           value="alterar"
                                                       </c:if>
                                                       <c:if test="${cliente.idcliente == null}">
                                                           value="cadastrar"
                                                       </c:if> /> 
                                                <section>
                                                    <label for="nome" class="control-label">Nome</label>
                                                    <input type="text" name="nome" id="nome" class="form-control" required=""  value="${cliente.nome}"/> 
                                                </section>
                                                <section>
                                                    <p></p><label for="dataNasc" class="control-label" >Data de Nascimento</label>
                                                    <fmt:parseDate value="${cliente.dataNasc}" pattern="yyyy-MM-dd" var="parsedDate" />
                                                    <input type="text" id="data" name="dataNasc" autocomplete="off" class="form-control" value=" <fmt:formatDate value="${parsedDate}" pattern="dd/MM/yyyy" />" required="" ><p></p>                                                </section>
                                                <section>
                                                    <label for="cpf" class="control-label ">CPF</label>
                                                    <input type="text" name="cpf" id="cpf" class="form-control" maxlength="14" data-mask="000.000.000-00"  value="${cliente.cpf}"/>
                                                </section>
                                                <section>
                                                    <label for="sexo" class="control-label">Sexo</label>
                                                    <select name="sexo" required="" class="form-control">
                                                        <c:if test="${cliente.sexo==null}">
                                                            <option value="n">Escolha uma opção</option>
                                                            <option value="m">Masculino</option>
                                                            <option value="f">Feminino</option>
                                                        </c:if>  
                                                        <c:if test="${cliente.sexo=='m'}">
                                                            <option value="m" selected="">Masculino</option>
                                                            <option value="f">Feminino</option>
                                                        </c:if>
                                                        <c:if test="${cliente.sexo=='f'}">
                                                            <option value="m">Masculino</option>
                                                            <option value="f" selected="">Feminino</option>
                                                        </c:if>
                                                    </select>
                                                </section>
                                                <section>
                                                    <label for="email" class="control-label">Email</label>
                                                    <input type="email" name="email" id="email" class="form-control" value="${cliente.email}"/>
                                                    <section></section>
                                                    <label for="cep" class="control-label">CEP</label>
                                                    <input class="form-control" type="text" id="cep" value="" size="10" maxlength="9" onblur="pesquisacep(this.value);" /></label><br />

                                                    <label for="endereco" class="control-label">
                                                        Endereco
                                                    </label>
                                                    <input type="text" name="endereco" id="endereco"
                                                           class="form-control" value="${cliente.endereco}"/>
                                                </section>
                                                <section>
                                                    <label for="telefone" class="control-label">
                                                        Telefone
                                                    </label>
                                                    <input type="text" name="telefone" id="telefone" placeholder="(61) 99999-9999" maxlength="13" OnKeyPress="formatar('##-#####-####', this)"
                                                           class="form-control" value="${cliente.telefone}"/>


                                                    <input type="hidden" name="status" id="status" value="1"/>
                                                    <input type="hidden" name="idusuario" id="status" value="${usuario.idusuario}"/>


                                                    <input id="idperfil" type="hidden" name="idperfil" required=""
                                                           <jsp:useBean class="model.Perfil" id="perfil"/>
                                                           <c:forEach var="p" items="${perfil.lista}">
                                                               <c:if test="${p.perfil=='Cliente'}">
                                                                   value="${p.idperfil}"
                                                               </c:if> 
                                                           </c:forEach>
                                                           >
                                                </section>
                                            </section>
                                            <p></p>
                                            <h3>Dados de Login</h3>
                                            <section>
                                                <label for="login" class="control-label">
                                                    Login
                                                </label>
                                                <input type="text" name="login" id="login"
                                                       class="form-control" required=""
                                                       value="${cliente.usuario.login}"/>

                                                <label for="senha" class="control-label">
                                                    Senha
                                                </label>
                                                <input type="password" name="senha" id="senha"
                                                       class="form-control" value="${cliente.usuario.senha}"/>


                                            </section>
                                            <p></p>
                                            <section>
                                                <button class="btn btn-block btn-primary" value="submit">Cadastrar</button> &nbsp;
                                            </section>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
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
        <script src="jquery/jquery-ui.js"></script>
        <script>
                                                        //****************************************************************EDITAR CALENDÁRIO*********************************************************************

                                                        $("#data").datepicker({
                                                            maxDate: "-7Y +10D",
                                                            changeYear: true,
                                                            changeMonth: true,
                                                            showOtherMonths: true,
                                                            selectOtherMonths: true,
                                                            showMonthAfterYear: true,
                                                            yearRange: '1940:2013',

                                                        });

        </script>


    </body>
</html>
