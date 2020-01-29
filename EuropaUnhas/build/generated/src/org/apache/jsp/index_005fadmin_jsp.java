package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import model.Usuario;
import model.Cliente;
import model.Funcionario;
import model.Agendamento;
import model.Servico;
import model.Menu;
import java.util.ArrayList;
import model.Funcionario;
import model.Cliente;
import model.Usuario;
import controller.GerenciarLogin;

public final class index_005fadmin_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(5);
    _jspx_dependants.add("/required_meta.jsp");
    _jspx_dependants.add("/header.jsp");
    _jspx_dependants.add("/logo.jsp");
    _jspx_dependants.add("/menu_admin.jsp");
    _jspx_dependants.add("/mini_informacoes.jsp");
  }

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_forEach_var_items;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_fmt_formatDate_value_pattern_nobody;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_if_test;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_fmt_parseDate_var_value_pattern_nobody;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_forEach_var_items = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_fmt_formatDate_value_pattern_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_if_test = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_fmt_parseDate_var_value_pattern_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_forEach_var_items.release();
    _jspx_tagPool_fmt_formatDate_value_pattern_nobody.release();
    _jspx_tagPool_c_if_test.release();
    _jspx_tagPool_fmt_parseDate_var_value_pattern_nobody.release();
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write('\n');
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html dir=\"ltr\" lang=\"pt-br\">\n");
      out.write("    <head>\n");
      out.write("        ");
      out.write(" <meta charset=\"utf-8\">\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("    <!-- Tell the browser to be responsive to screen width -->\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("    <meta name=\"description\" content=\"\">\n");
      out.write("    <meta name=\"author\" content=\"\">\n");
      out.write("    <!-- Favicon icon -->\n");
      out.write("    <link rel=\"icon\" type=\"image/png\" sizes=\"16x17\" href=\"assets/images/logo-icon1.png\">\n");
      out.write("    <title>Europa Unhas</title>\n");
      out.write("    <!-- Custom CSS -->\n");
      out.write("    <link href=\"dist/css/style.min.css\" rel=\"stylesheet\">\n");
      out.write("    <link href=\"estilo/menu.css\" rel=\"stylesheet\">");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <!-- ============================================================== -->\n");
      out.write("        <!-- DIV PRINCIAL -->\n");
      out.write("        <!-- ============================================================== -->\n");
      out.write("        <div id=\"main-wrapper\">\n");
      out.write("            <!-- ============================================================== -->\n");
      out.write("            <!-- MENU SUPERIOR -->\n");
      out.write("            <!-- ============================================================== -->\n");
      out.write("            ");
      out.write("\n");
      out.write("<div class=\"preloader\">\n");
      out.write("    <div class=\"lds-ripple\">\n");
      out.write("        <div class=\"lds-pos\"></div>\n");
      out.write("        <div class=\"lds-pos\"></div>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<header class=\"topbar\" data-navbarbg=\"skin5\" >\n");
      out.write("    <nav class=\"navbar top-navbar navbar-expand-md navbar-dark\">\n");
      out.write("        <div class=\"navbar-header\" data-logobg=\"skin5\">\n");
      out.write("            <!-- PARA VER SOMENTE NO CELULAR -->\n");
      out.write("            <a class=\"nav-toggler waves-effect waves-light d-block d-md-none\" href=\"javascript:void(0)\"><i class=\"ti-menu ti-close\"></i></a>\n");
      out.write("            <!-- ============================================================== -->\n");
      out.write("            <!-- Logo -->\n");
      out.write("            <!-- ============================================================== -->\n");
      out.write("            ");
      out.write("<a class=\"navbar-brand\" href=\"index_admin.jsp\">\n");
      out.write("    <!-- LOGOTIPO -->\n");
      out.write("    <b class=\"logo-icon p-l-10\">\n");
      out.write("        <img src=\"assets/images/logo-icon1.png\" alt=\"homepage\" class=\"light-logo\" />\n");
      out.write("    </b>\n");
      out.write("    <!-- LOGOTIPO -->\n");
      out.write("    <!-- TEXTO DA LOGO -->\n");
      out.write("    <span class=\"logo-text\">\n");
      out.write("        <img src=\"assets/images/logo-text1.png\" alt=\"homepage\" class=\"light-logo\" />\n");
      out.write("    </span>\n");
      out.write("</a>");
      out.write("\n");
      out.write("            <!-- ============================================================== -->\n");
      out.write("            <!-- FIM DA LOGO -->\n");
      out.write("            <!-- ============================================================== -->\n");
      out.write("            <!-- ============================================================== -->\n");
      out.write("            <!-- VISIVEL NO CELULAR -->\n");
      out.write("            <!-- ============================================================== -->\n");
      out.write("            <a class=\"topbartoggler d-block d-md-none waves-effect waves-light\" href=\"\" data-toggle=\"collapse\" data-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\"><i class=\"ti-more\"></i></a>\n");
      out.write("        </div>\n");
      out.write("        <!-- ============================================================== -->\n");
      out.write("        <!-- FIM DA LOGO -->\n");
      out.write("        <!-- ============================================================== -->\n");
      out.write("        <div class=\"navbar-collapse collapse\" id=\"navbarSupportedContent\" data-navbarbg=\"skin5\">\n");
      out.write("            <!-- ============================================================== -->\n");
      out.write("            <!-- NAV ITENS -->\n");
      out.write("            <!-- ============================================================== -->\n");
      out.write("            <ul class=\"navbar-nav float-left mr-auto\">\n");
      out.write("                <li class=\"nav-item d-none d-md-block\"><a class=\"nav-link sidebartoggler waves-effect waves-light\" href=\"javascript:void(0)\" data-sidebartype=\"mini-sidebar\"><i class=\"mdi mdi-menu font-24\"></i></a></li>\n");
      out.write("\n");
      out.write("            </ul>\n");
      out.write("            <!-- ============================================================== -->\n");
      out.write("            <!-- MENU SUPERIO DA DIREITA -->\n");
      out.write("            <!-- ============================================================== -->\n");
      out.write("            <ul class=\"navbar-nav float-right\">\n");
      out.write("                <!-- ============================================================== -->\n");
      out.write("                            <!-- NOTIFICAÇÕES -->\n");
      out.write("                            <!-- ============================================================== -->\n");
      out.write("                            <li class=\"nav-item dropdown\" id=\"notificacoes\">\n");
      out.write("                                \n");
      out.write("                            </li>\n");
      out.write("                            <!-- ============================================================== -->\n");
      out.write("                            <!-- NOTIFICAÇÃO -->\n");
      out.write("                            <!-- ============================================================== -->\n");
      out.write("                            \n");
      out.write("                            <!-- ============================================================== -->\n");
      out.write("                            <!-- MENSAGEM -->\n");
      out.write("                            <!-- ============================================================== -->\n");
      out.write("                            <!-- ============================================================== -->\n");
      out.write("                            <!-- FIM MENSAGEM -->\n");
      out.write("                            <!-- ============================================================== -->\n");
      out.write("\n");
      out.write("                            <!-- ============================================================== -->\n");
      out.write("                            <!-- MINHA CONTA -->\n");
      out.write("                            <!-- ============================================================== -->\n");
      out.write("                            <li class=\"nav-item dropdown\">\n");
      out.write("                                <a class=\"nav-link dropdown-toggle text-muted waves-effect waves-dark pro-pic\" href=\"\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\"><img src=\"assets/images/users/1.jpg\" alt=\"user\" class=\"rounded-circle\" width=\"31\"></a>\n");
      out.write("                                <div class=\"dropdown-menu dropdown-menu-right user-dd animated\">\n");
      out.write("                                    <ul class=\"navbar-nav\">\n");
      out.write("                                        ");
      if (_jspx_meth_c_if_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                                            <a class=\"dropdown-item\" href=\"gerenciar_login.do\"><i class=\"fa fa-power-off m-r-5 m-l-5\"></i> Sair</a>\n");
      out.write("                                        </ul>\n");
      out.write("                                    </div>\n");
      out.write("                                </li>\n");
      out.write("                <!-- ============================================================== -->\n");
      out.write("                <!-- MINHA CONTA -->\n");
      out.write("                <!-- ============================================================== -->\n");
      out.write("            </ul>\n");
      out.write("        </div>\n");
      out.write("    </nav>\n");
      out.write("</header>\n");
      out.write("\n");
      out.write("<script src=\"jquery/jquery-3.4.1.min.js\"></script>\n");
      out.write("<script>\n");
      out.write("//*************************************************************ATUALIZAR HORÁRIOS DE ACORDO COM A DATA E FUNCIONARIO*************************************************************************\n");
      out.write("\n");
      out.write("    $(function() {\n");
      out.write("        $.ajax({\n");
      out.write("            url: \"buscaAjax/notificacoes.jsp\", //Local do arquivo\n");
      out.write("            method: \"POST\", //Método de envio.\n");
      out.write("            success: function (data)\n");
      out.write("            {\n");
      out.write("                $(\"#notificacoes\").html(data); //O retorno da ação será aplicado nesta div.\n");
      out.write("            }\n");
      out.write("        });\n");
      out.write("    });\n");
      out.write("</script>");
      out.write("\n");
      out.write("            <!-- ============================================================== -->\n");
      out.write("            <!-- FIM DO MENU SUPERIOR -->\n");
      out.write("            <!-- ============================================================== -->\n");
      out.write("\n");
      out.write("            <!-- ============================================================== -->\n");
      out.write("            <!-- MENU PRINCIPAL DA ESQUERDA  -->\n");
      out.write("            <!-- ============================================================== -->\n");
      out.write("            ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");


    Funcionario funcionario = new Funcionario();

    Usuario ulogado = GerenciarLogin.verificarAcesso(request, response);
    request.setAttribute("ulogado", ulogado);

    if (ulogado != null) {
        Funcionario usu = funcionario.getCarregaPorUsuario(ulogado.getIdusuario());
        request.setAttribute("usando", usu);
    }


      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<aside class=\"left-sidebar\" data-sidebarbg=\"skin5\">\n");
      out.write("\n");
      out.write("    <div class=\"scroll-sidebar\">\n");
      out.write("        <!-- MENU ITENS GERENCIA -->\n");
      out.write("        <nav class=\"sidebar-nav\">\n");
      out.write("            <ul id=\"sidebarnav\" class=\"p-t-30\">\n");
      out.write("                ");
      if (_jspx_meth_c_if_1(_jspx_page_context))
        return;
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("            </ul>\n");
      out.write("        </nav>\n");
      out.write("    </div>\n");
      out.write("</aside>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("            <!-- ============================================================== -->\n");
      out.write("            <!-- FIM MENU PRINCIPAL DA ESQUERDA  -->\n");
      out.write("            <!-- ============================================================== -->\n");
      out.write("\n");
      out.write("            <!-- ============================================================== -->\n");
      out.write("            <!-- CONTEUDO  -->\n");
      out.write("            <!-- ============================================================== -->\n");
      out.write("            <div class=\"page-wrapper\">\n");
      out.write("                <!-- ============================================================== -->\n");
      out.write("                <!-- INFORMAÇÃO DE QUEM ESTÁ LOGADO -->\n");
      out.write("                <!-- ============================================================== -->\n");
      out.write("                <div class=\"page-breadcrumb\">\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-12 d-flex no-block align-items-center\">\n");
      out.write("                            <h4 class=\"page-title\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${ulogado.perfil}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write(" - ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${usando.nome}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</h4>\n");
      out.write("                            <div class=\"ml-auto text-right\">\n");
      out.write("\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <!-- ============================================================== -->\n");
      out.write("                <!-- INFORMAÇÃO DE QUEM ESTÁ LOGADO -->\n");
      out.write("                <!-- ============================================================== -->\n");
      out.write("\n");
      out.write("\n");
      out.write("                <!-- ============================================================== -->\n");
      out.write("                <!-- CONTAINER DOS MINI BOTÕES  -->\n");
      out.write("                <!-- ============================================================== -->\n");
      out.write("                <div class=\"container-fluid\" >\n");
      out.write("                    <!-- ============================================================== -->\n");
      out.write("                    <!-- MINI BOTÕES -->\n");
      out.write("                    <!-- ============================================================== -->\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <!-- Column -->\n");
      out.write("                        ");
      if (_jspx_meth_c_if_3(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                    <!-- ============================================================== -->\n");
      out.write("                    <!-- CONTEUDO - PRIMEIRO BLOCO -->\n");
      out.write("                    <!-- ============================================================== -->\n");
      out.write("\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-md-12\">\n");
      out.write("                            <div class=\"card\">\n");
      out.write("                                <div class=\"card-body\">\n");
      out.write("                                    <div class=\"d-md-flex align-items-center\">\n");
      out.write("\n");
      out.write("                                        <div class=\"row\">\n");
      out.write("                                            <!-- column -->\n");
      out.write("                                            <div class=\"col-lg-9\">\n");
      out.write("                                                <div class=\"flot-chart\">\n");
      out.write("                                                    <div class=\"flot-chart-content\" id=\"flot-line-chart\">\n");
      out.write("                                                        <h4 class=\"card-title\">Painel de Gerência</h4>\n");
      out.write("                                                        <h5 class=\"card-subtitle\">Agendamentos - Status</h5>\n");
      out.write("                                                        <canvas id=\"qtdAgendamento\" width=\"600\" height=\"200\"></canvas>\n");
      out.write("\n");
      out.write("                                                    </div>\n");
      out.write("                                                </div>\n");
      out.write("                                            </div>\n");
      out.write("                                            ");
      out.write("\n");
      out.write("<div class=\"col-lg-3\">\n");
      out.write("    <div class=\"row\">\n");
      out.write("        <div class=\"col-6\">\n");
      out.write("            <a href=\"listar_cliente.jsp\" style=\"text-decoration: none; color: white\">\n");
      out.write("\n");
      out.write("                <div class=\"bg-dark p-10 text-white text-center\">\n");
      out.write("                    <i class=\"fa fa-user m-b-5 font-16\"></i>\n");
      out.write("                    <h5 class=\"m-b-0 m-t-5\">\n");
      out.write("                        ");
      model.Cliente cli = null;
      synchronized (_jspx_page_context) {
        cli = (model.Cliente) _jspx_page_context.getAttribute("cli", PageContext.PAGE_SCOPE);
        if (cli == null){
          cli = new model.Cliente();
          _jspx_page_context.setAttribute("cli", cli, PageContext.PAGE_SCOPE);
          out.write("\n");
          out.write("                            ");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${cli.qtdCliente}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\n");
          out.write("                        ");
        }
      }
      out.write("\n");
      out.write("                    </h5>\n");
      out.write("                    <small class=\"font-light\">Clientes</small>\n");
      out.write("                </div>\n");
      out.write("            </a>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"col-6\">\n");
      out.write("            <a href=\"listar_produto.jsp\" style=\"text-decoration: none; color: white\">\n");
      out.write("                <div class=\"bg-dark p-10 text-white text-center\">\n");
      out.write("                    <i class=\"fas fa-boxes m-b-5 font-16\"></i>\n");
      out.write("                    <h5 class=\"m-b-0 m-t-5\">");
      model.Produto prod = null;
      synchronized (_jspx_page_context) {
        prod = (model.Produto) _jspx_page_context.getAttribute("prod", PageContext.PAGE_SCOPE);
        if (prod == null){
          prod = new model.Produto();
          _jspx_page_context.setAttribute("prod", prod, PageContext.PAGE_SCOPE);
          out.write("\n");
          out.write("                            ");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${prod.qtdTodosProdutos}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\n");
          out.write("                        ");
        }
      }
      out.write("</h5>\n");
      out.write("                    <small class=\"font-light\">\n");
      out.write("                        Produtos\n");
      out.write("                    </small>\n");
      out.write("                </div>\n");
      out.write("            </a>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"col-6 m-t-15\">\n");
      out.write("            <a href=\"listar_funcionario.jsp\" style=\"text-decoration: none; color: white\">\n");
      out.write("                <div class=\"bg-dark p-10 text-white text-center\">\n");
      out.write("                    <i class=\" mdi mdi-account-card-details m-b-5 font-16\"></i>\n");
      out.write("                    <h5 class=\"m-b-0 m-t-5\">");
      model.Funcionario fun = null;
      synchronized (_jspx_page_context) {
        fun = (model.Funcionario) _jspx_page_context.getAttribute("fun", PageContext.PAGE_SCOPE);
        if (fun == null){
          fun = new model.Funcionario();
          _jspx_page_context.setAttribute("fun", fun, PageContext.PAGE_SCOPE);
          out.write("\n");
          out.write("                            ");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${fun.qtdFuncionario}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\n");
          out.write("                        ");
        }
      }
      out.write("</h5>\n");
      out.write("                    <small class=\"font-light\">Funcionários</small>\n");
      out.write("                </div>\n");
      out.write("            </a>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"col-6 m-t-15\">\n");
      out.write("            <a href=\"listar_servico.jsp\" style=\"text-decoration: none; color: white\">\n");
      out.write("                <div class=\"bg-dark p-10 text-white text-center\">\n");
      out.write("                    <i class=\"mdi mdi-brush m-b-5 font-16\"></i>\n");
      out.write("                    <h5 class=\"m-b-0 m-t-5\">");
      model.Servico serv = null;
      synchronized (_jspx_page_context) {
        serv = (model.Servico) _jspx_page_context.getAttribute("serv", PageContext.PAGE_SCOPE);
        if (serv == null){
          serv = new model.Servico();
          _jspx_page_context.setAttribute("serv", serv, PageContext.PAGE_SCOPE);
          out.write("\n");
          out.write("                            ");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${serv.qtdServico}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\n");
          out.write("                        ");
        }
      }
      out.write("</h5>\n");
      out.write("                    <small class=\"font-light\">Serviços</small>\n");
      out.write("                </div>\n");
      out.write("            </a>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"col-12 m-t-15\">\n");
      out.write("            <a href=\"listar_agendamento.jsp\" style=\"text-decoration: none; color: white\">\n");
      out.write("                <div class=\"bg-dark p-10 text-white text-center\">\n");
      out.write("                    <i class=\"fa fa-calendar-alt m-b-5 font-16\"></i>\n");
      out.write("                    <h5 class=\"m-b-0 m-t-5\">");
      model.Agendamento agend = null;
      synchronized (_jspx_page_context) {
        agend = (model.Agendamento) _jspx_page_context.getAttribute("agend", PageContext.PAGE_SCOPE);
        if (agend == null){
          agend = new model.Agendamento();
          _jspx_page_context.setAttribute("agend", agend, PageContext.PAGE_SCOPE);
          out.write("\n");
          out.write("                            ");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${agend.qtdAgendamento}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\n");
          out.write("                        ");
        }
      }
      out.write("</h5>\n");
      out.write("                    <small class=\"font-light\">Agendamentos</small>\n");
      out.write("                </div>\n");
      out.write("            </a>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("<!-- column -->\n");
      out.write("\n");
      out.write("\n");
      out.write("                                            <!-- column -->\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <!-- ============================================================== -->\n");
      out.write("                    <!-- CONTEUDO - PRIMEIRA BLOCO -->\n");
      out.write("                    <!-- ============================================================== -->\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                    <!-- ============================================================== -->\n");
      out.write("                    <!-- CONTEUDO - SEGUNDO BLOCO -->\n");
      out.write("                    <!-- ============================================================== -->\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <!-- column -->\n");
      out.write("                        <div class=\"col-lg-6\">\n");
      out.write("\n");
      out.write("                            <!-- Card -->\n");
      out.write("                            <div class=\"card\">\n");
      out.write("                                <div class=\"card-body\">\n");
      out.write("                                    <h4 class=\"card-title\">Serviços</h4>\n");
      out.write("                                    <canvas id=\"qtdserv\" width=\"800\" height=\"450\"></canvas>\n");
      out.write("\n");
      out.write("\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            ");
      model.AgendamentoServico agen = null;
      synchronized (_jspx_page_context) {
        agen = (model.AgendamentoServico) _jspx_page_context.getAttribute("agen", PageContext.PAGE_SCOPE);
        if (agen == null){
          agen = new model.AgendamentoServico();
          _jspx_page_context.setAttribute("agen", agen, PageContext.PAGE_SCOPE);
        }
      }
      out.write("\n");
      out.write("\n");
      out.write("                            <div class=\"card\">\n");
      out.write("                                <div class=\"card-body\">\n");
      out.write("                                    <h4 class=\"card-title m-b-0\">Próximos Agendamentos</h4>\n");
      out.write("                                </div>\n");
      out.write("                                <ul class=\"list-style-none\" style=\"min-height: 150px; max-height: 250px; overflow-y: scroll; \">\n");
      out.write("                                    ");
      if (_jspx_meth_c_forEach_2(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                                </ul>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <!-- column -->\n");
      out.write("\n");
      out.write("                        <div class=\"col-lg-6\">\n");
      out.write("                            <!-- Card -->\n");
      out.write("                            <div class=\"card\">\n");
      out.write("                                <div class=\"card-body\">\n");
      out.write("                                    <canvas id=\"qtdPorFun\" width=\"800\" height=\"450\"></canvas>\n");
      out.write("\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <!-- card -->\n");
      out.write("                            <div class=\"card\">\n");
      out.write("                                <canvas id=\"qtdProduto\" width=\"800\" height=\"450\"></canvas>\n");
      out.write("\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                            <!-- toggle part -->\n");
      out.write("                            \n");
      out.write("                            <!-- Tabs -->\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <!-- ============================================================== -->\n");
      out.write("                    <!-- SEGUNDO - BLOCO -->\n");
      out.write("                    <!-- ============================================================== -->\n");
      out.write("                </div>\n");
      out.write("                <!-- ============================================================== -->\n");
      out.write("                <!-- FIM DO CONTAINER - FLUID  -->\n");
      out.write("                <!-- ============================================================== -->\n");
      out.write("\n");
      out.write("\n");
      out.write("                <!-- ============================================================== -->\n");
      out.write("                <!-- RODAPÉ -->\n");
      out.write("                <!-- ============================================================== -->\n");
      out.write("                <footer class=\"footer text-center\">\n");
      out.write("                    Gabriel Marques &COPY;\n");
      out.write("                </footer>\n");
      out.write("                <!-- ============================================================== -->\n");
      out.write("                <!-- RODAPÉ -->\n");
      out.write("                <!-- ============================================================== -->\n");
      out.write("            </div>\n");
      out.write("            <!-- ============================================================== -->\n");
      out.write("            <!-- FIM DA PÁGINA  -->\n");
      out.write("            <!-- ============================================================== -->\n");
      out.write("        </div>\n");
      out.write("        <!-- ============================================================== -->\n");
      out.write("        <!-- FIM DA DIV PRINCIPAL -->\n");
      out.write("        <!-- ============================================================== -->\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!-- ============================================================== -->\n");
      out.write("        <!-- JQUERY UTILIZADO-->\n");
      out.write("        <!-- ============================================================== -->\n");
      out.write("        <script src=\"jquery/graficos.min.js\"></script>\n");
      out.write("\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("\n");
      out.write("            var nome = [];\n");
      out.write("            ");
      model.AgendamentoServico asd = null;
      synchronized (_jspx_page_context) {
        asd = (model.AgendamentoServico) _jspx_page_context.getAttribute("asd", PageContext.PAGE_SCOPE);
        if (asd == null){
          asd = new model.AgendamentoServico();
          _jspx_page_context.setAttribute("asd", asd, PageContext.PAGE_SCOPE);
          out.write("\n");
          out.write("\n");
          out.write("\n");
          out.write("            new Chart(document.getElementById(\"qtdAgendamento\"), {\n");
          out.write("                type: 'bar',\n");
          out.write("                data: {\n");
          out.write("                    labels: [\"Realizados\", \"Agendados\", \" Cancelados\"],\n");
          out.write("                    datasets: [{\n");
          out.write("                            label: \"\",\n");
          out.write("                            backgroundColor: [\"#67d328\", \"#e8d914\", \"#ba1414\"],\n");
          out.write("                            data: [");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${asd.quantidadePorStatus.get(1)}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write(',');
          out.write(' ');
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${asd.quantidadePorStatus.get(0)}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write(',');
          out.write(' ');
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${asd.quantidadePorStatus.get(2)}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write(", 0]\n");
          out.write("                        }]\n");
          out.write("                },\n");
          out.write("                options: {\n");
          out.write("                    legend: {display: false},\n");
          out.write("                    title: {\n");
          out.write("                        display: true,\n");
          out.write("                        text: 'Agendamentos'\n");
          out.write("                    }\n");
          out.write("                }\n");
          out.write("            });\n");
          out.write("            ");
        }
      }
      out.write("\n");
      out.write("//--------------------------------------------------------------------------------------------------------------------------------------//\n");
      out.write("            ");
      model.Servico servico = null;
      synchronized (_jspx_page_context) {
        servico = (model.Servico) _jspx_page_context.getAttribute("servico", PageContext.PAGE_SCOPE);
        if (servico == null){
          servico = new model.Servico();
          _jspx_page_context.setAttribute("servico", servico, PageContext.PAGE_SCOPE);
        }
      }
      out.write("\n");
      out.write("\n");
      out.write("            var nome = [];\n");
      out.write("            var quan = [];\n");
      out.write("            ");
      if (_jspx_meth_c_forEach_3(_jspx_page_context))
        return;
      out.write("\n");
      out.write("            var back = [\"#e5550d\", \"#d3e021\", \"#73e021\", \"#21e0a0\", \"#2c92e0\", \"#c242f4\", \"#41f4d6\", \"#f4af41\"];\n");
      out.write("            new Chart(document.getElementById(\"qtdserv\"), {\n");
      out.write("                type: 'pie',\n");
      out.write("                data: {\n");
      out.write("                    labels: nome,\n");
      out.write("                    datasets: [{\n");
      out.write("                            label: \"quantidade realizada\",\n");
      out.write("                            backgroundColor: back,\n");
      out.write("                            data: quan\n");
      out.write("                        }]\n");
      out.write("                },\n");
      out.write("                options: {\n");
      out.write("                    title: {\n");
      out.write("                        display: true,\n");
      out.write("                        text: 'Serviços mais realizados'\n");
      out.write("                    }\n");
      out.write("                }\n");
      out.write("            });\n");
      out.write("\n");
      out.write("//--------------------------------------------------------------------------------------------------------------------------------------//\n");
      out.write("\n");
      out.write("            var nome = [];\n");
      out.write("            var quan = [];\n");
      out.write("\n");
      out.write("            ");
      if (_jspx_meth_c_forEach_4(_jspx_page_context))
        return;
      out.write("\n");
      out.write("            quan.push(0);\n");
      out.write("            quan.push(80);\n");
      out.write("            new Chart(document.getElementById(\"qtdPorFun\"), {\n");
      out.write("                type: 'horizontalBar',\n");
      out.write("                data: {\n");
      out.write("\n");
      out.write("                    labels: nome,\n");
      out.write("                    datasets: [{\n");
      out.write("                            label: \"Atendimentos\",\n");
      out.write("                            backgroundColor: [\"#3e95cd\", \"#8e5ea2\", \"#\", \"#\", \"#\"],\n");
      out.write("                            data: quan\n");
      out.write("                        }\n");
      out.write("                    ]\n");
      out.write("                },\n");
      out.write("\n");
      out.write("                options: {\n");
      out.write("                    legend: {display: false},\n");
      out.write("                    title: {\n");
      out.write("                        display: true,\n");
      out.write("                        text: 'Atendimentos por funcionário'\n");
      out.write("                    }\n");
      out.write("                }\n");
      out.write("            });\n");
      out.write("\n");
      out.write("//--------------------------------------------------------------------------------------------------------------------------------------//\n");
      out.write("            var back = [];\n");
      out.write("            nome = [];\n");
      out.write("            quan = [];\n");
      out.write("            ");
      if (_jspx_meth_c_forEach_5(_jspx_page_context))
        return;
      out.write("\n");
      out.write("            quan.push(0);\n");
      out.write("            quan.push(100);\n");
      out.write("\n");
      out.write("            new Chart(document.getElementById(\"qtdProduto\"), {\n");
      out.write("                type: 'bar',\n");
      out.write("                data: {\n");
      out.write("                    labels: nome,\n");
      out.write("                    datasets: [{\n");
      out.write("                            label: \"Quantidade\",\n");
      out.write("                            backgroundColor: back,\n");
      out.write("                            data: quan\n");
      out.write("                        }]\n");
      out.write("                },\n");
      out.write("                options: {\n");
      out.write("                    legend: {display: false},\n");
      out.write("                    title: {\n");
      out.write("                        display: true,\n");
      out.write("                        text: 'Quantidade por produto (UND)'\n");
      out.write("                    }\n");
      out.write("                }\n");
      out.write("            });\n");
      out.write("        </script>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <script src=\"assets/libs/jquery/dist/jquery.min.js\"></script>\n");
      out.write("        <!-- Bootstrap tether Core JavaScript -->\n");
      out.write("        <script src=\"assets/libs/popper.js/dist/umd/popper.min.js\"></script>\n");
      out.write("        <script src=\"assets/libs/bootstrap/dist/js/bootstrap.min.js\"></script>\n");
      out.write("        <script src=\"assets/libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js\"></script>\n");
      out.write("        <script src=\"assets/extra-libs/sparkline/sparkline.js\"></script>\n");
      out.write("        <!--Wave Effects -->\n");
      out.write("        <script src=\"dist/js/waves.js\"></script>\n");
      out.write("        <!--Menu sidebar -->\n");
      out.write("        <script src=\"dist/js/sidebarmenu.js\"></script>\n");
      out.write("        <!--Custom JavaScript -->\n");
      out.write("        <script src=\"dist/js/custom.min.js\"></script>\n");
      out.write("        <!--This page JavaScript -->\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }

  private boolean _jspx_meth_c_if_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_0 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_0.setPageContext(_jspx_page_context);
    _jspx_th_c_if_0.setParent(null);
    _jspx_th_c_if_0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${ulogado!=null}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_0 = _jspx_th_c_if_0.doStartTag();
    if (_jspx_eval_c_if_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write(' ');
        int evalDoAfterBody = _jspx_th_c_if_0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_0);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_0);
    return false;
  }

  private boolean _jspx_meth_c_if_1(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_1 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_1.setPageContext(_jspx_page_context);
    _jspx_th_c_if_1.setParent(null);
    _jspx_th_c_if_1.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${ulogado!=null && ulogado.perfil!=null}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_1 = _jspx_th_c_if_1.doStartTag();
    if (_jspx_eval_c_if_1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                    ");
        if (_jspx_meth_c_forEach_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_if_1, _jspx_page_context))
          return true;
        out.write("\n");
        out.write("                ");
        int evalDoAfterBody = _jspx_th_c_if_1.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_1);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_1);
    return false;
  }

  private boolean _jspx_meth_c_forEach_0(javax.servlet.jsp.tagext.JspTag _jspx_th_c_if_1, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_0.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_if_1);
    _jspx_th_c_forEach_0.setVar("menu");
    _jspx_th_c_forEach_0.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${ulogado.perfil.menus}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int[] _jspx_push_body_count_c_forEach_0 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_0 = _jspx_th_c_forEach_0.doStartTag();
      if (_jspx_eval_c_forEach_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                        ");
          if (_jspx_meth_c_if_2((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_0, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
            return true;
          out.write("\n");
          out.write("                    ");
          int evalDoAfterBody = _jspx_th_c_forEach_0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_0[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_0.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_0.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_0);
    }
    return false;
  }

  private boolean _jspx_meth_c_if_2(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_2 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_2.setPageContext(_jspx_page_context);
    _jspx_th_c_if_2.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_0);
    _jspx_th_c_if_2.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${menu.exibir==1}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_2 = _jspx_th_c_if_2.doStartTag();
    if (_jspx_eval_c_if_2 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                            <li class=\"sidebar-item\"> <a class=\"sidebar-link waves waves-dark sidebar-link \"  href=\"");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${menu.link}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write("\" aria-expanded=\"false\">\n");
        out.write("                                    <i class=\"");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${menu.icone}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write("\"></i><span class=\"hide-menu\">");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${menu.menu}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write("</span></a></li>\n");
        out.write("                        ");
        int evalDoAfterBody = _jspx_th_c_if_2.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_2.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_2);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_2);
    return false;
  }

  private boolean _jspx_meth_c_if_3(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_3 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_3.setPageContext(_jspx_page_context);
    _jspx_th_c_if_3.setParent(null);
    _jspx_th_c_if_3.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${ulogado!=null && ulogado.perfil!=null}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_3 = _jspx_th_c_if_3.doStartTag();
    if (_jspx_eval_c_if_3 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                            ");
        if (_jspx_meth_c_forEach_1((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_if_3, _jspx_page_context))
          return true;
        out.write("\n");
        out.write("                        ");
        int evalDoAfterBody = _jspx_th_c_if_3.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_3.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_3);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_3);
    return false;
  }

  private boolean _jspx_meth_c_forEach_1(javax.servlet.jsp.tagext.JspTag _jspx_th_c_if_3, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_1 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_1.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_1.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_if_3);
    _jspx_th_c_forEach_1.setVar("menu");
    _jspx_th_c_forEach_1.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${ulogado.perfil.menus}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int[] _jspx_push_body_count_c_forEach_1 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_1 = _jspx_th_c_forEach_1.doStartTag();
      if (_jspx_eval_c_forEach_1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                                ");
          if (_jspx_meth_c_if_4((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_1, _jspx_page_context, _jspx_push_body_count_c_forEach_1))
            return true;
          out.write("\n");
          out.write("                            ");
          int evalDoAfterBody = _jspx_th_c_forEach_1.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_1[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_1.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_1.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_1);
    }
    return false;
  }

  private boolean _jspx_meth_c_if_4(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_1, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_1)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_4 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_4.setPageContext(_jspx_page_context);
    _jspx_th_c_if_4.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_1);
    _jspx_th_c_if_4.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${menu.exibir==1}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_4 = _jspx_th_c_if_4.doStartTag();
    if (_jspx_eval_c_if_4 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                                    <div class=\"col-md-4 col-lg-4 col-xlg-4\">\n");
        out.write("                                        <div class=\"card card-hover\">\n");
        out.write("                                            <a href=\"");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${menu.link}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write("\">\n");
        out.write("                                                <div class=\"box text-center\"  style=\"background-color: #e6005c;\">\n");
        out.write("                                                    <h1 class=\"font-light text-white\"><i class=\"");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${menu.icone}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write("\"></i></h1>\n");
        out.write("                                                    <h6 class=\"text-white\">");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${menu.menu}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write("</h6>\n");
        out.write("                                                </div>\n");
        out.write("                                            </a>\n");
        out.write("                                        </div>\n");
        out.write("                                    </div>\n");
        out.write("\n");
        out.write("                                ");
        int evalDoAfterBody = _jspx_th_c_if_4.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_4.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_4);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_4);
    return false;
  }

  private boolean _jspx_meth_c_forEach_2(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_2 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_2.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_2.setParent(null);
    _jspx_th_c_forEach_2.setVar("a");
    _jspx_th_c_forEach_2.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${agen.listaDataDesc}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int[] _jspx_push_body_count_c_forEach_2 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_2 = _jspx_th_c_forEach_2.doStartTag();
      if (_jspx_eval_c_forEach_2 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                                        <li class=\"d-flex no-block card-body brabo\">\n");
          out.write("                                            <i class=\"fa fa-check-circle w-30px m-t-5\"></i>\n");
          out.write("                                            <div class=\"container mr-0\">\n");
          out.write("                                                <div class=\"row \">\n");
          out.write("                                                    <div class=\"col-4  \">\n");
          out.write("                                                        <span class=\"\">Cliente: ");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${a.agendamento.cliente.nome}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</span><br>\n");
          out.write("                                                        <span class=\"\">Serviço: ");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${a.servico.nome_servico}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write(" </span>\n");
          out.write("                                                    </div>\n");
          out.write("                                                    <div class=\"col-5\">\n");
          out.write("                                                        <span>Funcionário: ");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${a.agendamento.funcionario.nome}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</span><br> \n");
          out.write("                                                        <span style=\"color: #008a00\">R$ ");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${a.servico.preco}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("0</span>\n");
          out.write("                                                    </div>\n");
          out.write("                                                    <div class=\"col-3\">\n");
          out.write("                                                        <div class=\"text-right\">\n");
          out.write("                                                            ");
          if (_jspx_meth_fmt_parseDate_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_2, _jspx_page_context, _jspx_push_body_count_c_forEach_2))
            return true;
          out.write("\n");
          out.write("                                                            <h5 class=\"text-muted mb-0\">");
          if (_jspx_meth_fmt_formatDate_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_2, _jspx_page_context, _jspx_push_body_count_c_forEach_2))
            return true;
          out.write("</h5>\n");
          out.write("                                                            <span class=\"text-muted font-16\">");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${a.horario}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</span>\n");
          out.write("                                                        </div>\n");
          out.write("                                                    </div>\n");
          out.write("                                                </div>\n");
          out.write("                                            </div>\n");
          out.write("\n");
          out.write("                                        </li>\n");
          out.write("                                    ");
          int evalDoAfterBody = _jspx_th_c_forEach_2.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_2.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_2[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_2.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_2.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_2);
    }
    return false;
  }

  private boolean _jspx_meth_fmt_parseDate_0(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_2, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_2)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  fmt:parseDate
    org.apache.taglibs.standard.tag.rt.fmt.ParseDateTag _jspx_th_fmt_parseDate_0 = (org.apache.taglibs.standard.tag.rt.fmt.ParseDateTag) _jspx_tagPool_fmt_parseDate_var_value_pattern_nobody.get(org.apache.taglibs.standard.tag.rt.fmt.ParseDateTag.class);
    _jspx_th_fmt_parseDate_0.setPageContext(_jspx_page_context);
    _jspx_th_fmt_parseDate_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_2);
    _jspx_th_fmt_parseDate_0.setValue((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${a.agendamento.data}", java.lang.String.class, (PageContext)_jspx_page_context, null));
    _jspx_th_fmt_parseDate_0.setPattern("yyyy-MM-dd");
    _jspx_th_fmt_parseDate_0.setVar("parsedDate");
    int _jspx_eval_fmt_parseDate_0 = _jspx_th_fmt_parseDate_0.doStartTag();
    if (_jspx_th_fmt_parseDate_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_fmt_parseDate_var_value_pattern_nobody.reuse(_jspx_th_fmt_parseDate_0);
      return true;
    }
    _jspx_tagPool_fmt_parseDate_var_value_pattern_nobody.reuse(_jspx_th_fmt_parseDate_0);
    return false;
  }

  private boolean _jspx_meth_fmt_formatDate_0(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_2, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_2)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  fmt:formatDate
    org.apache.taglibs.standard.tag.rt.fmt.FormatDateTag _jspx_th_fmt_formatDate_0 = (org.apache.taglibs.standard.tag.rt.fmt.FormatDateTag) _jspx_tagPool_fmt_formatDate_value_pattern_nobody.get(org.apache.taglibs.standard.tag.rt.fmt.FormatDateTag.class);
    _jspx_th_fmt_formatDate_0.setPageContext(_jspx_page_context);
    _jspx_th_fmt_formatDate_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_2);
    _jspx_th_fmt_formatDate_0.setValue((java.util.Date) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${parsedDate}", java.util.Date.class, (PageContext)_jspx_page_context, null));
    _jspx_th_fmt_formatDate_0.setPattern("dd MMM yy");
    int _jspx_eval_fmt_formatDate_0 = _jspx_th_fmt_formatDate_0.doStartTag();
    if (_jspx_th_fmt_formatDate_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_fmt_formatDate_value_pattern_nobody.reuse(_jspx_th_fmt_formatDate_0);
      return true;
    }
    _jspx_tagPool_fmt_formatDate_value_pattern_nobody.reuse(_jspx_th_fmt_formatDate_0);
    return false;
  }

  private boolean _jspx_meth_c_forEach_3(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_3 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_3.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_3.setParent(null);
    _jspx_th_c_forEach_3.setVar("s");
    _jspx_th_c_forEach_3.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${servico.quantidadeRealizada}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int[] _jspx_push_body_count_c_forEach_3 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_3 = _jspx_th_c_forEach_3.doStartTag();
      if (_jspx_eval_c_forEach_3 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("\n");
          out.write("            nome.push('");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${s.nome_servico}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("');\n");
          out.write("            quan.push(");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${s.idservico}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write(");\n");
          out.write("            ");
          int evalDoAfterBody = _jspx_th_c_forEach_3.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_3.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_3[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_3.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_3.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_3);
    }
    return false;
  }

  private boolean _jspx_meth_c_forEach_4(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_4 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_4.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_4.setParent(null);
    _jspx_th_c_forEach_4.setVar("a");
    _jspx_th_c_forEach_4.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${agend.quantidadePorFuncionario}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int[] _jspx_push_body_count_c_forEach_4 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_4 = _jspx_th_c_forEach_4.doStartTag();
      if (_jspx_eval_c_forEach_4 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("\n");
          out.write("            nome.push('");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${a.funcionario.nome}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("');\n");
          out.write("            quan.push(");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${a.idagendamento}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write(");\n");
          out.write("\n");
          out.write("\n");
          out.write("            ");
          int evalDoAfterBody = _jspx_th_c_forEach_4.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_4.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_4[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_4.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_4.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_4);
    }
    return false;
  }

  private boolean _jspx_meth_c_forEach_5(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_5 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_5.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_5.setParent(null);
    _jspx_th_c_forEach_5.setVar("p");
    _jspx_th_c_forEach_5.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${prod.quantidadePorProduto}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int[] _jspx_push_body_count_c_forEach_5 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_5 = _jspx_th_c_forEach_5.doStartTag();
      if (_jspx_eval_c_forEach_5 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("\n");
          out.write("            nome.push('");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.nome}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("');\n");
          out.write("            quan.push(");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.quantidade}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write(");\n");
          out.write("            if (");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.quantidade}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write(" <= 10) {\n");
          out.write("                back.push(\"#dd0000\");\n");
          out.write("            } else if (");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.quantidade}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write(" > 10 && ");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.quantidade}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write(" <= 15) {\n");
          out.write("                back.push(\"#f9c804\");\n");
          out.write("            } else {\n");
          out.write("                back.push(\"#65e018\");\n");
          out.write("            }\n");
          out.write("\n");
          out.write("            ");
          int evalDoAfterBody = _jspx_th_c_forEach_5.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_5.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_5[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_5.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_5.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_5);
    }
    return false;
  }
}
