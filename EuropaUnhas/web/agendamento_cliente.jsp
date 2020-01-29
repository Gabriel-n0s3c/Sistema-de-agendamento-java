<%@page import="java.util.ArrayList"%>
<%@page import="model.AgendamentoServico"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html dir="ltr">
    <head>
        <%@include file="required_meta.jsp" %>
        <link href="jquery/jquery-ui.css" rel="stylesheet">
        <link rel="stylesheet" href="datatables/jquery.dataTables.min.css"/>

        <script type="text/javascript">
            function confirmarExclusao(id, nome, idservico) {
                if (confirm('Deseja realmente excluir o agendamento ' + nome + '?')) {
                    location.href = 'gerenciar_agendamento.do?acao=excluir&idagendamento=' + id + '&idservico=' + idservico + '&cliente=1';
                }
            }
        </script>   

    </head>
    <body onload="verificarAltera()" >

        <%@include file="menu_cliente.jsp" %>        

        <div class="jumbotron jumbotron-fluid" style="background-image:  linear-gradient(white, pink)">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12">
                        <nav>
                            <div class="nav nav-pills " id="nav-tab" role="tablist">
                                <a class="nav-item nav-link active" id="link" data-toggle="tab" href="#meu-agendar" role="tab" aria-controls="nav-agenda" aria-selected="true">Agendar</a>
                                <a class="nav-item nav-link " id="link" data-toggle="tab" href="#meu-agendamento" role="tab" aria-controls="nav-meus-agendar" aria-selected="false">Meus Agendamentos</a>
                            </div>
                        </nav>
                        <div class="tab-content" id="conteudo">
                            <div class="tab-pane show fade bg-light " id="meu-agendamento" role="tabpanel">
                                <div class="card-body">
                                    <table class="table table-striped table-bordered 
                                           table-hover display" id="listaAgendamento">
                                        <thead>
                                            <tr>
                                                <th>ID</th>
                                                <th>Data</th>
                                                <th>Horário</th>
                                                <th>Status</th>
                                                <th>Serviço</th>
                                                <th>Duração</th>
                                                <th>Valor</th>
                                                <th>Cliente</th>
                                                <th>Funcionário</th>
                                                <th>Opções</th>
                                            </tr>
                                        </thead>
                                        <c:set var="id" value="${c.idcliente}"/>
                                        <% try{
                                            AgendamentoServico s = new AgendamentoServico();
                                            int id = (Integer) pageContext.getAttribute("id");
                                            ArrayList<AgendamentoServico> as = s.getListaPorCliente(id);
                                            pageContext.setAttribute("as", as);
                                        }catch(Exception e){
                                            System.out.println(e);
                                        }
                                        %>
                                        <tbody>
                                            <c:forEach var="a" items="${as}">                                        
                                                <tr class="text-center">
                                                    <td>${a.agendamento.idagendamento}</td>
                                                    <td> 
                                                        <fmt:parseDate value="${a.agendamento.data}" pattern="yyyy-MM-dd" var="parsedDate" />
                                                        <fmt:formatDate value="${parsedDate}" pattern="dd/MM/yyyy" />
                                                    </td>
                                                    <td>${a.horario}</td>
                                                    <td>
                                                        <input hidden="" type="hidden" value="${a.status}" id="statusAntigo${a.agendamento.idagendamento}${a.servico.idservico}">
                                                        <c:if test="${a.status==0}">
                                                            Agendado
                                                        </c:if>  
                                                        <c:if test="${a.status==1}">
                                                            Realizado
                                                        </c:if>
                                                        <c:if test="${a.status==2}">
                                                            Não Realizado
                                                        </c:if>
                                                        </select>
                                                    </td>
                                                    <td>${a.servico.nome_servico}</td>
                                                    <td>
                                                        <c:if test="${a.servico.duracao==1}">1 hora</c:if>
                                                        <c:if test="${a.servico.duracao==2}">30 min</c:if>
                                                        </td>
                                                        <td>${a.agendamento.valor}</td>
                                                    <td>${a.agendamento.cliente.nome}</td>
                                                    <td>${a.agendamento.funcionario.nome}</td>
                                                    <td>
                                                        <a class="btn btn-primary" href="gerenciar_agendamento.do?acao=alterar&idagendamento=${a.agendamento.idagendamento}&idservico=${a.servico.idservico}&cliente=1">
                                                            <i class="fas fa-pencil-alt"></i>
                                                        </a>
                                                        <a class="btn btn-success" target="_blank" href="gerenciar_agendamento.do?acao=relatorio&idagendamento=${a.agendamento.idagendamento}&idservico=${a.servico.idservico}">
                                                            <i class=" fas fa-print"></i>
                                                        </a>
                                                        <button class="btn btn-danger" onclick="confirmarExclusao(${a.agendamento.idagendamento}, '${a.agendamento.idagendamento}', ${a.servico.idservico})">
                                                            <i class="fas fa-trash-alt"></i>
                                                        </button>    
                                                    </td>
                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>   
                                </div>
                            </div>

                            <div class="tab-pane show fade active " id="meu-agendar" role="tabpanel">
                                <div class="container">  
                                    <div class="card">
                                        <div class="card-body wizard-content">
                                            <form name="form_agendamento" action="gerenciar_agendamento.do?action=cadastrar&cliente=1" method="POST">
                                                <div class="col-10">
                                                    <h2  >Agendar</h2>

                                                    <input type="hidden" name="idagendamento" id="idagendamento"
                                                           class="form-control" value="${agendaServico.agendamento.idagendamento}"/>

                                                    <input type="hidden" name="qtdAgendamento" id="qtdAgendamento"
                                                           class="form-control" >
                                                    <section id="dataSection">
                                                        <label for="data" class="control-label text-dark ">
                                                            Data Desejada:  
                                                        </label>
                                                        <input type="text" id="data" name="data"  value="${agendaServico.agendamento.data}" onchange="atualizaData()" >
                                                    </section>
                                                    <p></p>
                                                    <input type="hidden" name="status" id="status" value="0"/>
                                                    <p></p>
                                                    <section id="fun">
                                                        <label for="idfuncionario" class="control-label text-dark">
                                                            Funcionário
                                                        </label>

                                                        <select id="idfuncionario" name="idfuncionario" required="" class="form-control"  onchange="atualizaData()">
                                                            <option value="0">Selecione o Funcionário</option>
                                                            <jsp:useBean class="model.Funcionario" id="fun"/>
                                                            <c:forEach var="f" items="${fun.listaFun}">
                                                                <option value="${f.idfuncionario}"
                                                                        <c:if test="${f.idfuncionario==agendaServico.agendamento.funcionario.idfuncionario}">
                                                                            selected=""
                                                                        </c:if>        
                                                                        >${f.nome}</option>
                                                            </c:forEach>
                                                        </select>    
                                                    </section>
                                                    <p></p>
                                                    <section id="cli">
                                                        <input name="idcliente" hidden="" type="hidden" value="${c.idcliente}">
                                                    </section>
                                                    <p></p>
                                                    <section id="serv" >
                                                        <c:if test="${agendaServico.agendamento.idagendamento==null}">
                                                            <div class="row">
                                                                <div class="col-12">
                                                                    <section class="align-content-center">
                                                                        <input type="button" id="adicionar" class="btn btn-info btn-block" value="Adicionar Serviço">
                                                                    </section>
                                                                </div>
                                                            </div>
                                                        </c:if>

                                                        <section id="servicohorario" class="row">
                                                            <div class="col-4">
                                                                <p></p>
                                                                <label for="idservico" class="control-label">
                                                                    Serviço
                                                                </label>
                                                                <select id="idservico" name="idservico" required="" class="form-control servico "  onchange="calculaPreco(), principal();" >
                                                                    <option value="0">Selecione o Serviço</option>
                                                                    <jsp:useBean class="model.Servico" id="servico"/>
                                                                    <c:forEach var="s" items="${servico.lista}">
                                                                        <option value="${s.idservico}"
                                                                                <c:if test="${s.idservico==agendaServico.servico.idservico}">
                                                                                    selected=""
                                                                                </c:if>        
                                                                                >${s.nome_servico}</option>

                                                                    </c:forEach>
                                                                </select> 
                                                                <p></p>
                                                                <div class="horadata">
                                                                    <div id="horario">
                                                                        <c:if test="${agendaServico.agendamento.idagendamento>0}">
                                                                            <select id="horario" name="horario" required="" class="form-control hora " onchange="verSeHoraIgual()">
                                                                                <option value="${agendaServico.horario}">${agendaServico.horario}</option>
                                                                            </select>
                                                                        </c:if>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </section> 
                                                    </section>
                                                    <section id="val" class="col-12 text-center">
                                                        <p></p>
                                                        <div id="valor" class="col-12 align-content-center">
                                                            <c:if test="${agendaServico.agendamento.idagendamento>0}">
                                                                <label for="valor" class="control-label" style="font-size: 17pt">
                                                                    Valor 
                                                                </label>
                                                                <p name="valor" id="valor" readonly="" value="" style="color: #008a00; font-family: sans-serif; font-size: 17pt">R$ ${agendaServico.agendamento.valor}</p>
                                                                <input name="valor" id="valor" hidden="" value="${agendaServico.agendamento.valor}">
                                                            </c:if>
                                                        </div>
                                                    </section>
                                                    <div class="row">
                                                        <button class="btn btn-primary btn-lg" value="submit">Gravar</button> &nbsp;
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>   
                                </div>  
                            </div>
                        </div>
                    </div>
                </div>      
            </div> 
        </div>

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
        <script src="jquery/jquery-3.4.1.min.js"></script>
        <script>
                                                                                function verificarAltera(idagendamento) { //Permite realizar uma espécie de StepForm
                                                                                    if (idagendamento == null || idagendamento == 0) {
                                                                                        $('#hora').hide();
                                                                                        $('#fun').hide();
                                                                                        $('#cli').hide();
                                                                                        $('#serv').hide();
                                                                                        $('#data').change(function (e) {
                                                                                            $('#fun').show();
                                                                                            $('#fun').change(function (e) {
                                                                                                $('#serv').show();
                                                                                            });
                                                                                        });
                                                                                    } else {

                                                                                    }
                                                                                }
