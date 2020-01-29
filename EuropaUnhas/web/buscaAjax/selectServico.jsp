<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    int x = 0;
    try {
        x = Integer.parseInt(request.getParameter("x"));
        if (x == 0) {
            x = 0;
        }
    } catch (Exception e) {
    }
%>
<div class="col-4">
    <p></p>
    <label for="idservico<%=x%>" class="control-label">
        Serviço
    </label>
    <select id="idservico<%=x%>" name="idservico" required="" class="form-control servico "  onchange="calculaPreco(), principal()" >
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
        
        <label for="horario" class="control-label  horadata">
            Horário Disponível
        </label>

        <div id="horario">
            <c:if test="${agendaServico.agendamento.idagendamento>0}">
                <select id="horario<%=x%>" name="horario" required="" class="form-control hora" onchange="verSeHoraIgual()">
                    <option value="${agendaServico.horario}">${agendaServico.horario}</option>
                </select>
            </c:if>

        </div>
    </div>
    <p></p>
            <input type="button" id="remover"  class="btn btn-danger btn-block" value="Remover Serviço">

</div>