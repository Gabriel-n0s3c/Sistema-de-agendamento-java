
<%@page import="model.Servico"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.AgendamentoServico"%>
    <label for="horario" class="control-label ">
        Horário Disponível
    </label>

    <select id="horario" name="horario" required="" class="form-control hora " onchange="verSeHoraIgual()" >
        <option value="">Selecione o Horário</option>
        <%            /*-------------------------------- DECLARANDO HORÁRIOS DISPONÍVEIS --------------*/
            ArrayList<String> disponiveis = new ArrayList<String>(Arrays.asList("09:00", "09:30", "10:00","10:30",
                    "11:00", "11:30", "13:30", "14:00", "14:30",
                    "15:00", "15:30","16:00", "16:30", "17:00", "17:30", "18:00", "18:30", "19:00", "19:30"));
            /*----------------------------------- DECLARAÇÃO DE VARIAVEIS----------------------*/
            AgendamentoServico agendamentoServ = new AgendamentoServico();
            ArrayList<AgendamentoServico> marcado = new ArrayList<AgendamentoServico>();
            String horario = "";
            String valor = "";
            String data = request.getParameter("dia");
            String idfuncionario = request.getParameter("idfuncionario");
            String idservico = request.getParameter("idservico");
            String horaalt = request.getParameter("horaalt");

            int optAtivo = 0;
            int duracao = 0;
            int i = 0;

            /*------------------------------- VERIFICA SE HÁ NECESSIDADE ----------------------*/
            try {
                Servico s = new Servico();
                if (!idservico.isEmpty() || !idservico.equals("")) {
                    duracao = s.retornaDuracao(Integer.parseInt(idservico));
                } else {
                    duracao = 2;
                }

            } catch (Exception e) {

            }

            if (idfuncionario.equals("") || idfuncionario == null) {
                idfuncionario = "0";
            }
            int id = Integer.parseInt(idfuncionario);

            try {
                marcado = agendamentoServ.getHorariosMarcados(data, id);
            } catch (Exception e) {

            }
            String estilo = "style='background-color:red; color:white' disabled=''";
            try {
                for (int j = 0; j < disponiveis.size(); j++) {
                    estilo = "style='background-color:red; color:white' disabled=''";
                    optAtivo = 0;
                    int aplica = 0;
                    if (marcado.isEmpty()) {
                        horario = disponiveis.get(j);
                        valor = disponiveis.get(j);
                    } else {
                        for (i = 0; i < marcado.size(); i++) {
                            System.out.println(marcado.get(i).getHorario());
                            if(disponiveis.get(j).equals(horaalt)){
                              horario = horaalt;
                              estilo ="style = 'background-color:lightgreen'";
                              aplica =1;
                              valor = horaalt;break;
                            }else if (disponiveis.get(j).equals(marcado.get(i).getHorario()) && marcado.get(i).getServico().getDuracao() == 1) {
                                horario = "Indisponível";
                                valor = "indisponivel";
                                disponiveis.set(j + 1, "0");
                                break;
                            } else if (disponiveis.get(j).equals(marcado.get(i).getHorario()) && marcado.get(i).getServico().getDuracao() == 2) {
                                horario = "Indisponível";
                                valor = "indisponivel";
                                break;
                            } else {
                                if (disponiveis.get(j).equals("0")) {
                                    horario = "Indisponível";
                                    valor = "indisponivel";
                                } else {
                                    horario = disponiveis.get(j);
                                    valor = disponiveis.get(j);
                                }
                            }

                        }
                    }
        %>

        <option value="<%=valor%>" id="hora" <% if (valor.equals("indisponivel") || aplica == 1) {%> <%=estilo%> <%}%> <% if (horario == horaalt) { %> selected="" <%}%>  >
            <%=horario%></option>
            <%

                        System.out.println(horario);
                        System.out.println(horaalt);
                        System.out.println(duracao);

                    }
                } catch (Exception e) {
                    System.out.println(e);
                }
            %>
    </select>

    <%
        try {
            String identifica = "";
            identifica = request.getParameter("identifica");
            if (identifica.contains("1")) {
    %>
    <input id="duracao0" hidden="" type="hidden" value="<%=duracao%>">
    <%

        }
        if (identifica.contains("2")) {
    %>
    <input id="duracao1" hidden="" type="hidden" value="<%=duracao%>">
    <%

        }

        if (identifica.contains("3")) {
    %>
    <input id="duracao2" hidden="" type="hidden" value="<%=duracao%>">
    <%
            }
        } catch (Exception e) {
            System.out.println("");

        }
    %>