//*************************************************************ATUALIZAR HORÁRIOS DE ACORDO COM A DATA E FUNCIONARIO*************************************************************************

                                                                                function atualizaData() {
                                                                                    var dia = $("#data").val(); //Valor da data selecionada
                                                                                    var idfuncionario = $("#idfuncionario").val(); //Valor do id do funcionário
                                                                                    $.ajax({
                                                                                        url: "buscaAjax/horarios.jsp", //Local do arquivo
                                                                                        data: {dia: dia,
                                                                                            idfuncionario: idfuncionario
                                                                                        }, //Parametros com os valores da data e id
                                                                                        method: "POST", //Método de envio.
                                                                                        success: function (data)
                                                                                        {
                                                                                            $(".horadata").html(data); //O retorno da ação será aplicado nesta div.
                                                                                            defineIdHorarios();
                                                                                            format0();
                                                                                            format1();
                                                                                            format2();
                                                                                            principal();
                                                                                        }
                                                                                    });
                                                                                }
//*****************************************************ADICIONA E REMOVE CAMPOS*************************************************************************

                                                                                var campo_max = 2;
                                                                                var x = 1;
                                                                                $("input#adicionar").click(function (e) {
                                                                                    e.preventDefault();
                                                                                    if (x <= campo_max) {
                                                                                        $.ajax({
                                                                                            url: "buscaAjax/selectServico.jsp", //Local do arquivo
                                                                                            data: {x: x}, //Parametros com os valores da data e id
                                                                                            method: "POST", //Método de envio.
                                                                                            success: function (data)
                                                                                            {
                                                                                                $("#servicohorario").append(data); //O retorno da ação será aplicado nesta div.
                                                                                                x++;
                                                                                                atualizaData();
                                                                                                defineIdHorarios();
                                                                                            }
                                                                                        });
                                                                                    } else {
                                                                                        alert("Quantidade máxima de serviços para este agendamento!");
                                                                                    }
                                                                                });
                                                                                $("#servicohorario").on("click", "#remover", function (e) {
                                                                                    e.preventDefault();
                                                                                    $(this).parent('div').remove();
                                                                                    x--;
                                                                                    calculaPreco();
                                                                                });


