<% String id = request.getParameter("i");

%>
<section id="id" onchange="calculaPreco()" >
    <p></p>
    <label for="idservico" class="control-label ser">
        Servi�o
    </label>
    <select id="idservico<%=id%>" name="idservico" required="" class="form-control" >
        <option value="">Selecione o Servi�o</option>
        <jsp:useBean class="model.Servico" id="servico"/>
        <c:forEach var="s" items="${servico.lista}">
            <option value="${s.idservico}"

                    >${s.nome_servico}</option>
        </c:forEach>

    </select> 
    <p></p>
    <label for="horario" class="control-label">
        Hor�rio Dispon�vel
    </label>
    <section>
        <div id="horario"></div>
    </section>
</section> 