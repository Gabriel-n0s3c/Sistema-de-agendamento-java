<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html dir="ltr">
    <head>
        <link href="jquery/jquery-ui.css" rel="stylesheet">

        <%@include file="required_meta.jsp" %>
    </head>
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
                                        <input type="text" id="data" name="dataNasc" autocomplete="off" class="form-control" value=" <fmt:formatDate value="${parsedDate}" pattern="dd/MM/yyyy" />" required="" ><p></p>
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
                                    <button class="btn btn-primary" value="submit">Gravar</button> &nbsp;
                                    <a  href="cliente.jsp" class="btn btn-success">
                                        Voltar
                                    </a>  
                                </section>
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