//*************************************************************CALCULAR VALOR TOTAL DOS SERVICOS**************************************************************************
                                                                                function calculaPreco() { //Permite calcular o valor total da soma dos serviços
                                                                                    var servico = [];
                                                                                    $(".servico").each(function () {
                                                                                        servico.push($(this).val());
                                                                                    });
                                                                                    var serv1, serv2, serv3;
                                                                                    serv1 = servico[0];
                                                                                    serv2 = servico[1];
                                                                                    serv3 = servico[2];
                                                                                    $(".servico").css('border-color', '');
                                                                                    if ((serv1 == serv2) && serv2 != 0) {
                                                                                        confirm("Por favor selecione serviços diferentes! 1 - 2");
                                                                                        $(".servico").eq(1).css("border-color", "red");
                                                                                        $(".servico").eq(1).val($("select#idservico option:first").val());
                                                                                    } else if (serv1 == serv3 && serv3 != 0) {
                                                                                        confirm("Por favor selecione serviços diferentes! 1 - 3");
                                                                                        $(".servico").eq(2).css("border-color", "red");
                                                                                        $(".servico").eq(2).val($("select#idservico option:first").val());
                                                                                    } else if (serv2 == serv3 && serv2 != null && serv3 != null && serv2 != 0 && serv3 != 0) {
                                                                                        confirm("Por favor selecione serviços diferentes! 2 - 3");
                                                                                        $(".servico").eq(2).css("border-color", "red");
                                                                                        $(".servico").eq(2).val($("select#idservico option:first").val());
                                                                                    } else {

                                                                                        $.ajax({
                                                                                            url: "buscaAjax/valor.jsp", //Local do arquivo
                                                                                            data: {serv1: serv1,
                                                                                                serv2: serv2,
                                                                                                serv3: serv3}, //Parametros com os valores da data e id
                                                                                            method: "POST", //´Método de envio
                                                                                            success: function (data)
                                                                                            {
                                                                                                $("#valor").html(data); //O retorno da ação será aplicado nesta div.
                                                                                            }

                                                                                        });
                                                                                    }
                                                                                }
