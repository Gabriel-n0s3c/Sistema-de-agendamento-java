<%@page import="java.util.List"%>
<%@page import="java.io.File"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
    int select = 1;
    if (select == 0) {
%>

<input type="text" name="link_img" id="link"
       class="form-control" required=""
       value="${servico.link_img}"/><p></p>

<% } else if (select == 1) {
%>
<select id="link" name="link_img" required="" class="form-control " >
    <option value="">Selecione o link da imagem</option>
    <%
        application = getServletContext();
        String filepath = application.getRealPath("\\imagens");
        String imagem = "";
        File folder = new File(filepath);
        File[] listOfFiles = folder.listFiles();
        for (File file : listOfFiles) {
            if (file.isFile()) {
                imagem = "imagens/" + file.getName();
                pageContext.setAttribute("image", imagem);
    %>
    <option value="<%=imagem%>" id="link" <c:if test="${servico.link_img == image}" >selected=""</c:if> >
        <%=imagem%></option>
        <%
                }
            }

        %> </select>

<%    }

%>
