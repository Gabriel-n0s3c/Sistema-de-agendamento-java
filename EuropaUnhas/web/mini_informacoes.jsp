
<div class="col-lg-3">
    <div class="row">
        <div class="col-6">
            <a href="listar_cliente.jsp" style="text-decoration: none; color: white">

                <div class="bg-dark p-10 text-white text-center">
                    <i class="fa fa-user m-b-5 font-16"></i>
                    <h5 class="m-b-0 m-t-5">
                        <jsp:useBean class="model.Cliente" id="cli">
                            ${cli.qtdCliente}
                        </jsp:useBean>
                    </h5>
                    <small class="font-light">Clientes</small>
                </div>
            </a>
        </div>
        <div class="col-6">
            <a href="listar_produto.jsp" style="text-decoration: none; color: white">
                <div class="bg-dark p-10 text-white text-center">
                    <i class="fas fa-boxes m-b-5 font-16"></i>
                    <h5 class="m-b-0 m-t-5"><jsp:useBean class="model.Produto" id="prod">
                            ${prod.qtdTodosProdutos}
                        </jsp:useBean></h5>
                    <small class="font-light">
                        Produtos
                    </small>
                </div>
            </a>
        </div>
        <div class="col-6 m-t-15">
            <a href="listar_funcionario.jsp" style="text-decoration: none; color: white">
                <div class="bg-dark p-10 text-white text-center">
                    <i class=" mdi mdi-account-card-details m-b-5 font-16"></i>
                    <h5 class="m-b-0 m-t-5"><jsp:useBean class="model.Funcionario" id="fun">
                            ${fun.qtdFuncionario}
                        </jsp:useBean></h5>
                    <small class="font-light">Funcionários</small>
                </div>
            </a>
        </div>
        <div class="col-6 m-t-15">
            <a href="listar_servico.jsp" style="text-decoration: none; color: white">
                <div class="bg-dark p-10 text-white text-center">
                    <i class="mdi mdi-brush m-b-5 font-16"></i>
                    <h5 class="m-b-0 m-t-5"><jsp:useBean class="model.Servico" id="serv">
                            ${serv.qtdServico}
                        </jsp:useBean></h5>
                    <small class="font-light">Serviços</small>
                </div>
            </a>
        </div>
        <div class="col-12 m-t-15">
            <a href="listar_agendamento.jsp" style="text-decoration: none; color: white">
                <div class="bg-dark p-10 text-white text-center">
                    <i class="fa fa-calendar-alt m-b-5 font-16"></i>
                    <h5 class="m-b-0 m-t-5"><jsp:useBean class="model.Agendamento" id="agend">
                            ${agend.qtdAgendamento}
                        </jsp:useBean></h5>
                    <small class="font-light">Agendamentos</small>
                </div>
            </a>
        </div>

    </div>
</div>
<!-- column -->