//****************************************************************IMPEDE HORÁRIOS IGUAIS*********************************************************************
                                                                                function verSeHoraIgual() { //IMPEDE A UTILIZAÇÃO DE HORARIOS IGUAIS
                                                                                    var hora = [];
                                                                                    $(".hora").each(function () {
                                                                                        hora.push($(this).val());
                                                                                    });
                                                                                    var hora1, hora2, hora3;
                                                                                    hora1 = hora[0];
                                                                                    hora2 = hora[1];
                                                                                    hora3 = hora[2];
                                                                                    $(".hora").css('border-color', '');
                                                                                    if (hora1 == "indisponivel") {
                                                                                        confirm("Por favor selecione um horário disponível!");
                                                                                        $(".hora").eq(0).css("border-color", "red");
                                                                                        $(".hora").eq(0).val($("select.hora option:first").val());
                                                                                    } else if (hora2 == "indisponivel") {
                                                                                        confirm("Por favor selecione um horário disponível!");
                                                                                        $(".hora").eq(1).css("border-color", "red");
                                                                                        $(".hora").eq(1).val($("select.hora option:first").val());
                                                                                    } else if (hora3 == "indisponivel") {
                                                                                        confirm("Por favor selecione um horário disponível!");
                                                                                        $(".hora").eq(2).css("border-color", "red");
                                                                                        $(".hora").eq(2).val($("select.hora option:first").val());
                                                                                    }

                                                                                    if (hora2 != null || hora3 != null) {
                                                                                        if ((hora1 == hora2) && hora2 != 0) {
                                                                                            confirm("Por favor selecione horários diferentes!");
                                                                                            $(".hora").eq(1).css("border-color", "red");
                                                                                            $(".hora").eq(1).val($("select.hora option:first").val());
                                                                                        } else if (hora1 == hora3 && hora3 != 0) {
                                                                                            confirm("Por favor selecione horários diferentes!");
                                                                                            $(".hora").eq(2).css("border-color", "red");
                                                                                            $(".hora").eq(2).val($("select.hora option:first").val());
                                                                                        } else if (hora2 == hora3 && hora2 != null && hora3 != null && hora2 != 0 && hora3 != 0) {
                                                                                            confirm("Por favor selecione horários diferentes!");
                                                                                            $(".hora").eq(2).css("border-color", "red");
                                                                                            $(".hora").eq(2).val($("select.hora option:first").val());
                                                                                            ;
                                                                                        }
                                                                                    }

                                                                                }
