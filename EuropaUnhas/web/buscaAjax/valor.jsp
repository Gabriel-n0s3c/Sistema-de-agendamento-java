<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Servico"%>
<%

    float soma = 0;
    ArrayList<String> ids = new ArrayList<String>();
    ids.add(request.getParameter("serv1"));
    ids.add(request.getParameter("serv2"));
    ids.add(request.getParameter("serv3"));
    Servico servico = new Servico();
    try {
        for (String s : ids) {
            servico = servico.getCarregaPorID(Integer.parseInt(s));
            soma += servico.getPreco();
        }
        //servico = servico.getCarregaPorID(Integer.parseInt(idservico));
    } catch (Exception e) {
        System.out.println(e);
    }
    DecimalFormat df = new DecimalFormat("R$00.00");
    String somado = df.format(soma);
    System.out.println(soma);

%>
<label for="valor" class="control-label" style="font-size: 17pt">
    Valor 
</label>
<p name="valor" id="valor" readonly="" value="" style="color: #008a00; font-family: sans-serif; font-size: 17pt"><%=somado%></p>
<input name="valor" id="valor" hidden="" value="<%=soma%>">
