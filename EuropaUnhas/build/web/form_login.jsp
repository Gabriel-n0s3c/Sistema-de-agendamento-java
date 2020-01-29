
<!DOCTYPE html>
<html dir="ltr">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <head>

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
    </head>

    <body>
        <div class="main-wrapper">
            <!-- ============================================================== -->
            <!-- TELA DE CARREGAMENTO
            <!-- ============================================================== -->
            <div class="preloader">
                <div class="lds-ripple">
                    <div class="lds-pos"></div>
                    <div class="lds-pos"></div>
                </div>
            </div>
            <!-- ============================================================== -->
            <!-- FIM DA TELA DE CARREGAMENTO -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- LOGIN -->
            <!-- ============================================================== -->
            <div class="auth-wrapper d-flex no-block justify-content-center align-items-center bg-dark">
                <div class="auth-box bg-dark border-top border-secondary">
                    <div id="loginform">
                        <div class="text-center p-t-20 p-b-20">
                            <span class="db"><img src="assets/images/logo1.png" alt="logo" /></span>
                        </div>
                        <!-- FORMULARIO -->
                        <form class="form-horizontal m-t-20" id="loginform" action="gerenciar_login.do" method="POST">
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
                            <div class="row border-top border-secondary">
                                <div class="col-12">
                                    <div class="form-group">
                                        <div class="p-t-20">
                                            <button class="btn btn-info float-right" type="submit">Entrar</button>
                                            <button type="button" class="btn pull-right btn-success" data-toggle="modal" data-target="#exampleModal"><i class="fas fa-profile"></i>Cadastra-se</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div id="recoverform">
                        <div class="text-center">
                            <span class="text-white">Insira o email para receber as instruções para recuperação da senha.</span>
                        </div>
                        <div class="row m-t-20">
                            <!-- Form -->
                            <form class="col-12" action="index.html">
                                <!-- email -->
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text bg-danger text-white" id="basic-addon1"><i class="ti-email"></i></span>
                                    </div>
                                    <input type="text" class="form-control form-control-lg" placeholder="Email Address" aria-label="Username" aria-describedby="basic-addon1">
                                </div>
                                <!-- pwd -->
                                <div class="row m-t-20 p-t-20 border-top border-secondary">
                                    <div class="col-12">
                                        <a class="btn btn-success" href="#" id="to-login" name="action">Back To Login</a>
                                        <button class="btn btn-info float-right" type="button" name="action">Recover</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

            <div class="modal fade " id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-lg  modal-dialog-centered " role="document">
                    <div class="modal-content" >
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Cadastra-se</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
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
                                            <input type="text" id="data" name="dataNasc" autocomplete="off" class="form-control" value="${cliente.dataNasc}" required="" ><p></p>
                                        </section>
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
                                            <input type="text" name="telefone" id="telefone"
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
                        <div class="modal-footer">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- ============================================================== -->
        <!-- All Required js -->
        <!-- ============================================================== -->
        <script src="assets/libs/jquery/dist/jquery.min.js"></script>
        <!-- Bootstrap tether Core JavaScript -->
        <script src="assets/libs/popper.js/dist/umd/popper.min.js"></script>
        <script src="assets/libs/bootstrap/dist/js/bootstrap.min.js"></script>
        <!-- ============================================================== -->
        <!-- This page plugin js -->
        <!-- ============================================================== -->
        <script>

                                                $('[data-toggle="tooltip"]').tooltip();
                                                $(".preloader").fadeOut();
                                                // ============================================================== 
                                                // Login and Recover Password 
                                                // ============================================================== 
                                                $('#to-recover').on("click", function () {
                                                    $("#loginform").slideUp();
                                                    $("#recoverform").fadeIn();
                                                });
                                                $('#to-login').click(function () {

                                                    $("#recoverform").hide();
                                                    $("#loginform").fadeIn();
                                                });
        </script>


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