//***********************************************************EXIB O CAMPO HORÁRIO NO FORM DE ALTERAÇÃO*********************************************************************
                                                                                function mostrarHorario(idagendamento, horario) {
                                                                                    if (idagendamento != null || idagendamento != 0) {
                                                                                        var dia = $("#data").val(); //id of country select box of index.jsp page;
                                                                                        var idfuncionario = $("#idfuncionario").val();
                                                                                        $.ajax({
                                                                                            url: "buscaAjax/horarios.jsp", //your jsp page name
                                                                                            data: {dia: dia,
                                                                                                idfuncionario: idfuncionario,
                                                                                                horario: horario}, //sending request to state.jsp page.
                                                                                            method: "POST", //HTTP method.
                                                                                            success: function (data)
                                                                                            {
                                                                                                $("div#horario").html(data); //output or response will display in state select box.
                                                                                            }
                                                                                        });
                                                                                    }
                                                                                }

//***************************************************IMPEDE O AGENDAMENTO DE SERVIÇOS MUITO LONGOS SEM TEMPO IRMÃO*********************************************************************
//------------------------------------------------- SERVICO 1 ON CHANGE --------------------------------------------------------//         

                                                                                function primeira() {
                                                                                    var identifica = 1;
                                                                                    var hora = $(".hora").eq(0).val(); //id do primeiro serviço;
                                                                                    var dia = $("#data").val(); //Valor da data selecionada
                                                                                    var idfuncionario = $("#idfuncionario").val(); //Valor do id do funcionário
                                                                                    var servico = $(".servico").eq(0).val(); //id do primeiro serviço;
                                                                                    $.ajax({
                                                                                        url: "buscaAjax/horarios.jsp", //your jsp page name
                                                                                        data: {dia: dia,
                                                                                            idfuncionario: idfuncionario,
                                                                                            hora: hora,
                                                                                            idservico: servico,
                                                                                            identifica: identifica
                                                                                        }, //sending request to state.jsp page.
                                                                                        method: "POST", //HTTP method.
                                                                                        success: function (data)
                                                                                        {
                                                                                            $("#horario").parent('div').html(data);
                                                                                            defineIdHorarios();
                                                                                            format0();
                                                                                        }
                                                                                    });
                                                                                }

//-------------------------------------------------- SERVICO 2 ON CHANGE --------------------------------------------------------//                               
                                                                                function segunda() {
                                                                                    defineIdHorarios();
                                                                                    var identifica = 2;
                                                                                    var hora = $(".hora").eq(1).val(); //id do primeiro serviço;
                                                                                    var dia = $("#data").val(); //Valor da data selecionada
                                                                                    var idfuncionario = $("#idfuncionario").val(); //Valor do id do funcionário
                                                                                    var servico = $(".servico").eq(1).val(); //id do primeiro serviço;
                                                                                    $.ajax({
                                                                                        url: "buscaAjax/horarios.jsp", //your jsp page name
                                                                                        data: {dia: dia,
                                                                                            idfuncionario: idfuncionario,
                                                                                            hora: hora,
                                                                                            idservico: servico,
                                                                                            identifica: identifica
                                                                                        }, //sending request to state.jsp page.
                                                                                        method: "POST", //HTTP method.
                                                                                        success: function (data)
                                                                                        {
                                                                                            $("#horario1").parent('div').html(data);
                                                                                            defineIdHorarios();
                                                                                            format1();
                                                                                        }
                                                                                    });
                                                                                }

//------------------------------------------------- SERVICO 3 ON CHANGE --------------------------------------------------------//                               
                                                                                function terceiro() {
                                                                                    var identifica = 3;
                                                                                    var hora = $(".hora").eq(2).val(); //id do primeiro serviço;
                                                                                    var dia = $("#data").val(); //Valor da data selecionada
                                                                                    var idfuncionario = $("#idfuncionario").val(); //Valor do id do funcionário
                                                                                    var servico = $(".servico").eq(2).val(); //id do primeiro serviço;
                                                                                    $.ajax({
                                                                                        url: "buscaAjax/horarios.jsp", //your jsp page name
                                                                                        data: {dia: dia,
                                                                                            idfuncionario: idfuncionario,
                                                                                            hora: hora,
                                                                                            idservico: servico,
                                                                                            identifica: identifica
                                                                                        }, //sending request to state.jsp page.
                                                                                        method: "POST", //HTTP method.
                                                                                        success: function (data)
                                                                                        {
                                                                                            $("#horario2").parent('div').html(data);
                                                                                            defineIdHorarios();
                                                                                            format2();
                                                                                        }
                                                                                    });
                                                                                }
                                                                                function principal() {
                                                                                    var servico = [];
                                                                                    $(".servico").each(function () {
                                                                                        servico.push($(this).val());
                                                                                    });

                                                                                    if (servico[0] != null && servico[0] > 0) {
                                                                                        primeira();
                                                                                    }
                                                                                    if (servico[1] != null && servico[1] > 0) {
                                                                                        segunda();
                                                                                    }
                                                                                    if (servico[2] != null && servico[2] > 0) {
                                                                                        terceiro();
                                                                                    }

                                                                                }
