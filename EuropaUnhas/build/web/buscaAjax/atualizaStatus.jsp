
<%@page import="model.ServicoProduto"%>
<%@page import="model.AgendamentoServico"%>
<%

    int idagendamento = Integer.parseInt(request.getParameter("idagendamento"));
    int idservico = Integer.parseInt(request.getParameter("idservico"));
    int status = Integer.parseInt(request.getParameter("status"));
    int statusAntigo = Integer.parseInt(request.getParameter("statusAntigo"));

    AgendamentoServico as = new AgendamentoServico();
    System.out.println(status);
    if (status == 1) {
    System.out.println(status);
    System.out.println(idagendamento);
    System.out.println(idservico);
        if (as.realizaServico(idagendamento, idservico)) {
            as.realizaServico(idagendamento, idservico);
            ServicoProduto sp = new ServicoProduto();
            sp.descontaQuantidadeProdutos(idservico);
        }
    }else if(statusAntigo==1){
        if (as.naoRealizaAgendamento(idagendamento, idservico, status)) {
            ServicoProduto sp = new ServicoProduto();
            sp.somaQuantidadeProdutos(idservico);
        }
        
    }else{
          as.naoRealizaAgendamento(idagendamento, idservico, status);
    }
%>