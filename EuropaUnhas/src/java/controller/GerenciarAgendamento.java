/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Agendamento;
import model.AgendamentoServico;
import model.Cliente;
import model.Funcionario;
import model.GeradorDeRelatorios;
import model.Servico;

/**
 *
 * @author BNB - SOLUÇÕES
 */
public class GerenciarAgendamento extends HttpServlet {

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = null;
        String acao = request.getParameter("acao");
        String mensagem = "";
        int idagendamento;
        int idservico;
        idagendamento = Integer.valueOf(request.getParameter("idagendamento"));
        idservico = Integer.valueOf(request.getParameter("idservico"));
        AgendamentoServico sa = new AgendamentoServico();
        int cliente = 0;
        try {
            if (request.getParameter("cliente").equals("")) {
                cliente = 0;
            } else {
                cliente = Integer.parseInt(request.getParameter("cliente"));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        try {
            if (acao.equals("alterar")) {
                out = response.getWriter();
                if (GerenciarLogin.verificarPermissao(request, response)) {
                    sa = sa.getUmAgendamento(idagendamento, idservico);
                    if (sa.getAgendamento().getIdagendamento() > 0) {
                        RequestDispatcher disp;
                        if (cliente == 1) {
                            disp = getServletContext().getRequestDispatcher("/form_alterar_agendamento_cliente.jsp");
                        } else {
                            disp = getServletContext().getRequestDispatcher("/form_alterar_agendamento.jsp");
                        }

                        Servico s = new Servico().getCarregaPorID(idservico);
                        Agendamento a = new Agendamento().getCarregaPorID(idagendamento);
                        float val = a.getValor() - s.getPreco();

                        request.setAttribute("agendaServico", sa);
                        request.setAttribute("valorSubtraido", val);
                        request.setAttribute("idservicoAntigo", s.getIdservico());

                        disp.forward(request, response);
                    } else {
                        mensagem = "Agendamento não encontrado";
                    }
                } else {
                    mensagem = "Acesso Negado";
                }
            }
            if (acao.equals("excluir")) {
                if (GerenciarLogin.verificarPermissao(request, response)) {
                    if (idagendamento > 0) {
                        if (sa.excluir(idagendamento, idservico)) {
                            mensagem = "Excluido com sucesso!";
                        } else {
                            mensagem = "Erro ao excluir";
                        }
                    }
                } else {
                    mensagem = "Acesso Negado";
                }
                out = response.getWriter();

            }

            if (acao.equals("relatorio")) {

                String jrxml = getServletContext().getRealPath("\\relatorio\\eurounhas.jrxml");
                System.out.println(jrxml);
                // prepara parâmetros
                AgendamentoServico a = new AgendamentoServico();
                // abre conexão com o banco

                // gera relatório
                GeradorDeRelatorios gerador = new GeradorDeRelatorios();
                try {

                    List<AgendamentoServico> ab = a.getPorAgendamento(Integer.parseInt(request.getParameter("idagendamento")));
                    gerador.geraPdf(jrxml, ab, response.getOutputStream());
                } catch (Exception ex) {
                    Logger.getLogger(GerenciarAgendamento.class.getName()).log(Level.SEVERE, null, ex);
                }

            }

        } catch (Exception e) {
            out.println(e);
            mensagem = "Erro ao acessar o banco";
        }

        String local = "listar_agendamento.jsp";
        if (cliente == 1) {
            local = "agendamento_cliente.jsp";
        } else {
            local = "listar_agendamento.jsp";
        }

        out.println("<script type='text/javascript'>");
        out.println("alert('" + mensagem + "');");
        out.println("location.href= '" + local + "';");
        out.println("</script>");

    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        //RECEBENDO OS VALORES DO AGENDAMENTO
        String idagendamento = request.getParameter("idagendamento");
        String data = request.getParameter("data");
        String valor = request.getParameter("valor");
        String local = "";
        String mensagem = "";
        //RECEBENDO OS MULTIPLOS SERVIÇOS
        String[] servicos = request.getParameterValues("idservico");
        String[] horario = request.getParameterValues("horario");
        //RECEBENDO AS CHAVES ESTRANGEIRAS DO FORMULÁRIO
        int idcliente = Integer.parseInt(request.getParameter("idcliente"));
        int idfuncionario = Integer.parseInt(request.getParameter("idfuncionario"));

        String acao = request.getParameter("action");

        if (acao.equals("alterar")) {
            int idantigo = Integer.parseInt(request.getParameter("idantigo"));
            String servico_alt = request.getParameter("idservico");
            String horario_alt = request.getParameter("horario");
            System.out.println(idagendamento);
            Agendamento a = new Agendamento();
            if (!idagendamento.isEmpty()) {
                a.setIdagendamento(Integer.parseInt(idagendamento));
                System.out.println(idagendamento);
            }
            a.setData(data);
            if (valor == null) {
                a.setValor(0);
            } else {
                float valor_alt;
                float valorSubtraido = Float.parseFloat(request.getParameter("valorSubtraido"));
                valor_alt = valorSubtraido + Float.parseFloat(valor);
                a.setValor(valor_alt);
            }

            //SETANDO VALOR DA CHAVE ESTRANGEIRA DE CLIENTE
            Cliente c = new Cliente();
            c.setIdcliente(idcliente);

            //SETANDO VALOR DA CHAVE ESTRANGEIRA DE FUNCIONÁRIO
            Funcionario f = new Funcionario();
            f.setIdfuncionario(idfuncionario);

            //ATRIBUINDO FUNCIONARIO E CLIENTE AO OBJETO AGENDAMENTO
            a.setCliente(c);
            a.setFuncionario(f);

            //CRIANDO OBEJETO AGENDAMENTO SERVICO
            AgendamentoServico agendamentoServico = new AgendamentoServico();
            Servico s = new Servico();
            try {
                s = s.getCarregaPorID(Integer.parseInt(servico_alt));
                agendamentoServico.setServico(s);
                agendamentoServico.setHorario(horario_alt);
                agendamentoServico.setAgendamento(a);
                if (data.equals("") || idfuncionario == 0 || idcliente == 0) {
                    mensagem = "Campos obrigatorios devem ser preenchidos";
                } else {
                    if (agendamentoServico.alterarAgendar(agendamentoServico, idantigo)) {
                        mensagem = "Agendamento atualizado com sucesso";
                        local = "listar_agendamento.jsp";
                    } else {
                        mensagem = "NÃO É POSSÍVEL AGENDAR O MESMO SERVIÇO DUAS VEZES!";
                        local = "listar_agendamento.jsp";
                    }
                }
            } catch (Exception e) {
                out.println(e);
                mensagem = "Erro ao acessar o banco";
            }
        } else if (acao.equals("cadastrar")) {

            //SETANDO OS VALORES DO AGENDAMENTO
            Agendamento a = new Agendamento();
            if (!idagendamento.isEmpty()) {
                a.setIdagendamento(Integer.parseInt(idagendamento));
            }
            a.setData(data);
            if (valor == null) {
                a.setValor(0);
            } else {
                a.setValor(Float.parseFloat(valor));
            }

            //SETANDO VALOR DA CHAVE ESTRANGEIRA DE CLIENTE
            Cliente c = new Cliente();
            c.setIdcliente(idcliente);

            //SETANDO VALOR DA CHAVE ESTRANGEIRA DE FUNCIONÁRIO
            Funcionario f = new Funcionario();
            f.setIdfuncionario(idfuncionario);

            //ATRIBUINDO FUNCIONARIO E CLIENTE AO OBJETO AGENDAMENTO
            a.setCliente(c);
            a.setFuncionario(f);

            //CRIANDO OBEJETO AGENDAMENTO SERVICO
            AgendamentoServico agendamentoServico = new AgendamentoServico();

            //SETANDO SERVIÇOS VINCULADOS AO AGENDAMENTO
            int contador = 0;
            ArrayList<Servico> lista = new ArrayList<>();
            if (servicos != null) {
                for (String s : servicos) {
                    Servico servico = new Servico();
                    servico.setIdservico(Integer.parseInt(s));
                    lista.add(servico);
                    contador++;
                }
            }
            if (contador < 1) {
                System.out.println("ADICIONE PELO MENOS UM SERVICO");
            } else {
                agendamentoServico.setVinculado(lista);
            }

            //SETANDO HORÁRIOS VINCULADOS AO AGENADAMENTO
            contador = 0;
            ArrayList<String> listaHorario = new ArrayList<>();
            if (horario != null) {
                for (String h : horario) {
                    if (h.equals("indisponivel")) {
                        mensagem = "Horário indisponível";
                        local = "javascript:history.back()";
                        System.out.println(mensagem);
                        break;
                    } else {
                        listaHorario.add(h);
                    }
                    contador++;
                }
            }
            if (contador < 1) {
                System.out.println("ADICIONE PELO MENOS HORARIO");
            } else {
                agendamentoServico.setListaDeHorarios(listaHorario);
            }

            //SETANDO O AGENDAMENTO NO OBJETO AGENDAMENTOSERVICO
            agendamentoServico.setAgendamento(a);
            try {
                if (data.equals("") || idfuncionario == 0 || idcliente == 0) {
                    mensagem = "Campos obrigatorios devem ser preenchidos";
                } else {
                    if (agendamentoServico.agendar(agendamentoServico)) {
                        mensagem = "Agendamento realizado com sucesso";
                        local = "listar_agendamento.jsp";
                    } else {
                        mensagem = "Erro ao gravar o agendamento";
                    }
                }
            } catch (Exception e) {
                out.println(e);
                mensagem = "Erro ao acessar o banco";
            }
        }
        try {

            int cliente = 0;
            cliente = Integer.parseInt(request.getParameter("cliente"));
            if (cliente == 1) {
                local = "agendamento_cliente.jsp";
            }
        } catch (Exception e) {
        }
        out.println("<script type='text/javascript'>");
        out.println("alert('" + mensagem + "');");
        out.println("location.href='" + local + "';");
        out.println("</script>");
    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