//*******************************************************FUNÇÕES IMPORTANTÍSSIMAS*********************************************************************

                                                                                function defineIdHorarios() {
                                                                                    $(".hora").eq(0).attr("id", "horario");
                                                                                    $(".hora").eq(1).attr("id", "horario1");
                                                                                    $(".hora").eq(2).attr("id", "horario2");
                                                                                }


                                                                                function format0() {
                                                                                    var duracao = $("#duracao0").val();
                                                                                    var length = $('#horario > option').length;
                                                                                    length++;
                                                                                    var h = 0;
                                                                                    for (h; h < length; h++) {
                                                                                        var prox = $("#horario :nth-child(" + (h + 1) + ")").val();
                                                                                        var atual = $("#horario :nth-child(" + h + ")").val();
                                                                                        if (duracao == 1 && (prox == "indisponivel")) {
                                                                                            $("#horario :nth-child(" + h + ")").attr('disabled', '').css('background-color', '#CDCDCD');
                                                                                        }
                                                                                        if (atual == "indisponivel") {
                                                                                            $("#horario :nth-child(" + h + ")").attr('disabled', '').css('background-color', 'red');
                                                                                        }
                                                                                    }
                                                                                }
                                                                                function format1() {
                                                                                    var duracao = $("#duracao1").val();
                                                                                    var length = $('#horario1 > option').length;
                                                                                    length++;
                                                                                    var h = 0;
                                                                                    for (h; h < length; h++) {
                                                                                        var prox = $("#horario1 :nth-child(" + (h + 1) + ")").val();
                                                                                        var atual = $("#horario1 :nth-child(" + h + ")").val();
                                                                                        if (duracao == 1 && (prox == "indisponivel")) {
                                                                                            $("#horario1 :nth-child(" + h + ")").attr('disabled', '').css('background-color', '#CDCDCD');
                                                                                        }
                                                                                        if (atual == "indisponivel") {
                                                                                            $("#horario1 :nth-child(" + h + ")").attr('disabled', '').css('background-color', 'red');
                                                                                        }
                                                                                    }
                                                                                }

                                                                                function format2() {
                                                                                    var duracao = $("#duracao2").val();
                                                                                    var length = $('#horario2 > option').length;
                                                                                    length++;
                                                                                    var h = 0;
                                                                                    for (h; h < length; h++) {
                                                                                        var prox = $("#horario2 :nth-child(" + (h + 1) + ")").val();
                                                                                        var atual = $("#horario2 :nth-child(" + h + ")").val();
                                                                                        if (duracao == 1 && (prox == "indisponivel")) {
                                                                                            $("#horario2 :nth-child(" + h + ")").attr('disabled', '').css('background-color', '#CDCDCD');
                                                                                        }
                                                                                        if (atual == "indisponivel") {
                                                                                            $("#horario2 :nth-child(" + h + ")").attr('disabled', '').css('background-color', 'red');
                                                                                        }
                                                                                    }
                                                                                }








        </script>
        <script src="jquery/external/jquery/jquery.js"></script>
        <script src="jquery/jquery-ui.js"></script>
        <script>
                                                                                //****************************************************************EDITAR CALENDÁRIO*********************************************************************

                                                                                $("#data").datepicker({
                                                                                    minDate: 0, maxDate: "+1M +10D",
                                                                                    showOtherMonths: true,
                                                                                    selectOtherMonths: true,
                                                                                    beforeShowDay: $.datepicker.noWeekends
                                                                                });

        </script>

        <script type="text/javascript" src="datatables/jquery.dataTables.min.js"></script>
        <script type="text/javascript">
                                                                                $(document).ready(function () {
                                                                                    $("#listaAgendamento").dataTable({
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


