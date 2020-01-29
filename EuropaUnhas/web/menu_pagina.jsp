
<%-- 
    Document   : index
    Created on : 20/02/2019, 20:48:34
    Author     : Administrador
--%>
<%@page import="model.Usuario"%>
<%@page import="model.Cliente"%>
<%@page import="model.Funcionario"%>
<%@page import="model.Agendamento"%>
<%@page import="model.Servico"%>
<%@page import="model.Menu"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html  dir="ltr" lang="pt-br">
    <head>
        <%@include file="required_meta.jsp" %>
        <script src="jquery/jquery-3.2.1.min.js"></script>
        <script>
        </script>    
    </head>

    <body>

        <!-- ============================================================== -->
        <!-- DIV PRINCIAL - pages.scss -->
        <!-- ============================================================== -->
        <div id="main-wrapper">
            <!-- ============================================================== -->
            <!-- MENU SUPERIOR -  pages.scss -->
            <!-- ============================================================== -->

            <%@include file="header.jsp" %>
            <!-- ============================================================== -->
            <!-- FIM DO MENU SUPERIOR -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- MENU PRINCIPAL DA ESQUERDA - sidebar.scss  -->
            <!-- ============================================================== -->

            <%@include file="menu_admin.jsp" %>
            <!-- ============================================================== -->
            <!-- CONTEUDO  -->
            <!-- ============================================================== -->
            <div class="page-wrapper">
                <!-- ============================================================== -->
                <!-- INFORMAÇÃO DE QUEM ESTÁ LOGADO -->
                <!-- ============================================================== -->
                <div class="page-breadcrumb">
                    <div class="row">
                        <div class="col-12 d-flex no-block align-items-center">
                            <h4 class="page-title">${ulogado.perfil} - ${usando.nome}</h4>
                            <div class="ml-auto text-right">

                            </div>
                        </div>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- INFORMAÇÃO DE QUEM ESTÁ LOGADO -->
                <!-- ============================================================== -->
                <!-- ============================================================== -->
                <!-- CONTAINER DOS MINI BOTÕES  -->
                <!-- ============================================================== -->
                <div class="container-fluid" >
                    <!-- ============================================================== -->
                    <!-- MINI BOTÕES -->
                    <!-- ============================================================== -->
                    <div class="row">
                        <!-- Column -->
                        <div class="col-md-6 col-lg-6 col-xlg-6">
                            <div class="card card-hover">
                                <a href="form_menu.jsp">
                                    <div class="box meusCards1 text-center" >
                                        <h1 class="font-light text-white"><i class="mdi mdi-library-plus"></i></h1>
                                        <h6 class="text-white">Cadastrar</h6>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <!-- Column -->
                        <div class="col-md-6 col-lg-6 col-xlg-6">
                            <div class="card card-hover">
                                <a href="listar_menu.jsp">
                                    <div class="box meusCards2 text-center" >
                                        <h1 class="font-light text-white"><i class="fas fa-search"></i></h1>
                                        <h6 class="text-white"  >Consultar Menus</h6>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <!-- Column -->
                    </div>
                    <!-- ============================================================== -->
                    <!-- CONTEUDO -->
                    <!-- ============================================================== -->
                    <!-- ============================================================== -->
                    <div class="row">
                        <div class="col-md-12">
                            <div class="card">
                                <div class="card-body">
                                    <div class="d-md-flex align-items-center">
                                        <div>
                                            <h4 class="card-title">Acompanhamento</h4>
                                            <h5 class="card-subtitle">Últimas atualizações</h5>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <!-- column -->
                                        <div class="col-lg-9">
                                            <div class="flot-chart">
                                                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                                                    <canvas id="line-chart" width="800" height="450"></canvas>
                                                    <script src="jquery/graficos.min.js"></script>

        <script type="text/javascript">
     new Chart(document.getElementById("line-chart"), {
  type: 'line',
  data: {
    labels: ['20-05-2019','10-06-2019','11-06-2019'],
    datasets: [{ 
        data: [0,35,45],
        label: "Menus",
        borderColor: "#6cd626",
        fill: false
      }
    ]
  },
  options: {
    title: {
      display: true,
      text: 'Quantidade de menus'
    }
  }
});
                     </script>
                                                    
                                                </div>
                                            </div>
                                        </div>
                                        <%@include file="mini_informacoes.jsp" %>
                                        <!-- column -->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- ============================================================== -->
                    <!-- Sales chart -->
                    <!-- ============================================================== -->



                    <!-- ============================================================== -->
                    <!-- Recent comment and chats -->
                    <!-- ============================================================== -->
                    <div class="row">
                        <!-- column -->

                        <div class="col-lg-12">
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="card-title m-b-0">Icones para os menus</h4>
                                </div>

                                <ul class="nav nav-tabs" id="myTab" role="tablist">
                                    <li class="nav-item">
                                        <a class="nav-link active" id="home-tab" data-toggle="tab" href="#mdi" role="tab" aria-controls="mdi" aria-selected="true">Ícones MDI</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" id="profile-tab" data-toggle="tab" href="#fas" role="tab" aria-controls="fas" aria-selected="false">Ícones FAS</a>
                                    </li>
                                </ul>
                                <div class="tab-content" id="myTabContent" style="min-height: 150px; max-height: 250px; overflow-y: scroll; overflow-x:hidden" >
                                    <div class="tab-pane fade show active" id="mdi" role="tabpanel" aria-labelledby="home-tab" id="mdi" >
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-access-point"></i><code class="m-r-10">f002</code><span>mdi mdi-access-point</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-access-point-network"></i><code class="m-r-10">f003</code><span>mdi mdi-access-point-network</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-account"></i><code class="m-r-10">f004</code><span>mdi mdi-account</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-account-alert"></i><code class="m-r-10">f005</code><span>mdi mdi-account-alert</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-account-box"></i><code class="m-r-10">f006</code><span>mdi mdi-account-box</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-account-box-outline"></i><code class="m-r-10">f007</code><span>mdi mdi-account-box-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-account-card-details"></i><code class="m-r-10">f5d2</code><span>mdi mdi-account-card-details</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-account-check"></i><code class="m-r-10">f008</code><span>mdi mdi-account-check</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-account-circle"></i><code class="m-r-10">f009</code><span>mdi mdi-account-circle</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-account-convert"></i><code class="m-r-10">f00a</code><span>mdi mdi-account-convert</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-account-edit"></i><code class="m-r-10">f6bb</code><span>mdi mdi-account-edit</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-account-key"></i><code class="m-r-10">f00b</code><span>mdi mdi-account-key</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-account-location"></i><code class="m-r-10">f00c</code><span>mdi mdi-account-location</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-account-minus"></i><code class="m-r-10">f00d</code><span>mdi mdi-account-minus</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-account-multiple"></i><code class="m-r-10">f00e</code><span>mdi mdi-account-multiple</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-account-multiple-minus"></i><code class="m-r-10">f5d3</code><span>mdi mdi-account-multiple-minus</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-account-multiple-outline"></i><code class="m-r-10">f00f</code><span>mdi mdi-account-multiple-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-account-multiple-plus"></i><code class="m-r-10">f010</code><span>mdi mdi-account-multiple-plus</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-account-network"></i><code class="m-r-10">f011</code><span>mdi mdi-account-network</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-account-off"></i><code class="m-r-10">f012</code><span>mdi mdi-account-off</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-account-outline"></i><code class="m-r-10">f013</code><span>mdi mdi-account-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-account-plus"></i><code class="m-r-10">f014</code><span>mdi mdi-account-plus</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-account-remove"></i><code class="m-r-10">f015</code><span>mdi mdi-account-remove</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-account-search"></i><code class="m-r-10">f016</code><span>mdi mdi-account-search</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-account-settings"></i><code class="m-r-10">f630</code><span>mdi mdi-account-settings</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-account-settings-variant"></i><code class="m-r-10">f631</code><span>mdi mdi-account-settings-variant</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-account-star"></i><code class="m-r-10">f017</code><span>mdi mdi-account-star</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-account-star-variant"></i><code class="m-r-10">f018</code><span>mdi mdi-account-star-variant</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-account-switch"></i><code class="m-r-10">f019</code><span>mdi mdi-account-switch</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-adjust"></i><code class="m-r-10">f01a</code><span>mdi mdi-adjust</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-air-conditioner"></i><code class="m-r-10">f01b</code><span>mdi mdi-air-conditioner</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-airballoon"></i><code class="m-r-10">f01c</code><span>mdi mdi-airballoon</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-airplane"></i><code class="m-r-10">f01d</code><span>mdi mdi-airplane</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-airplane-landing"></i><code class="m-r-10">f5d4</code><span>mdi mdi-airplane-landing</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-airplane-off"></i><code class="m-r-10">f01e</code><span>mdi mdi-airplane-off</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-airplane-takeoff"></i><code class="m-r-10">f5d5</code><span>mdi mdi-airplane-takeoff</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-airplay"></i><code class="m-r-10">f01f</code><span>mdi mdi-airplay</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-alarm"></i><code class="m-r-10">f020</code><span>mdi mdi-alarm</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-alarm-check"></i><code class="m-r-10">f021</code><span>mdi mdi-alarm-check</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-alarm-multiple"></i><code class="m-r-10">f022</code><span>mdi mdi-alarm-multiple</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-alarm-off"></i><code class="m-r-10">f023</code><span>mdi mdi-alarm-off</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-alarm-plus"></i><code class="m-r-10">f024</code><span>mdi mdi-alarm-plus</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-alarm-snooze"></i><code class="m-r-10">f68d</code><span>mdi mdi-alarm-snooze</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-album"></i><code class="m-r-10">f025</code><span>mdi mdi-album</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-alert"></i><code class="m-r-10">f026</code><span>mdi mdi-alert</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-alert-box"></i><code class="m-r-10">f027</code><span>mdi mdi-alert-box</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-alert-circle"></i><code class="m-r-10">f028</code><span>mdi mdi-alert-circle</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-alert-circle-outline"></i><code class="m-r-10">f5d6</code><span>mdi mdi-alert-circle-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-alert-octagon"></i><code class="m-r-10">f029</code><span>mdi mdi-alert-octagon</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-alert-octagram"></i><code class="m-r-10">f6bc</code><span>mdi mdi-alert-octagram</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-alert-outline"></i><code class="m-r-10">f02a</code><span>mdi mdi-alert-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-all-inclusive"></i><code class="m-r-10">f6bd</code><span>mdi mdi-all-inclusive</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-alpha"></i><code class="m-r-10">f02b</code><span>mdi mdi-alpha</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-alphabetical"></i><code class="m-r-10">f02c</code><span>mdi mdi-alphabetical</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-altimeter"></i><code class="m-r-10">f5d7</code><span>mdi mdi-altimeter</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-amazon"></i><code class="m-r-10">f02d</code><span>mdi mdi-amazon</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-amazon-clouddrive"></i><code class="m-r-10">f02e</code><span>mdi mdi-amazon-clouddrive</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-ambulance"></i><code class="m-r-10">f02f</code><span>mdi mdi-ambulance</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-amplifier"></i><code class="m-r-10">f030</code><span>mdi mdi-amplifier</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-anchor"></i><code class="m-r-10">f031</code><span>mdi mdi-anchor</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-android"></i><code class="m-r-10">f032</code><span>mdi mdi-android</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-android-debug-bridge"></i><code class="m-r-10">f033</code><span>mdi mdi-android-debug-bridge</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-android-studio"></i><code class="m-r-10">f034</code><span>mdi mdi-android-studio</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-angular"></i><code class="m-r-10">f6b1</code><span>mdi mdi-angular</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-angularjs"></i><code class="m-r-10">f6be</code><span>mdi mdi-angularjs</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-animation"></i><code class="m-r-10">f5d8</code><span>mdi mdi-animation</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-apple"></i><code class="m-r-10">f035</code><span>mdi mdi-apple</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-apple-finder"></i><code class="m-r-10">f036</code><span>mdi mdi-apple-finder</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-apple-ios"></i><code class="m-r-10">f037</code><span>mdi mdi-apple-ios</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-apple-keyboard-caps"></i><code class="m-r-10">f632</code><span>mdi mdi-apple-keyboard-caps</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-apple-keyboard-command"></i><code class="m-r-10">f633</code><span>mdi mdi-apple-keyboard-command</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-apple-keyboard-control"></i><code class="m-r-10">f634</code><span>mdi mdi-apple-keyboard-control</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-apple-keyboard-option"></i><code class="m-r-10">f635</code><span>mdi mdi-apple-keyboard-option</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-apple-keyboard-shift"></i><code class="m-r-10">f636</code><span>mdi mdi-apple-keyboard-shift</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-apple-mobileme"></i><code class="m-r-10">f038</code><span>mdi mdi-apple-mobileme</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-apple-safari"></i><code class="m-r-10">f039</code><span>mdi mdi-apple-safari</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-application"></i><code class="m-r-10">f614</code><span>mdi mdi-application</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-apps"></i><code class="m-r-10">f03b</code><span>mdi mdi-apps</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-archive"></i><code class="m-r-10">f03c</code><span>mdi mdi-archive</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-arrange-bring-forward"></i><code class="m-r-10">f03d</code><span>mdi mdi-arrange-bring-forward</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-arrange-bring-to-front"></i><code class="m-r-10">f03e</code><span>mdi mdi-arrange-bring-to-front</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-arrange-send-backward"></i><code class="m-r-10">f03f</code><span>mdi mdi-arrange-send-backward</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-arrange-send-to-back"></i><code class="m-r-10">f040</code><span>mdi mdi-arrange-send-to-back</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-arrow-all"></i><code class="m-r-10">f041</code><span>mdi mdi-arrow-all</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-arrow-bottom-left"></i><code class="m-r-10">f042</code><span>mdi mdi-arrow-bottom-left</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-arrow-bottom-right"></i><code class="m-r-10">f043</code><span>mdi mdi-arrow-bottom-right</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-arrow-compress"></i><code class="m-r-10">f615</code><span>mdi mdi-arrow-compress</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-arrow-compress-all"></i><code class="m-r-10">f044</code><span>mdi mdi-arrow-compress-all</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-arrow-down"></i><code class="m-r-10">f045</code><span>mdi mdi-arrow-down</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-arrow-down-bold"></i><code class="m-r-10">f046</code><span>mdi mdi-arrow-down-bold</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-arrow-down-bold-circle"></i><code class="m-r-10">f047</code><span>mdi mdi-arrow-down-bold-circle</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-arrow-down-bold-circle-outline"></i><code class="m-r-10">f048</code><span>mdi mdi-arrow-down-bold-circle-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-arrow-down-bold-hexagon-outline"></i><code class="m-r-10">f049</code><span>mdi mdi-arrow-down-bold-hexagon-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-arrow-down-box"></i><code class="m-r-10">f6bf</code><span>mdi mdi-arrow-down-box</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-arrow-down-drop-circle"></i><code class="m-r-10">f04a</code><span>mdi mdi-arrow-down-drop-circle</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-arrow-down-drop-circle-outline"></i><code class="m-r-10">f04b</code><span>mdi mdi-arrow-down-drop-circle-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-arrow-expand"></i><code class="m-r-10">f616</code><span>mdi mdi-arrow-expand</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-arrow-expand-all"></i><code class="m-r-10">f04c</code><span>mdi mdi-arrow-expand-all</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-arrow-left"></i><code class="m-r-10">f04d</code><span>mdi mdi-arrow-left</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-arrow-left-bold"></i><code class="m-r-10">f04e</code><span>mdi mdi-arrow-left-bold</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-arrow-left-bold-circle"></i><code class="m-r-10">f04f</code><span>mdi mdi-arrow-left-bold-circle</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-arrow-left-bold-circle-outline"></i><code class="m-r-10">f050</code><span>mdi mdi-arrow-left-bold-circle-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-arrow-left-bold-hexagon-outline"></i><code class="m-r-10">f051</code><span>mdi mdi-arrow-left-bold-hexagon-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-arrow-left-box"></i><code class="m-r-10">f6c0</code><span>mdi mdi-arrow-left-box</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-arrow-left-drop-circle"></i><code class="m-r-10">f052</code><span>mdi mdi-arrow-left-drop-circle</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-arrow-left-drop-circle-outline"></i><code class="m-r-10">f053</code><span>mdi mdi-arrow-left-drop-circle-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-arrow-right"></i><code class="m-r-10">f054</code><span>mdi mdi-arrow-right</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-arrow-right-bold"></i><code class="m-r-10">f055</code><span>mdi mdi-arrow-right-bold</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-arrow-right-bold-circle"></i><code class="m-r-10">f056</code><span>mdi mdi-arrow-right-bold-circle</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-arrow-right-bold-circle-outline"></i><code class="m-r-10">f057</code><span>mdi mdi-arrow-right-bold-circle-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-arrow-right-bold-hexagon-outline"></i><code class="m-r-10">f058</code><span>mdi mdi-arrow-right-bold-hexagon-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-arrow-right-box"></i><code class="m-r-10">f6c1</code><span>mdi mdi-arrow-right-box</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-arrow-right-drop-circle"></i><code class="m-r-10">f059</code><span>mdi mdi-arrow-right-drop-circle</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-arrow-right-drop-circle-outline"></i><code class="m-r-10">f05a</code><span>mdi mdi-arrow-right-drop-circle-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-arrow-top-left"></i><code class="m-r-10">f05b</code><span>mdi mdi-arrow-top-left</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-arrow-top-right"></i><code class="m-r-10">f05c</code><span>mdi mdi-arrow-top-right</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-arrow-up"></i><code class="m-r-10">f05d</code><span>mdi mdi-arrow-up</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-arrow-up-bold"></i><code class="m-r-10">f05e</code><span>mdi mdi-arrow-up-bold</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-arrow-up-bold-circle"></i><code class="m-r-10">f05f</code><span>mdi mdi-arrow-up-bold-circle</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-arrow-up-bold-circle-outline"></i><code class="m-r-10">f060</code><span>mdi mdi-arrow-up-bold-circle-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-arrow-up-bold-hexagon-outline"></i><code class="m-r-10">f061</code><span>mdi mdi-arrow-up-bold-hexagon-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-arrow-up-box"></i><code class="m-r-10">f6c2</code><span>mdi mdi-arrow-up-box</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-arrow-up-drop-circle"></i><code class="m-r-10">f062</code><span>mdi mdi-arrow-up-drop-circle</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-arrow-up-drop-circle-outline"></i><code class="m-r-10">f063</code><span>mdi mdi-arrow-up-drop-circle-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-assistant"></i><code class="m-r-10">f064</code><span>mdi mdi-assistant</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-asterisk"></i><code class="m-r-10">f6c3</code><span>mdi mdi-asterisk</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-at"></i><code class="m-r-10">f065</code><span>mdi mdi-at</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-attachment"></i><code class="m-r-10">f066</code><span>mdi mdi-attachment</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-audiobook"></i><code class="m-r-10">f067</code><span>mdi mdi-audiobook</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-auto-fix"></i><code class="m-r-10">f068</code><span>mdi mdi-auto-fix</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-auto-upload"></i><code class="m-r-10">f069</code><span>mdi mdi-auto-upload</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-autorenew"></i><code class="m-r-10">f06a</code><span>mdi mdi-autorenew</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-av-timer"></i><code class="m-r-10">f06b</code><span>mdi mdi-av-timer</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-baby"></i><code class="m-r-10">f06c</code><span>mdi mdi-baby</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-baby-buggy"></i><code class="m-r-10">f68e</code><span>mdi mdi-baby-buggy</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-backburger"></i><code class="m-r-10">f06d</code><span>mdi mdi-backburger</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-backspace"></i><code class="m-r-10">f06e</code><span>mdi mdi-backspace</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-backup-restore"></i><code class="m-r-10">f06f</code><span>mdi mdi-backup-restore</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-bandcamp"></i><code class="m-r-10">f674</code><span>mdi mdi-bandcamp</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-bank"></i><code class="m-r-10">f070</code><span>mdi mdi-bank</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-barcode"></i><code class="m-r-10">f071</code><span>mdi mdi-barcode</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-barcode-scan"></i><code class="m-r-10">f072</code><span>mdi mdi-barcode-scan</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-barley"></i><code class="m-r-10">f073</code><span>mdi mdi-barley</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-barrel"></i><code class="m-r-10">f074</code><span>mdi mdi-barrel</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-basecamp"></i><code class="m-r-10">f075</code><span>mdi mdi-basecamp</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-basket"></i><code class="m-r-10">f076</code><span>mdi mdi-basket</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-basket-fill"></i><code class="m-r-10">f077</code><span>mdi mdi-basket-fill</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-basket-unfill"></i><code class="m-r-10">f078</code><span>mdi mdi-basket-unfill</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-battery"></i><code class="m-r-10">f079</code><span>mdi mdi-battery</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-battery-10"></i><code class="m-r-10">f07a</code><span>mdi mdi-battery-10</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-battery-20"></i><code class="m-r-10">f07b</code><span>mdi mdi-battery-20</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-battery-30"></i><code class="m-r-10">f07c</code><span>mdi mdi-battery-30</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-battery-40"></i><code class="m-r-10">f07d</code><span>mdi mdi-battery-40</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-battery-50"></i><code class="m-r-10">f07e</code><span>mdi mdi-battery-50</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-battery-60"></i><code class="m-r-10">f07f</code><span>mdi mdi-battery-60</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-battery-70"></i><code class="m-r-10">f080</code><span>mdi mdi-battery-70</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-battery-80"></i><code class="m-r-10">f081</code><span>mdi mdi-battery-80</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-battery-90"></i><code class="m-r-10">f082</code><span>mdi mdi-battery-90</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-battery-alert"></i><code class="m-r-10">f083</code><span>mdi mdi-battery-alert</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-battery-charging"></i><code class="m-r-10">f084</code><span>mdi mdi-battery-charging</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-battery-charging-100"></i><code class="m-r-10">f085</code><span>mdi mdi-battery-charging-100</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-battery-charging-20"></i><code class="m-r-10">f086</code><span>mdi mdi-battery-charging-20</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-battery-charging-30"></i><code class="m-r-10">f087</code><span>mdi mdi-battery-charging-30</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-battery-charging-40"></i><code class="m-r-10">f088</code><span>mdi mdi-battery-charging-40</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-battery-charging-60"></i><code class="m-r-10">f089</code><span>mdi mdi-battery-charging-60</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-battery-charging-80"></i><code class="m-r-10">f08a</code><span>mdi mdi-battery-charging-80</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-battery-charging-90"></i><code class="m-r-10">f08b</code><span>mdi mdi-battery-charging-90</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-battery-minus"></i><code class="m-r-10">f08c</code><span>mdi mdi-battery-minus</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-battery-negative"></i><code class="m-r-10">f08d</code><span>mdi mdi-battery-negative</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-battery-outline"></i><code class="m-r-10">f08e</code><span>mdi mdi-battery-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-battery-plus"></i><code class="m-r-10">f08f</code><span>mdi mdi-battery-plus</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-battery-positive"></i><code class="m-r-10">f090</code><span>mdi mdi-battery-positive</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-battery-unknown"></i><code class="m-r-10">f091</code><span>mdi mdi-battery-unknown</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-beach"></i><code class="m-r-10">f092</code><span>mdi mdi-beach</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-beaker"></i><code class="m-r-10">f68f</code><span>mdi mdi-beaker</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-beats"></i><code class="m-r-10">f097</code><span>mdi mdi-beats</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-beer"></i><code class="m-r-10">f098</code><span>mdi mdi-beer</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-behance"></i><code class="m-r-10">f099</code><span>mdi mdi-behance</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-bell"></i><code class="m-r-10">f09a</code><span>mdi mdi-bell</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-bell-off"></i><code class="m-r-10">f09b</code><span>mdi mdi-bell-off</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-bell-outline"></i><code class="m-r-10">f09c</code><span>mdi mdi-bell-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-bell-plus"></i><code class="m-r-10">f09d</code><span>mdi mdi-bell-plus</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-bell-ring"></i><code class="m-r-10">f09e</code><span>mdi mdi-bell-ring</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-bell-ring-outline"></i><code class="m-r-10">f09f</code><span>mdi mdi-bell-ring-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-bell-sleep"></i><code class="m-r-10">f0a0</code><span>mdi mdi-bell-sleep</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-beta"></i><code class="m-r-10">f0a1</code><span>mdi mdi-beta</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-bible"></i><code class="m-r-10">f0a2</code><span>mdi mdi-bible</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-bike"></i><code class="m-r-10">f0a3</code><span>mdi mdi-bike</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-bing"></i><code class="m-r-10">f0a4</code><span>mdi mdi-bing</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-binoculars"></i><code class="m-r-10">f0a5</code><span>mdi mdi-binoculars</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-bio"></i><code class="m-r-10">f0a6</code><span>mdi mdi-bio</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-biohazard"></i><code class="m-r-10">f0a7</code><span>mdi mdi-biohazard</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-bitbucket"></i><code class="m-r-10">f0a8</code><span>mdi mdi-bitbucket</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-black-mesa"></i><code class="m-r-10">f0a9</code><span>mdi mdi-black-mesa</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-blackberry"></i><code class="m-r-10">f0aa</code><span>mdi mdi-blackberry</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-blender"></i><code class="m-r-10">f0ab</code><span>mdi mdi-blender</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-blinds"></i><code class="m-r-10">f0ac</code><span>mdi mdi-blinds</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-block-helper"></i><code class="m-r-10">f0ad</code><span>mdi mdi-block-helper</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-blogger"></i><code class="m-r-10">f0ae</code><span>mdi mdi-blogger</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-bluetooth"></i><code class="m-r-10">f0af</code><span>mdi mdi-bluetooth</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-bluetooth-audio"></i><code class="m-r-10">f0b0</code><span>mdi mdi-bluetooth-audio</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-bluetooth-connect"></i><code class="m-r-10">f0b1</code><span>mdi mdi-bluetooth-connect</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-bluetooth-off"></i><code class="m-r-10">f0b2</code><span>mdi mdi-bluetooth-off</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-bluetooth-settings"></i><code class="m-r-10">f0b3</code><span>mdi mdi-bluetooth-settings</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-bluetooth-transfer"></i><code class="m-r-10">f0b4</code><span>mdi mdi-bluetooth-transfer</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-blur"></i><code class="m-r-10">f0b5</code><span>mdi mdi-blur</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-blur-linear"></i><code class="m-r-10">f0b6</code><span>mdi mdi-blur-linear</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-blur-off"></i><code class="m-r-10">f0b7</code><span>mdi mdi-blur-off</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-blur-radial"></i><code class="m-r-10">f0b8</code><span>mdi mdi-blur-radial</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-bomb"></i><code class="m-r-10">f690</code><span>mdi mdi-bomb</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-bomb-off"></i><code class="m-r-10">f6c4</code><span>mdi mdi-bomb-off</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-bone"></i><code class="m-r-10">f0b9</code><span>mdi mdi-bone</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-book"></i><code class="m-r-10">f0ba</code><span>mdi mdi-book</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-book-minus"></i><code class="m-r-10">f5d9</code><span>mdi mdi-book-minus</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-book-multiple"></i><code class="m-r-10">f0bb</code><span>mdi mdi-book-multiple</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-book-multiple-variant"></i><code class="m-r-10">f0bc</code><span>mdi mdi-book-multiple-variant</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-book-open"></i><code class="m-r-10">f0bd</code><span>mdi mdi-book-open</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-book-open-page-variant"></i><code class="m-r-10">f5da</code><span>mdi mdi-book-open-page-variant</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-book-open-variant"></i><code class="m-r-10">f0be</code><span>mdi mdi-book-open-variant</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-book-plus"></i><code class="m-r-10">f5db</code><span>mdi mdi-book-plus</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-book-variant"></i><code class="m-r-10">f0bf</code><span>mdi mdi-book-variant</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-bookmark"></i><code class="m-r-10">f0c0</code><span>mdi mdi-bookmark</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-bookmark-check"></i><code class="m-r-10">f0c1</code><span>mdi mdi-bookmark-check</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-bookmark-music"></i><code class="m-r-10">f0c2</code><span>mdi mdi-bookmark-music</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-bookmark-outline"></i><code class="m-r-10">f0c3</code><span>mdi mdi-bookmark-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-bookmark-plus"></i><code class="m-r-10">f0c5</code><span>mdi mdi-bookmark-plus</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-bookmark-plus-outline"></i><code class="m-r-10">f0c4</code><span>mdi mdi-bookmark-plus-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-bookmark-remove"></i><code class="m-r-10">f0c6</code><span>mdi mdi-bookmark-remove</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-boombox"></i><code class="m-r-10">f5dc</code><span>mdi mdi-boombox</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-bootstrap"></i><code class="m-r-10">f6c5</code><span>mdi mdi-bootstrap</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-border-all"></i><code class="m-r-10">f0c7</code><span>mdi mdi-border-all</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-border-bottom"></i><code class="m-r-10">f0c8</code><span>mdi mdi-border-bottom</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-border-color"></i><code class="m-r-10">f0c9</code><span>mdi mdi-border-color</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-border-horizontal"></i><code class="m-r-10">f0ca</code><span>mdi mdi-border-horizontal</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-border-inside"></i><code class="m-r-10">f0cb</code><span>mdi mdi-border-inside</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-border-left"></i><code class="m-r-10">f0cc</code><span>mdi mdi-border-left</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-border-none"></i><code class="m-r-10">f0cd</code><span>mdi mdi-border-none</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-border-outside"></i><code class="m-r-10">f0ce</code><span>mdi mdi-border-outside</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-border-right"></i><code class="m-r-10">f0cf</code><span>mdi mdi-border-right</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-border-style"></i><code class="m-r-10">f0d0</code><span>mdi mdi-border-style</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-border-top"></i><code class="m-r-10">f0d1</code><span>mdi mdi-border-top</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-border-vertical"></i><code class="m-r-10">f0d2</code><span>mdi mdi-border-vertical</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-bow-tie"></i><code class="m-r-10">f677</code><span>mdi mdi-bow-tie</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-bowl"></i><code class="m-r-10">f617</code><span>mdi mdi-bowl</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-bowling"></i><code class="m-r-10">f0d3</code><span>mdi mdi-bowling</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-box"></i><code class="m-r-10">f0d4</code><span>mdi mdi-box</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-box-cutter"></i><code class="m-r-10">f0d5</code><span>mdi mdi-box-cutter</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-box-shadow"></i><code class="m-r-10">f637</code><span>mdi mdi-box-shadow</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-bridge"></i><code class="m-r-10">f618</code><span>mdi mdi-bridge</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-briefcase"></i><code class="m-r-10">f0d6</code><span>mdi mdi-briefcase</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-briefcase-check"></i><code class="m-r-10">f0d7</code><span>mdi mdi-briefcase-check</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-briefcase-download"></i><code class="m-r-10">f0d8</code><span>mdi mdi-briefcase-download</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-briefcase-upload"></i><code class="m-r-10">f0d9</code><span>mdi mdi-briefcase-upload</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-brightness-1"></i><code class="m-r-10">f0da</code><span>mdi mdi-brightness-1</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-brightness-2"></i><code class="m-r-10">f0db</code><span>mdi mdi-brightness-2</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-brightness-3"></i><code class="m-r-10">f0dc</code><span>mdi mdi-brightness-3</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-brightness-4"></i><code class="m-r-10">f0dd</code><span>mdi mdi-brightness-4</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-brightness-5"></i><code class="m-r-10">f0de</code><span>mdi mdi-brightness-5</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-brightness-6"></i><code class="m-r-10">f0df</code><span>mdi mdi-brightness-6</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-brightness-7"></i><code class="m-r-10">f0e0</code><span>mdi mdi-brightness-7</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-brightness-auto"></i><code class="m-r-10">f0e1</code><span>mdi mdi-brightness-auto</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-broom"></i><code class="m-r-10">f0e2</code><span>mdi mdi-broom</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-brush"></i><code class="m-r-10">f0e3</code><span>mdi mdi-brush</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-buffer"></i><code class="m-r-10">f619</code><span>mdi mdi-buffer</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-bug"></i><code class="m-r-10">f0e4</code><span>mdi mdi-bug</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-bulletin-board"></i><code class="m-r-10">f0e5</code><span>mdi mdi-bulletin-board</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-bullhorn"></i><code class="m-r-10">f0e6</code><span>mdi mdi-bullhorn</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-bullseye"></i><code class="m-r-10">f5dd</code><span>mdi mdi-bullseye</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-burst-mode"></i><code class="m-r-10">f5de</code><span>mdi mdi-burst-mode</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-bus"></i><code class="m-r-10">f0e7</code><span>mdi mdi-bus</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-cached"></i><code class="m-r-10">f0e8</code><span>mdi mdi-cached</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-cake"></i><code class="m-r-10">f0e9</code><span>mdi mdi-cake</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-cake-layered"></i><code class="m-r-10">f0ea</code><span>mdi mdi-cake-layered</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-cake-variant"></i><code class="m-r-10">f0eb</code><span>mdi mdi-cake-variant</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-calculator"></i><code class="m-r-10">f0ec</code><span>mdi mdi-calculator</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-calendar"></i><code class="m-r-10">f0ed</code><span>mdi mdi-calendar</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-calendar-blank"></i><code class="m-r-10">f0ee</code><span>mdi mdi-calendar-blank</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-calendar-check"></i><code class="m-r-10">f0ef</code><span>mdi mdi-calendar-check</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-calendar-clock"></i><code class="m-r-10">f0f0</code><span>mdi mdi-calendar-clock</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-calendar-multiple"></i><code class="m-r-10">f0f1</code><span>mdi mdi-calendar-multiple</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-calendar-multiple-check"></i><code class="m-r-10">f0f2</code><span>mdi mdi-calendar-multiple-check</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-calendar-plus"></i><code class="m-r-10">f0f3</code><span>mdi mdi-calendar-plus</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-calendar-question"></i><code class="m-r-10">f691</code><span>mdi mdi-calendar-question</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-calendar-range"></i><code class="m-r-10">f678</code><span>mdi mdi-calendar-range</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-calendar-remove"></i><code class="m-r-10">f0f4</code><span>mdi mdi-calendar-remove</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-calendar-text"></i><code class="m-r-10">f0f5</code><span>mdi mdi-calendar-text</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-calendar-today"></i><code class="m-r-10">f0f6</code><span>mdi mdi-calendar-today</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-call-made"></i><code class="m-r-10">f0f7</code><span>mdi mdi-call-made</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-call-merge"></i><code class="m-r-10">f0f8</code><span>mdi mdi-call-merge</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-call-missed"></i><code class="m-r-10">f0f9</code><span>mdi mdi-call-missed</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-call-received"></i><code class="m-r-10">f0fa</code><span>mdi mdi-call-received</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-call-split"></i><code class="m-r-10">f0fb</code><span>mdi mdi-call-split</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-camcorder"></i><code class="m-r-10">f0fc</code><span>mdi mdi-camcorder</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-camcorder-box"></i><code class="m-r-10">f0fd</code><span>mdi mdi-camcorder-box</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-camcorder-box-off"></i><code class="m-r-10">f0fe</code><span>mdi mdi-camcorder-box-off</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-camcorder-off"></i><code class="m-r-10">f0ff</code><span>mdi mdi-camcorder-off</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-camera"></i><code class="m-r-10">f100</code><span>mdi mdi-camera</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-camera-burst"></i><code class="m-r-10">f692</code><span>mdi mdi-camera-burst</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-camera-enhance"></i><code class="m-r-10">f101</code><span>mdi mdi-camera-enhance</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-camera-front"></i><code class="m-r-10">f102</code><span>mdi mdi-camera-front</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-camera-front-variant"></i><code class="m-r-10">f103</code><span>mdi mdi-camera-front-variant</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-camera-iris"></i><code class="m-r-10">f104</code><span>mdi mdi-camera-iris</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-camera-off"></i><code class="m-r-10">f5df</code><span>mdi mdi-camera-off</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-camera-party-mode"></i><code class="m-r-10">f105</code><span>mdi mdi-camera-party-mode</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-camera-rear"></i><code class="m-r-10">f106</code><span>mdi mdi-camera-rear</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-camera-rear-variant"></i><code class="m-r-10">f107</code><span>mdi mdi-camera-rear-variant</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-camera-switch"></i><code class="m-r-10">f108</code><span>mdi mdi-camera-switch</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-camera-timer"></i><code class="m-r-10">f109</code><span>mdi mdi-camera-timer</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-candle"></i><code class="m-r-10">f5e2</code><span>mdi mdi-candle</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-candycane"></i><code class="m-r-10">f10a</code><span>mdi mdi-candycane</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-car"></i><code class="m-r-10">f10b</code><span>mdi mdi-car</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-car-battery"></i><code class="m-r-10">f10c</code><span>mdi mdi-car-battery</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-car-connected"></i><code class="m-r-10">f10d</code><span>mdi mdi-car-connected</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-car-wash"></i><code class="m-r-10">f10e</code><span>mdi mdi-car-wash</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-cards"></i><code class="m-r-10">f638</code><span>mdi mdi-cards</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-cards-outline"></i><code class="m-r-10">f639</code><span>mdi mdi-cards-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-cards-playing-outline"></i><code class="m-r-10">f63a</code><span>mdi mdi-cards-playing-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-cards-variant"></i><code class="m-r-10">f6c6</code><span>mdi mdi-cards-variant</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-carrot"></i><code class="m-r-10">f10f</code><span>mdi mdi-carrot</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-cart"></i><code class="m-r-10">f110</code><span>mdi mdi-cart</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-cart-off"></i><code class="m-r-10">f66b</code><span>mdi mdi-cart-off</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-cart-outline"></i><code class="m-r-10">f111</code><span>mdi mdi-cart-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-cart-plus"></i><code class="m-r-10">f112</code><span>mdi mdi-cart-plus</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-case-sensitive-alt"></i><code class="m-r-10">f113</code><span>mdi mdi-case-sensitive-alt</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-cash"></i><code class="m-r-10">f114</code><span>mdi mdi-cash</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-cash-100"></i><code class="m-r-10">f115</code><span>mdi mdi-cash-100</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-cash-multiple"></i><code class="m-r-10">f116</code><span>mdi mdi-cash-multiple</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-cash-usd"></i><code class="m-r-10">f117</code><span>mdi mdi-cash-usd</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-cast"></i><code class="m-r-10">f118</code><span>mdi mdi-cast</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-cast-connected"></i><code class="m-r-10">f119</code><span>mdi mdi-cast-connected</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-castle"></i><code class="m-r-10">f11a</code><span>mdi mdi-castle</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-cat"></i><code class="m-r-10">f11b</code><span>mdi mdi-cat</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-cellphone"></i><code class="m-r-10">f11c</code><span>mdi mdi-cellphone</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-cellphone-android"></i><code class="m-r-10">f11d</code><span>mdi mdi-cellphone-android</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-cellphone-basic"></i><code class="m-r-10">f11e</code><span>mdi mdi-cellphone-basic</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-cellphone-dock"></i><code class="m-r-10">f11f</code><span>mdi mdi-cellphone-dock</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-cellphone-iphone"></i><code class="m-r-10">f120</code><span>mdi mdi-cellphone-iphone</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-cellphone-link"></i><code class="m-r-10">f121</code><span>mdi mdi-cellphone-link</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-cellphone-link-off"></i><code class="m-r-10">f122</code><span>mdi mdi-cellphone-link-off</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-cellphone-settings"></i><code class="m-r-10">f123</code><span>mdi mdi-cellphone-settings</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-certificate"></i><code class="m-r-10">f124</code><span>mdi mdi-certificate</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-chair-school"></i><code class="m-r-10">f125</code><span>mdi mdi-chair-school</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-chart-arc"></i><code class="m-r-10">f126</code><span>mdi mdi-chart-arc</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-chart-areaspline"></i><code class="m-r-10">f127</code><span>mdi mdi-chart-areaspline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-chart-bar"></i><code class="m-r-10">f128</code><span>mdi mdi-chart-bar</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-chart-bubble"></i><code class="m-r-10">f5e3</code><span>mdi mdi-chart-bubble</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-chart-gantt"></i><code class="m-r-10">f66c</code><span>mdi mdi-chart-gantt</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-chart-histogram"></i><code class="m-r-10">f129</code><span>mdi mdi-chart-histogram</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-chart-line"></i><code class="m-r-10">f12a</code><span>mdi mdi-chart-line</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-chart-pie"></i><code class="m-r-10">f12b</code><span>mdi mdi-chart-pie</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-chart-scatterplot-hexbin"></i><code class="m-r-10">f66d</code><span>mdi mdi-chart-scatterplot-hexbin</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-chart-timeline"></i><code class="m-r-10">f66e</code><span>mdi mdi-chart-timeline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-check"></i><code class="m-r-10">f12c</code><span>mdi mdi-check</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-check-all"></i><code class="m-r-10">f12d</code><span>mdi mdi-check-all</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-check-circle"></i><code class="m-r-10">f5e0</code><span>mdi mdi-check-circle</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-check-circle-outline"></i><code class="m-r-10">f5e1</code><span>mdi mdi-check-circle-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-checkbox-blank"></i><code class="m-r-10">f12e</code><span>mdi mdi-checkbox-blank</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-checkbox-blank-circle"></i><code class="m-r-10">f12f</code><span>mdi mdi-checkbox-blank-circle</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-checkbox-blank-circle-outline"></i><code class="m-r-10">f130</code><span>mdi mdi-checkbox-blank-circle-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-checkbox-blank-outline"></i><code class="m-r-10">f131</code><span>mdi mdi-checkbox-blank-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-checkbox-marked"></i><code class="m-r-10">f132</code><span>mdi mdi-checkbox-marked</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-checkbox-marked-circle"></i><code class="m-r-10">f133</code><span>mdi mdi-checkbox-marked-circle</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-checkbox-marked-circle-outline"></i><code class="m-r-10">f134</code><span>mdi mdi-checkbox-marked-circle-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-checkbox-marked-outline"></i><code class="m-r-10">f135</code><span>mdi mdi-checkbox-marked-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-checkbox-multiple-blank"></i><code class="m-r-10">f136</code><span>mdi mdi-checkbox-multiple-blank</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-checkbox-multiple-blank-circle"></i><code class="m-r-10">f63b</code><span>mdi mdi-checkbox-multiple-blank-circle</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-checkbox-multiple-blank-circle-outline"></i><code class="m-r-10">f63c</code><span>mdi mdi-checkbox-multiple-blank-circle-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-checkbox-multiple-blank-outline"></i><code class="m-r-10">f137</code><span>mdi mdi-checkbox-multiple-blank-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-checkbox-multiple-marked"></i><code class="m-r-10">f138</code><span>mdi mdi-checkbox-multiple-marked</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-checkbox-multiple-marked-circle"></i><code class="m-r-10">f63d</code><span>mdi mdi-checkbox-multiple-marked-circle</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-checkbox-multiple-marked-circle-outline"></i><code class="m-r-10">f63e</code><span>mdi mdi-checkbox-multiple-marked-circle-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-checkbox-multiple-marked-outline"></i><code class="m-r-10">f139</code><span>mdi mdi-checkbox-multiple-marked-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-checkerboard"></i><code class="m-r-10">f13a</code><span>mdi mdi-checkerboard</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-chemical-weapon"></i><code class="m-r-10">f13b</code><span>mdi mdi-chemical-weapon</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-chevron-double-down"></i><code class="m-r-10">f13c</code><span>mdi mdi-chevron-double-down</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-chevron-double-left"></i><code class="m-r-10">f13d</code><span>mdi mdi-chevron-double-left</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-chevron-double-right"></i><code class="m-r-10">f13e</code><span>mdi mdi-chevron-double-right</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-chevron-double-up"></i><code class="m-r-10">f13f</code><span>mdi mdi-chevron-double-up</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-chevron-down"></i><code class="m-r-10">f140</code><span>mdi mdi-chevron-down</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-chevron-left"></i><code class="m-r-10">f141</code><span>mdi mdi-chevron-left</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-chevron-right"></i><code class="m-r-10">f142</code><span>mdi mdi-chevron-right</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-chevron-up"></i><code class="m-r-10">f143</code><span>mdi mdi-chevron-up</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-chip"></i><code class="m-r-10">f61a</code><span>mdi mdi-chip</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-church"></i><code class="m-r-10">f144</code><span>mdi mdi-church</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-cisco-webex"></i><code class="m-r-10">f145</code><span>mdi mdi-cisco-webex</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-city"></i><code class="m-r-10">f146</code><span>mdi mdi-city</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-clipboard"></i><code class="m-r-10">f147</code><span>mdi mdi-clipboard</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-clipboard-account"></i><code class="m-r-10">f148</code><span>mdi mdi-clipboard-account</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-clipboard-alert"></i><code class="m-r-10">f149</code><span>mdi mdi-clipboard-alert</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-clipboard-arrow-down"></i><code class="m-r-10">f14a</code><span>mdi mdi-clipboard-arrow-down</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-clipboard-arrow-left"></i><code class="m-r-10">f14b</code><span>mdi mdi-clipboard-arrow-left</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-clipboard-check"></i><code class="m-r-10">f14c</code><span>mdi mdi-clipboard-check</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-clipboard-flow"></i><code class="m-r-10">f6c7</code><span>mdi mdi-clipboard-flow</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-clipboard-outline"></i><code class="m-r-10">f14d</code><span>mdi mdi-clipboard-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-clipboard-text"></i><code class="m-r-10">f14e</code><span>mdi mdi-clipboard-text</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-clippy"></i><code class="m-r-10">f14f</code><span>mdi mdi-clippy</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-clock"></i><code class="m-r-10">f150</code><span>mdi mdi-clock</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-clock-alert"></i><code class="m-r-10">f5ce</code><span>mdi mdi-clock-alert</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-clock-end"></i><code class="m-r-10">f151</code><span>mdi mdi-clock-end</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-clock-fast"></i><code class="m-r-10">f152</code><span>mdi mdi-clock-fast</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-clock-in"></i><code class="m-r-10">f153</code><span>mdi mdi-clock-in</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-clock-out"></i><code class="m-r-10">f154</code><span>mdi mdi-clock-out</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-clock-start"></i><code class="m-r-10">f155</code><span>mdi mdi-clock-start</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-close"></i><code class="m-r-10">f156</code><span>mdi mdi-close</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-close-box"></i><code class="m-r-10">f157</code><span>mdi mdi-close-box</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-close-box-outline"></i><code class="m-r-10">f158</code><span>mdi mdi-close-box-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-close-circle"></i><code class="m-r-10">f159</code><span>mdi mdi-close-circle</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-close-circle-outline"></i><code class="m-r-10">f15a</code><span>mdi mdi-close-circle-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-close-network"></i><code class="m-r-10">f15b</code><span>mdi mdi-close-network</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-close-octagon"></i><code class="m-r-10">f15c</code><span>mdi mdi-close-octagon</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-close-octagon-outline"></i><code class="m-r-10">f15d</code><span>mdi mdi-close-octagon-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-close-outline"></i><code class="m-r-10">f6c8</code><span>mdi mdi-close-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-closed-caption"></i><code class="m-r-10">f15e</code><span>mdi mdi-closed-caption</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-cloud"></i><code class="m-r-10">f15f</code><span>mdi mdi-cloud</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-cloud-check"></i><code class="m-r-10">f160</code><span>mdi mdi-cloud-check</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-cloud-circle"></i><code class="m-r-10">f161</code><span>mdi mdi-cloud-circle</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-cloud-download"></i><code class="m-r-10">f162</code><span>mdi mdi-cloud-download</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-cloud-outline"></i><code class="m-r-10">f163</code><span>mdi mdi-cloud-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-cloud-outline-off"></i><code class="m-r-10">f164</code><span>mdi mdi-cloud-outline-off</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-cloud-print"></i><code class="m-r-10">f165</code><span>mdi mdi-cloud-print</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-cloud-print-outline"></i><code class="m-r-10">f166</code><span>mdi mdi-cloud-print-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-cloud-sync"></i><code class="m-r-10">f63f</code><span>mdi mdi-cloud-sync</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-cloud-upload"></i><code class="m-r-10">f167</code><span>mdi mdi-cloud-upload</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-code-array"></i><code class="m-r-10">f168</code><span>mdi mdi-code-array</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-code-braces"></i><code class="m-r-10">f169</code><span>mdi mdi-code-braces</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-code-brackets"></i><code class="m-r-10">f16a</code><span>mdi mdi-code-brackets</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-code-equal"></i><code class="m-r-10">f16b</code><span>mdi mdi-code-equal</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-code-greater-than"></i><code class="m-r-10">f16c</code><span>mdi mdi-code-greater-than</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-code-greater-than-or-equal"></i><code class="m-r-10">f16d</code><span>mdi mdi-code-greater-than-or-equal</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-code-less-than"></i><code class="m-r-10">f16e</code><span>mdi mdi-code-less-than</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-code-less-than-or-equal"></i><code class="m-r-10">f16f</code><span>mdi mdi-code-less-than-or-equal</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-code-not-equal"></i><code class="m-r-10">f170</code><span>mdi mdi-code-not-equal</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-code-not-equal-variant"></i><code class="m-r-10">f171</code><span>mdi mdi-code-not-equal-variant</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-code-parentheses"></i><code class="m-r-10">f172</code><span>mdi mdi-code-parentheses</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-code-string"></i><code class="m-r-10">f173</code><span>mdi mdi-code-string</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-code-tags"></i><code class="m-r-10">f174</code><span>mdi mdi-code-tags</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-code-tags-check"></i><code class="m-r-10">f693</code><span>mdi mdi-code-tags-check</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-codepen"></i><code class="m-r-10">f175</code><span>mdi mdi-codepen</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-coffee"></i><code class="m-r-10">f176</code><span>mdi mdi-coffee</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-coffee-outline"></i><code class="m-r-10">f6c9</code><span>mdi mdi-coffee-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-coffee-to-go"></i><code class="m-r-10">f177</code><span>mdi mdi-coffee-to-go</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-coin"></i><code class="m-r-10">f178</code><span>mdi mdi-coin</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-coins"></i><code class="m-r-10">f694</code><span>mdi mdi-coins</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-collage"></i><code class="m-r-10">f640</code><span>mdi mdi-collage</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-color-helper"></i><code class="m-r-10">f179</code><span>mdi mdi-color-helper</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-comment"></i><code class="m-r-10">f17a</code><span>mdi mdi-comment</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-comment-account"></i><code class="m-r-10">f17b</code><span>mdi mdi-comment-account</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-comment-account-outline"></i><code class="m-r-10">f17c</code><span>mdi mdi-comment-account-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-comment-alert"></i><code class="m-r-10">f17d</code><span>mdi mdi-comment-alert</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-comment-alert-outline"></i><code class="m-r-10">f17e</code><span>mdi mdi-comment-alert-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-comment-check"></i><code class="m-r-10">f17f</code><span>mdi mdi-comment-check</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-comment-check-outline"></i><code class="m-r-10">f180</code><span>mdi mdi-comment-check-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-comment-multiple-outline"></i><code class="m-r-10">f181</code><span>mdi mdi-comment-multiple-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-comment-outline"></i><code class="m-r-10">f182</code><span>mdi mdi-comment-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-comment-plus-outline"></i><code class="m-r-10">f183</code><span>mdi mdi-comment-plus-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-comment-processing"></i><code class="m-r-10">f184</code><span>mdi mdi-comment-processing</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-comment-processing-outline"></i><code class="m-r-10">f185</code><span>mdi mdi-comment-processing-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-comment-question-outline"></i><code class="m-r-10">f186</code><span>mdi mdi-comment-question-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-comment-remove-outline"></i><code class="m-r-10">f187</code><span>mdi mdi-comment-remove-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-comment-text"></i><code class="m-r-10">f188</code><span>mdi mdi-comment-text</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-comment-text-outline"></i><code class="m-r-10">f189</code><span>mdi mdi-comment-text-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-compare"></i><code class="m-r-10">f18a</code><span>mdi mdi-compare</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-compass"></i><code class="m-r-10">f18b</code><span>mdi mdi-compass</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-compass-outline"></i><code class="m-r-10">f18c</code><span>mdi mdi-compass-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-console"></i><code class="m-r-10">f18d</code><span>mdi mdi-console</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-contact-mail"></i><code class="m-r-10">f18e</code><span>mdi mdi-contact-mail</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-contacts"></i><code class="m-r-10">f6ca</code><span>mdi mdi-contacts</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-content-copy"></i><code class="m-r-10">f18f</code><span>mdi mdi-content-copy</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-content-cut"></i><code class="m-r-10">f190</code><span>mdi mdi-content-cut</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-content-duplicate"></i><code class="m-r-10">f191</code><span>mdi mdi-content-duplicate</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-content-paste"></i><code class="m-r-10">f192</code><span>mdi mdi-content-paste</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-content-save"></i><code class="m-r-10">f193</code><span>mdi mdi-content-save</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-content-save-all"></i><code class="m-r-10">f194</code><span>mdi mdi-content-save-all</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-content-save-settings"></i><code class="m-r-10">f61b</code><span>mdi mdi-content-save-settings</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-contrast"></i><code class="m-r-10">f195</code><span>mdi mdi-contrast</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-contrast-box"></i><code class="m-r-10">f196</code><span>mdi mdi-contrast-box</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-contrast-circle"></i><code class="m-r-10">f197</code><span>mdi mdi-contrast-circle</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-cookie"></i><code class="m-r-10">f198</code><span>mdi mdi-cookie</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-copyright"></i><code class="m-r-10">f5e6</code><span>mdi mdi-copyright</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-counter"></i><code class="m-r-10">f199</code><span>mdi mdi-counter</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-cow"></i><code class="m-r-10">f19a</code><span>mdi mdi-cow</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-creation"></i><code class="m-r-10">f1c9</code><span>mdi mdi-creation</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-credit-card"></i><code class="m-r-10">f19b</code><span>mdi mdi-credit-card</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-credit-card-multiple"></i><code class="m-r-10">f19c</code><span>mdi mdi-credit-card-multiple</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-credit-card-off"></i><code class="m-r-10">f5e4</code><span>mdi mdi-credit-card-off</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-credit-card-plus"></i><code class="m-r-10">f675</code><span>mdi mdi-credit-card-plus</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-credit-card-scan"></i><code class="m-r-10">f19d</code><span>mdi mdi-credit-card-scan</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-crop"></i><code class="m-r-10">f19e</code><span>mdi mdi-crop</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-crop-free"></i><code class="m-r-10">f19f</code><span>mdi mdi-crop-free</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-crop-landscape"></i><code class="m-r-10">f1a0</code><span>mdi mdi-crop-landscape</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-crop-portrait"></i><code class="m-r-10">f1a1</code><span>mdi mdi-crop-portrait</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-crop-rotate"></i><code class="m-r-10">f695</code><span>mdi mdi-crop-rotate</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-crop-square"></i><code class="m-r-10">f1a2</code><span>mdi mdi-crop-square</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-crosshairs"></i><code class="m-r-10">f1a3</code><span>mdi mdi-crosshairs</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-crosshairs-gps"></i><code class="m-r-10">f1a4</code><span>mdi mdi-crosshairs-gps</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-crown"></i><code class="m-r-10">f1a5</code><span>mdi mdi-crown</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-cube"></i><code class="m-r-10">f1a6</code><span>mdi mdi-cube</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-cube-outline"></i><code class="m-r-10">f1a7</code><span>mdi mdi-cube-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-cube-send"></i><code class="m-r-10">f1a8</code><span>mdi mdi-cube-send</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-cube-unfolded"></i><code class="m-r-10">f1a9</code><span>mdi mdi-cube-unfolded</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-cup"></i><code class="m-r-10">f1aa</code><span>mdi mdi-cup</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-cup-off"></i><code class="m-r-10">f5e5</code><span>mdi mdi-cup-off</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-cup-water"></i><code class="m-r-10">f1ab</code><span>mdi mdi-cup-water</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-currency-btc"></i><code class="m-r-10">f1ac</code><span>mdi mdi-currency-btc</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-currency-eur"></i><code class="m-r-10">f1ad</code><span>mdi mdi-currency-eur</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-currency-gbp"></i><code class="m-r-10">f1ae</code><span>mdi mdi-currency-gbp</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-currency-inr"></i><code class="m-r-10">f1af</code><span>mdi mdi-currency-inr</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-currency-ngn"></i><code class="m-r-10">f1b0</code><span>mdi mdi-currency-ngn</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-currency-rub"></i><code class="m-r-10">f1b1</code><span>mdi mdi-currency-rub</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-currency-try"></i><code class="m-r-10">f1b2</code><span>mdi mdi-currency-try</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-currency-usd"></i><code class="m-r-10">f1b3</code><span>mdi mdi-currency-usd</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-currency-usd-off"></i><code class="m-r-10">f679</code><span>mdi mdi-currency-usd-off</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-cursor-default"></i><code class="m-r-10">f1b4</code><span>mdi mdi-cursor-default</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-cursor-default-outline"></i><code class="m-r-10">f1b5</code><span>mdi mdi-cursor-default-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-cursor-move"></i><code class="m-r-10">f1b6</code><span>mdi mdi-cursor-move</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-cursor-pointer"></i><code class="m-r-10">f1b7</code><span>mdi mdi-cursor-pointer</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-cursor-text"></i><code class="m-r-10">f5e7</code><span>mdi mdi-cursor-text</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-database"></i><code class="m-r-10">f1b8</code><span>mdi mdi-database</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-database-minus"></i><code class="m-r-10">f1b9</code><span>mdi mdi-database-minus</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-database-plus"></i><code class="m-r-10">f1ba</code><span>mdi mdi-database-plus</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-debug-step-into"></i><code class="m-r-10">f1bb</code><span>mdi mdi-debug-step-into</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-debug-step-out"></i><code class="m-r-10">f1bc</code><span>mdi mdi-debug-step-out</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-debug-step-over"></i><code class="m-r-10">f1bd</code><span>mdi mdi-debug-step-over</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-decimal-decrease"></i><code class="m-r-10">f1be</code><span>mdi mdi-decimal-decrease</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-decimal-increase"></i><code class="m-r-10">f1bf</code><span>mdi mdi-decimal-increase</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-delete"></i><code class="m-r-10">f1c0</code><span>mdi mdi-delete</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-delete-circle"></i><code class="m-r-10">f682</code><span>mdi mdi-delete-circle</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-delete-empty"></i><code class="m-r-10">f6cb</code><span>mdi mdi-delete-empty</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-delete-forever"></i><code class="m-r-10">f5e8</code><span>mdi mdi-delete-forever</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-delete-sweep"></i><code class="m-r-10">f5e9</code><span>mdi mdi-delete-sweep</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-delete-variant"></i><code class="m-r-10">f1c1</code><span>mdi mdi-delete-variant</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-delta"></i><code class="m-r-10">f1c2</code><span>mdi mdi-delta</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-deskphone"></i><code class="m-r-10">f1c3</code><span>mdi mdi-deskphone</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-desktop-mac"></i><code class="m-r-10">f1c4</code><span>mdi mdi-desktop-mac</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-desktop-tower"></i><code class="m-r-10">f1c5</code><span>mdi mdi-desktop-tower</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-details"></i><code class="m-r-10">f1c6</code><span>mdi mdi-details</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-developer-board"></i><code class="m-r-10">f696</code><span>mdi mdi-developer-board</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-deviantart"></i><code class="m-r-10">f1c7</code><span>mdi mdi-deviantart</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-dialpad"></i><code class="m-r-10">f61c</code><span>mdi mdi-dialpad</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-diamond"></i><code class="m-r-10">f1c8</code><span>mdi mdi-diamond</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-dice-1"></i><code class="m-r-10">f1ca</code><span>mdi mdi-dice-1</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-dice-2"></i><code class="m-r-10">f1cb</code><span>mdi mdi-dice-2</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-dice-3"></i><code class="m-r-10">f1cc</code><span>mdi mdi-dice-3</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-dice-4"></i><code class="m-r-10">f1cd</code><span>mdi mdi-dice-4</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-dice-5"></i><code class="m-r-10">f1ce</code><span>mdi mdi-dice-5</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-dice-6"></i><code class="m-r-10">f1cf</code><span>mdi mdi-dice-6</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-dice-d20"></i><code class="m-r-10">f5ea</code><span>mdi mdi-dice-d20</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-dice-d4"></i><code class="m-r-10">f5eb</code><span>mdi mdi-dice-d4</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-dice-d6"></i><code class="m-r-10">f5ec</code><span>mdi mdi-dice-d6</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-dice-d8"></i><code class="m-r-10">f5ed</code><span>mdi mdi-dice-d8</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-dictionary"></i><code class="m-r-10">f61d</code><span>mdi mdi-dictionary</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-directions"></i><code class="m-r-10">f1d0</code><span>mdi mdi-directions</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-directions-fork"></i><code class="m-r-10">f641</code><span>mdi mdi-directions-fork</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-discord"></i><code class="m-r-10">f66f</code><span>mdi mdi-discord</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-disk"></i><code class="m-r-10">f5ee</code><span>mdi mdi-disk</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-disk-alert"></i><code class="m-r-10">f1d1</code><span>mdi mdi-disk-alert</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-disqus"></i><code class="m-r-10">f1d2</code><span>mdi mdi-disqus</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-disqus-outline"></i><code class="m-r-10">f1d3</code><span>mdi mdi-disqus-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-division"></i><code class="m-r-10">f1d4</code><span>mdi mdi-division</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-division-box"></i><code class="m-r-10">f1d5</code><span>mdi mdi-division-box</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-dna"></i><code class="m-r-10">f683</code><span>mdi mdi-dna</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-dns"></i><code class="m-r-10">f1d6</code><span>mdi mdi-dns</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-do-not-disturb"></i><code class="m-r-10">f697</code><span>mdi mdi-do-not-disturb</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-do-not-disturb-off"></i><code class="m-r-10">f698</code><span>mdi mdi-do-not-disturb-off</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-dolby"></i><code class="m-r-10">f6b2</code><span>mdi mdi-dolby</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-domain"></i><code class="m-r-10">f1d7</code><span>mdi mdi-domain</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-dots-horizontal"></i><code class="m-r-10">f1d8</code><span>mdi mdi-dots-horizontal</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-dots-vertical"></i><code class="m-r-10">f1d9</code><span>mdi mdi-dots-vertical</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-douban"></i><code class="m-r-10">f699</code><span>mdi mdi-douban</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-download"></i><code class="m-r-10">f1da</code><span>mdi mdi-download</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-drag"></i><code class="m-r-10">f1db</code><span>mdi mdi-drag</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-drag-horizontal"></i><code class="m-r-10">f1dc</code><span>mdi mdi-drag-horizontal</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-drag-vertical"></i><code class="m-r-10">f1dd</code><span>mdi mdi-drag-vertical</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-drawing"></i><code class="m-r-10">f1de</code><span>mdi mdi-drawing</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-drawing-box"></i><code class="m-r-10">f1df</code><span>mdi mdi-drawing-box</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-dribbble"></i><code class="m-r-10">f1e0</code><span>mdi mdi-dribbble</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-dribbble-box"></i><code class="m-r-10">f1e1</code><span>mdi mdi-dribbble-box</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-drone"></i><code class="m-r-10">f1e2</code><span>mdi mdi-drone</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-dropbox"></i><code class="m-r-10">f1e3</code><span>mdi mdi-dropbox</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-drupal"></i><code class="m-r-10">f1e4</code><span>mdi mdi-drupal</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-duck"></i><code class="m-r-10">f1e5</code><span>mdi mdi-duck</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-dumbbell"></i><code class="m-r-10">f1e6</code><span>mdi mdi-dumbbell</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-earth"></i><code class="m-r-10">f1e7</code><span>mdi mdi-earth</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-earth-box"></i><code class="m-r-10">f6cc</code><span>mdi mdi-earth-box</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-earth-box-off"></i><code class="m-r-10">f6cd</code><span>mdi mdi-earth-box-off</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-earth-off"></i><code class="m-r-10">f1e8</code><span>mdi mdi-earth-off</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-edge"></i><code class="m-r-10">f1e9</code><span>mdi mdi-edge</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-eject"></i><code class="m-r-10">f1ea</code><span>mdi mdi-eject</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-elevation-decline"></i><code class="m-r-10">f1eb</code><span>mdi mdi-elevation-decline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-elevation-rise"></i><code class="m-r-10">f1ec</code><span>mdi mdi-elevation-rise</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-elevator"></i><code class="m-r-10">f1ed</code><span>mdi mdi-elevator</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-email"></i><code class="m-r-10">f1ee</code><span>mdi mdi-email</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-email-alert"></i><code class="m-r-10">f6ce</code><span>mdi mdi-email-alert</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-email-open"></i><code class="m-r-10">f1ef</code><span>mdi mdi-email-open</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-email-open-outline"></i><code class="m-r-10">f5ef</code><span>mdi mdi-email-open-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-email-outline"></i><code class="m-r-10">f1f0</code><span>mdi mdi-email-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-email-secure"></i><code class="m-r-10">f1f1</code><span>mdi mdi-email-secure</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-email-variant"></i><code class="m-r-10">f5f0</code><span>mdi mdi-email-variant</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-emby"></i><code class="m-r-10">f6b3</code><span>mdi mdi-emby</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-emoticon"></i><code class="m-r-10">f1f2</code><span>mdi mdi-emoticon</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-emoticon-cool"></i><code class="m-r-10">f1f3</code><span>mdi mdi-emoticon-cool</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-emoticon-dead"></i><code class="m-r-10">f69a</code><span>mdi mdi-emoticon-dead</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-emoticon-devil"></i><code class="m-r-10">f1f4</code><span>mdi mdi-emoticon-devil</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-emoticon-excited"></i><code class="m-r-10">f69b</code><span>mdi mdi-emoticon-excited</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-emoticon-happy"></i><code class="m-r-10">f1f5</code><span>mdi mdi-emoticon-happy</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-emoticon-neutral"></i><code class="m-r-10">f1f6</code><span>mdi mdi-emoticon-neutral</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-emoticon-poop"></i><code class="m-r-10">f1f7</code><span>mdi mdi-emoticon-poop</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-emoticon-sad"></i><code class="m-r-10">f1f8</code><span>mdi mdi-emoticon-sad</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-emoticon-tongue"></i><code class="m-r-10">f1f9</code><span>mdi mdi-emoticon-tongue</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-engine"></i><code class="m-r-10">f1fa</code><span>mdi mdi-engine</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-engine-outline"></i><code class="m-r-10">f1fb</code><span>mdi mdi-engine-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-equal"></i><code class="m-r-10">f1fc</code><span>mdi mdi-equal</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-equal-box"></i><code class="m-r-10">f1fd</code><span>mdi mdi-equal-box</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-eraser"></i><code class="m-r-10">f1fe</code><span>mdi mdi-eraser</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-eraser-variant"></i><code class="m-r-10">f642</code><span>mdi mdi-eraser-variant</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-escalator"></i><code class="m-r-10">f1ff</code><span>mdi mdi-escalator</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-ethernet"></i><code class="m-r-10">f200</code><span>mdi mdi-ethernet</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-ethernet-cable"></i><code class="m-r-10">f201</code><span>mdi mdi-ethernet-cable</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-ethernet-cable-off"></i><code class="m-r-10">f202</code><span>mdi mdi-ethernet-cable-off</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-etsy"></i><code class="m-r-10">f203</code><span>mdi mdi-etsy</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-ev-station"></i><code class="m-r-10">f5f1</code><span>mdi mdi-ev-station</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-evernote"></i><code class="m-r-10">f204</code><span>mdi mdi-evernote</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-exclamation"></i><code class="m-r-10">f205</code><span>mdi mdi-exclamation</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-exit-to-app"></i><code class="m-r-10">f206</code><span>mdi mdi-exit-to-app</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-export"></i><code class="m-r-10">f207</code><span>mdi mdi-export</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-eye"></i><code class="m-r-10">f208</code><span>mdi mdi-eye</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-eye-off"></i><code class="m-r-10">f209</code><span>mdi mdi-eye-off</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-eye-outline"></i><code class="m-r-10">f6cf</code><span>mdi mdi-eye-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-eye-outline-off"></i><code class="m-r-10">f6d0</code><span>mdi mdi-eye-outline-off</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-eyedropper"></i><code class="m-r-10">f20a</code><span>mdi mdi-eyedropper</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-eyedropper-variant"></i><code class="m-r-10">f20b</code><span>mdi mdi-eyedropper-variant</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-face"></i><code class="m-r-10">f643</code><span>mdi mdi-face</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-face-profile"></i><code class="m-r-10">f644</code><span>mdi mdi-face-profile</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-facebook"></i><code class="m-r-10">f20c</code><span>mdi mdi-facebook</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-facebook-box"></i><code class="m-r-10">f20d</code><span>mdi mdi-facebook-box</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-facebook-messenger"></i><code class="m-r-10">f20e</code><span>mdi mdi-facebook-messenger</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-factory"></i><code class="m-r-10">f20f</code><span>mdi mdi-factory</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-fan"></i><code class="m-r-10">f210</code><span>mdi mdi-fan</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-fast-forward"></i><code class="m-r-10">f211</code><span>mdi mdi-fast-forward</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-fast-forward-outline"></i><code class="m-r-10">f6d1</code><span>mdi mdi-fast-forward-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-fax"></i><code class="m-r-10">f212</code><span>mdi mdi-fax</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-feather"></i><code class="m-r-10">f6d2</code><span>mdi mdi-feather</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-ferry"></i><code class="m-r-10">f213</code><span>mdi mdi-ferry</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-file"></i><code class="m-r-10">f214</code><span>mdi mdi-file</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-file-chart"></i><code class="m-r-10">f215</code><span>mdi mdi-file-chart</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-file-check"></i><code class="m-r-10">f216</code><span>mdi mdi-file-check</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-file-cloud"></i><code class="m-r-10">f217</code><span>mdi mdi-file-cloud</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-file-delimited"></i><code class="m-r-10">f218</code><span>mdi mdi-file-delimited</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-file-document"></i><code class="m-r-10">f219</code><span>mdi mdi-file-document</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-file-document-box"></i><code class="m-r-10">f21a</code><span>mdi mdi-file-document-box</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-file-excel"></i><code class="m-r-10">f21b</code><span>mdi mdi-file-excel</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-file-excel-box"></i><code class="m-r-10">f21c</code><span>mdi mdi-file-excel-box</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-file-export"></i><code class="m-r-10">f21d</code><span>mdi mdi-file-export</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-file-find"></i><code class="m-r-10">f21e</code><span>mdi mdi-file-find</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-file-hidden"></i><code class="m-r-10">f613</code><span>mdi mdi-file-hidden</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-file-image"></i><code class="m-r-10">f21f</code><span>mdi mdi-file-image</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-file-import"></i><code class="m-r-10">f220</code><span>mdi mdi-file-import</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-file-lock"></i><code class="m-r-10">f221</code><span>mdi mdi-file-lock</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-file-multiple"></i><code class="m-r-10">f222</code><span>mdi mdi-file-multiple</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-file-music"></i><code class="m-r-10">f223</code><span>mdi mdi-file-music</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-file-outline"></i><code class="m-r-10">f224</code><span>mdi mdi-file-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-file-pdf"></i><code class="m-r-10">f225</code><span>mdi mdi-file-pdf</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-file-pdf-box"></i><code class="m-r-10">f226</code><span>mdi mdi-file-pdf-box</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-file-powerpoint"></i><code class="m-r-10">f227</code><span>mdi mdi-file-powerpoint</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-file-powerpoint-box"></i><code class="m-r-10">f228</code><span>mdi mdi-file-powerpoint-box</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-file-presentation-box"></i><code class="m-r-10">f229</code><span>mdi mdi-file-presentation-box</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-file-restore"></i><code class="m-r-10">f670</code><span>mdi mdi-file-restore</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-file-send"></i><code class="m-r-10">f22a</code><span>mdi mdi-file-send</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-file-tree"></i><code class="m-r-10">f645</code><span>mdi mdi-file-tree</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-file-video"></i><code class="m-r-10">f22b</code><span>mdi mdi-file-video</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-file-word"></i><code class="m-r-10">f22c</code><span>mdi mdi-file-word</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-file-word-box"></i><code class="m-r-10">f22d</code><span>mdi mdi-file-word-box</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-file-xml"></i><code class="m-r-10">f22e</code><span>mdi mdi-file-xml</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-film"></i><code class="m-r-10">f22f</code><span>mdi mdi-film</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-filmstrip"></i><code class="m-r-10">f230</code><span>mdi mdi-filmstrip</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-filmstrip-off"></i><code class="m-r-10">f231</code><span>mdi mdi-filmstrip-off</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-filter"></i><code class="m-r-10">f232</code><span>mdi mdi-filter</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-filter-outline"></i><code class="m-r-10">f233</code><span>mdi mdi-filter-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-filter-remove"></i><code class="m-r-10">f234</code><span>mdi mdi-filter-remove</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-filter-remove-outline"></i><code class="m-r-10">f235</code><span>mdi mdi-filter-remove-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-filter-variant"></i><code class="m-r-10">f236</code><span>mdi mdi-filter-variant</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-find-replace"></i><code class="m-r-10">f6d3</code><span>mdi mdi-find-replace</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-fingerprint"></i><code class="m-r-10">f237</code><span>mdi mdi-fingerprint</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-fire"></i><code class="m-r-10">f238</code><span>mdi mdi-fire</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-firefox"></i><code class="m-r-10">f239</code><span>mdi mdi-firefox</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-fish"></i><code class="m-r-10">f23a</code><span>mdi mdi-fish</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-flag"></i><code class="m-r-10">f23b</code><span>mdi mdi-flag</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-flag-checkered"></i><code class="m-r-10">f23c</code><span>mdi mdi-flag-checkered</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-flag-outline"></i><code class="m-r-10">f23d</code><span>mdi mdi-flag-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-flag-outline-variant"></i><code class="m-r-10">f23e</code><span>mdi mdi-flag-outline-variant</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-flag-triangle"></i><code class="m-r-10">f23f</code><span>mdi mdi-flag-triangle</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-flag-variant"></i><code class="m-r-10">f240</code><span>mdi mdi-flag-variant</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-flash"></i><code class="m-r-10">f241</code><span>mdi mdi-flash</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-flash-auto"></i><code class="m-r-10">f242</code><span>mdi mdi-flash-auto</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-flash-off"></i><code class="m-r-10">f243</code><span>mdi mdi-flash-off</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-flash-outline"></i><code class="m-r-10">f6d4</code><span>mdi mdi-flash-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-flash-red-eye"></i><code class="m-r-10">f67a</code><span>mdi mdi-flash-red-eye</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-flashlight"></i><code class="m-r-10">f244</code><span>mdi mdi-flashlight</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-flashlight-off"></i><code class="m-r-10">f245</code><span>mdi mdi-flashlight-off</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-flask"></i><code class="m-r-10">f093</code><span>mdi mdi-flask</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-flask-empty"></i><code class="m-r-10">f094</code><span>mdi mdi-flask-empty</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-flask-empty-outline"></i><code class="m-r-10">f095</code><span>mdi mdi-flask-empty-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-flask-outline"></i><code class="m-r-10">f096</code><span>mdi mdi-flask-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-flattr"></i><code class="m-r-10">f246</code><span>mdi mdi-flattr</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-flip-to-back"></i><code class="m-r-10">f247</code><span>mdi mdi-flip-to-back</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-flip-to-front"></i><code class="m-r-10">f248</code><span>mdi mdi-flip-to-front</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-floppy"></i><code class="m-r-10">f249</code><span>mdi mdi-floppy</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-flower"></i><code class="m-r-10">f24a</code><span>mdi mdi-flower</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-folder"></i><code class="m-r-10">f24b</code><span>mdi mdi-folder</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-folder-account"></i><code class="m-r-10">f24c</code><span>mdi mdi-folder-account</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-folder-download"></i><code class="m-r-10">f24d</code><span>mdi mdi-folder-download</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-folder-google-drive"></i><code class="m-r-10">f24e</code><span>mdi mdi-folder-google-drive</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-folder-image"></i><code class="m-r-10">f24f</code><span>mdi mdi-folder-image</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-folder-lock"></i><code class="m-r-10">f250</code><span>mdi mdi-folder-lock</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-folder-lock-open"></i><code class="m-r-10">f251</code><span>mdi mdi-folder-lock-open</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-folder-move"></i><code class="m-r-10">f252</code><span>mdi mdi-folder-move</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-folder-multiple"></i><code class="m-r-10">f253</code><span>mdi mdi-folder-multiple</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-folder-multiple-image"></i><code class="m-r-10">f254</code><span>mdi mdi-folder-multiple-image</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-folder-multiple-outline"></i><code class="m-r-10">f255</code><span>mdi mdi-folder-multiple-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-folder-outline"></i><code class="m-r-10">f256</code><span>mdi mdi-folder-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-folder-plus"></i><code class="m-r-10">f257</code><span>mdi mdi-folder-plus</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-folder-remove"></i><code class="m-r-10">f258</code><span>mdi mdi-folder-remove</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-folder-star"></i><code class="m-r-10">f69c</code><span>mdi mdi-folder-star</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-folder-upload"></i><code class="m-r-10">f259</code><span>mdi mdi-folder-upload</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-font-awesome"></i><code class="m-r-10">f03a</code><span>mdi mdi-font-awesome</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-food"></i><code class="m-r-10">f25a</code><span>mdi mdi-food</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-food-apple"></i><code class="m-r-10">f25b</code><span>mdi mdi-food-apple</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-food-fork-drink"></i><code class="m-r-10">f5f2</code><span>mdi mdi-food-fork-drink</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-food-off"></i><code class="m-r-10">f5f3</code><span>mdi mdi-food-off</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-food-variant"></i><code class="m-r-10">f25c</code><span>mdi mdi-food-variant</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-football"></i><code class="m-r-10">f25d</code><span>mdi mdi-football</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-football-australian"></i><code class="m-r-10">f25e</code><span>mdi mdi-football-australian</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-football-helmet"></i><code class="m-r-10">f25f</code><span>mdi mdi-football-helmet</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-format-align-center"></i><code class="m-r-10">f260</code><span>mdi mdi-format-align-center</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-format-align-justify"></i><code class="m-r-10">f261</code><span>mdi mdi-format-align-justify</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-format-align-left"></i><code class="m-r-10">f262</code><span>mdi mdi-format-align-left</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-format-align-right"></i><code class="m-r-10">f263</code><span>mdi mdi-format-align-right</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-format-annotation-plus"></i><code class="m-r-10">f646</code><span>mdi mdi-format-annotation-plus</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-format-bold"></i><code class="m-r-10">f264</code><span>mdi mdi-format-bold</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-format-clear"></i><code class="m-r-10">f265</code><span>mdi mdi-format-clear</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-format-color-fill"></i><code class="m-r-10">f266</code><span>mdi mdi-format-color-fill</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-format-color-text"></i><code class="m-r-10">f69d</code><span>mdi mdi-format-color-text</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-format-float-center"></i><code class="m-r-10">f267</code><span>mdi mdi-format-float-center</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-format-float-left"></i><code class="m-r-10">f268</code><span>mdi mdi-format-float-left</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-format-float-none"></i><code class="m-r-10">f269</code><span>mdi mdi-format-float-none</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-format-float-right"></i><code class="m-r-10">f26a</code><span>mdi mdi-format-float-right</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-format-font"></i><code class="m-r-10">f6d5</code><span>mdi mdi-format-font</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-format-header-1"></i><code class="m-r-10">f26b</code><span>mdi mdi-format-header-1</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-format-header-2"></i><code class="m-r-10">f26c</code><span>mdi mdi-format-header-2</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-format-header-3"></i><code class="m-r-10">f26d</code><span>mdi mdi-format-header-3</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-format-header-4"></i><code class="m-r-10">f26e</code><span>mdi mdi-format-header-4</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-format-header-5"></i><code class="m-r-10">f26f</code><span>mdi mdi-format-header-5</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-format-header-6"></i><code class="m-r-10">f270</code><span>mdi mdi-format-header-6</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-format-header-decrease"></i><code class="m-r-10">f271</code><span>mdi mdi-format-header-decrease</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-format-header-equal"></i><code class="m-r-10">f272</code><span>mdi mdi-format-header-equal</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-format-header-increase"></i><code class="m-r-10">f273</code><span>mdi mdi-format-header-increase</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-format-header-pound"></i><code class="m-r-10">f274</code><span>mdi mdi-format-header-pound</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-format-horizontal-align-center"></i><code class="m-r-10">f61e</code><span>mdi mdi-format-horizontal-align-center</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-format-horizontal-align-left"></i><code class="m-r-10">f61f</code><span>mdi mdi-format-horizontal-align-left</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-format-horizontal-align-right"></i><code class="m-r-10">f620</code><span>mdi mdi-format-horizontal-align-right</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-format-indent-decrease"></i><code class="m-r-10">f275</code><span>mdi mdi-format-indent-decrease</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-format-indent-increase"></i><code class="m-r-10">f276</code><span>mdi mdi-format-indent-increase</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-format-italic"></i><code class="m-r-10">f277</code><span>mdi mdi-format-italic</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-format-line-spacing"></i><code class="m-r-10">f278</code><span>mdi mdi-format-line-spacing</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-format-line-style"></i><code class="m-r-10">f5c8</code><span>mdi mdi-format-line-style</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-format-line-weight"></i><code class="m-r-10">f5c9</code><span>mdi mdi-format-line-weight</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-format-list-bulleted"></i><code class="m-r-10">f279</code><span>mdi mdi-format-list-bulleted</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-format-list-bulleted-type"></i><code class="m-r-10">f27a</code><span>mdi mdi-format-list-bulleted-type</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-format-list-numbers"></i><code class="m-r-10">f27b</code><span>mdi mdi-format-list-numbers</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-format-page-break"></i><code class="m-r-10">f6d6</code><span>mdi mdi-format-page-break</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-format-paint"></i><code class="m-r-10">f27c</code><span>mdi mdi-format-paint</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-format-paragraph"></i><code class="m-r-10">f27d</code><span>mdi mdi-format-paragraph</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-format-pilcrow"></i><code class="m-r-10">f6d7</code><span>mdi mdi-format-pilcrow</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-format-quote"></i><code class="m-r-10">f27e</code><span>mdi mdi-format-quote</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-format-rotate-90"></i><code class="m-r-10">f6a9</code><span>mdi mdi-format-rotate-90</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-format-section"></i><code class="m-r-10">f69e</code><span>mdi mdi-format-section</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-format-size"></i><code class="m-r-10">f27f</code><span>mdi mdi-format-size</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-format-strikethrough"></i><code class="m-r-10">f280</code><span>mdi mdi-format-strikethrough</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-format-strikethrough-variant"></i><code class="m-r-10">f281</code><span>mdi mdi-format-strikethrough-variant</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-format-subscript"></i><code class="m-r-10">f282</code><span>mdi mdi-format-subscript</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-format-superscript"></i><code class="m-r-10">f283</code><span>mdi mdi-format-superscript</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-format-text"></i><code class="m-r-10">f284</code><span>mdi mdi-format-text</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-format-textdirection-l-to-r"></i><code class="m-r-10">f285</code><span>mdi mdi-format-textdirection-l-to-r</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-format-textdirection-r-to-l"></i><code class="m-r-10">f286</code><span>mdi mdi-format-textdirection-r-to-l</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-format-title"></i><code class="m-r-10">f5f4</code><span>mdi mdi-format-title</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-format-underline"></i><code class="m-r-10">f287</code><span>mdi mdi-format-underline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-format-vertical-align-bottom"></i><code class="m-r-10">f621</code><span>mdi mdi-format-vertical-align-bottom</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-format-vertical-align-center"></i><code class="m-r-10">f622</code><span>mdi mdi-format-vertical-align-center</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-format-vertical-align-top"></i><code class="m-r-10">f623</code><span>mdi mdi-format-vertical-align-top</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-format-wrap-inline"></i><code class="m-r-10">f288</code><span>mdi mdi-format-wrap-inline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-format-wrap-square"></i><code class="m-r-10">f289</code><span>mdi mdi-format-wrap-square</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-format-wrap-tight"></i><code class="m-r-10">f28a</code><span>mdi mdi-format-wrap-tight</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-format-wrap-top-bottom"></i><code class="m-r-10">f28b</code><span>mdi mdi-format-wrap-top-bottom</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-forum"></i><code class="m-r-10">f28c</code><span>mdi mdi-forum</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-forward"></i><code class="m-r-10">f28d</code><span>mdi mdi-forward</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-foursquare"></i><code class="m-r-10">f28e</code><span>mdi mdi-foursquare</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-fridge"></i><code class="m-r-10">f28f</code><span>mdi mdi-fridge</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-fridge-filled"></i><code class="m-r-10">f290</code><span>mdi mdi-fridge-filled</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-fridge-filled-bottom"></i><code class="m-r-10">f291</code><span>mdi mdi-fridge-filled-bottom</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-fridge-filled-top"></i><code class="m-r-10">f292</code><span>mdi mdi-fridge-filled-top</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-fullscreen"></i><code class="m-r-10">f293</code><span>mdi mdi-fullscreen</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-fullscreen-exit"></i><code class="m-r-10">f294</code><span>mdi mdi-fullscreen-exit</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-function"></i><code class="m-r-10">f295</code><span>mdi mdi-function</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-gamepad"></i><code class="m-r-10">f296</code><span>mdi mdi-gamepad</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-gamepad-variant"></i><code class="m-r-10">f297</code><span>mdi mdi-gamepad-variant</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-garage"></i><code class="m-r-10">f6d8</code><span>mdi mdi-garage</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-garage-open"></i><code class="m-r-10">f6d9</code><span>mdi mdi-garage-open</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-gas-cylinder"></i><code class="m-r-10">f647</code><span>mdi mdi-gas-cylinder</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-gas-station"></i><code class="m-r-10">f298</code><span>mdi mdi-gas-station</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-gate"></i><code class="m-r-10">f299</code><span>mdi mdi-gate</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-gauge"></i><code class="m-r-10">f29a</code><span>mdi mdi-gauge</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-gavel"></i><code class="m-r-10">f29b</code><span>mdi mdi-gavel</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-gender-female"></i><code class="m-r-10">f29c</code><span>mdi mdi-gender-female</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-gender-male"></i><code class="m-r-10">f29d</code><span>mdi mdi-gender-male</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-gender-male-female"></i><code class="m-r-10">f29e</code><span>mdi mdi-gender-male-female</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-gender-transgender"></i><code class="m-r-10">f29f</code><span>mdi mdi-gender-transgender</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-ghost"></i><code class="m-r-10">f2a0</code><span>mdi mdi-ghost</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-gift"></i><code class="m-r-10">f2a1</code><span>mdi mdi-gift</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-git"></i><code class="m-r-10">f2a2</code><span>mdi mdi-git</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-github-box"></i><code class="m-r-10">f2a3</code><span>mdi mdi-github-box</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-github-circle"></i><code class="m-r-10">f2a4</code><span>mdi mdi-github-circle</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-github-face"></i><code class="m-r-10">f6da</code><span>mdi mdi-github-face</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-glass-flute"></i><code class="m-r-10">f2a5</code><span>mdi mdi-glass-flute</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-glass-mug"></i><code class="m-r-10">f2a6</code><span>mdi mdi-glass-mug</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-glass-stange"></i><code class="m-r-10">f2a7</code><span>mdi mdi-glass-stange</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-glass-tulip"></i><code class="m-r-10">f2a8</code><span>mdi mdi-glass-tulip</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-glassdoor"></i><code class="m-r-10">f2a9</code><span>mdi mdi-glassdoor</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-glasses"></i><code class="m-r-10">f2aa</code><span>mdi mdi-glasses</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-gmail"></i><code class="m-r-10">f2ab</code><span>mdi mdi-gmail</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-gnome"></i><code class="m-r-10">f2ac</code><span>mdi mdi-gnome</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-gondola"></i><code class="m-r-10">f685</code><span>mdi mdi-gondola</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-google"></i><code class="m-r-10">f2ad</code><span>mdi mdi-google</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-google-cardboard"></i><code class="m-r-10">f2ae</code><span>mdi mdi-google-cardboard</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-google-chrome"></i><code class="m-r-10">f2af</code><span>mdi mdi-google-chrome</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-google-circles"></i><code class="m-r-10">f2b0</code><span>mdi mdi-google-circles</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-google-circles-communities"></i><code class="m-r-10">f2b1</code><span>mdi mdi-google-circles-communities</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-google-circles-extended"></i><code class="m-r-10">f2b2</code><span>mdi mdi-google-circles-extended</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-google-circles-group"></i><code class="m-r-10">f2b3</code><span>mdi mdi-google-circles-group</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-google-controller"></i><code class="m-r-10">f2b4</code><span>mdi mdi-google-controller</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-google-controller-off"></i><code class="m-r-10">f2b5</code><span>mdi mdi-google-controller-off</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-google-drive"></i><code class="m-r-10">f2b6</code><span>mdi mdi-google-drive</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-google-earth"></i><code class="m-r-10">f2b7</code><span>mdi mdi-google-earth</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-google-glass"></i><code class="m-r-10">f2b8</code><span>mdi mdi-google-glass</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-google-keep"></i><code class="m-r-10">f6db</code><span>mdi mdi-google-keep</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-google-maps"></i><code class="m-r-10">f5f5</code><span>mdi mdi-google-maps</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-google-nearby"></i><code class="m-r-10">f2b9</code><span>mdi mdi-google-nearby</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-google-pages"></i><code class="m-r-10">f2ba</code><span>mdi mdi-google-pages</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-google-photos"></i><code class="m-r-10">f6dc</code><span>mdi mdi-google-photos</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-google-physical-web"></i><code class="m-r-10">f2bb</code><span>mdi mdi-google-physical-web</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-google-play"></i><code class="m-r-10">f2bc</code><span>mdi mdi-google-play</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-google-plus"></i><code class="m-r-10">f2bd</code><span>mdi mdi-google-plus</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-google-plus-box"></i><code class="m-r-10">f2be</code><span>mdi mdi-google-plus-box</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-google-translate"></i><code class="m-r-10">f2bf</code><span>mdi mdi-google-translate</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-google-wallet"></i><code class="m-r-10">f2c0</code><span>mdi mdi-google-wallet</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-gradient"></i><code class="m-r-10">f69f</code><span>mdi mdi-gradient</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-grease-pencil"></i><code class="m-r-10">f648</code><span>mdi mdi-grease-pencil</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-grid"></i><code class="m-r-10">f2c1</code><span>mdi mdi-grid</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-grid-off"></i><code class="m-r-10">f2c2</code><span>mdi mdi-grid-off</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-group"></i><code class="m-r-10">f2c3</code><span>mdi mdi-group</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-guitar-electric"></i><code class="m-r-10">f2c4</code><span>mdi mdi-guitar-electric</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-guitar-pick"></i><code class="m-r-10">f2c5</code><span>mdi mdi-guitar-pick</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-guitar-pick-outline"></i><code class="m-r-10">f2c6</code><span>mdi mdi-guitar-pick-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-hackernews"></i><code class="m-r-10">f624</code><span>mdi mdi-hackernews</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-hamburger"></i><code class="m-r-10">f684</code><span>mdi mdi-hamburger</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-hand-pointing-right"></i><code class="m-r-10">f2c7</code><span>mdi mdi-hand-pointing-right</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-hanger"></i><code class="m-r-10">f2c8</code><span>mdi mdi-hanger</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-hangouts"></i><code class="m-r-10">f2c9</code><span>mdi mdi-hangouts</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-harddisk"></i><code class="m-r-10">f2ca</code><span>mdi mdi-harddisk</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-headphones"></i><code class="m-r-10">f2cb</code><span>mdi mdi-headphones</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-headphones-box"></i><code class="m-r-10">f2cc</code><span>mdi mdi-headphones-box</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-headphones-settings"></i><code class="m-r-10">f2cd</code><span>mdi mdi-headphones-settings</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-headset"></i><code class="m-r-10">f2ce</code><span>mdi mdi-headset</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-headset-dock"></i><code class="m-r-10">f2cf</code><span>mdi mdi-headset-dock</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-headset-off"></i><code class="m-r-10">f2d0</code><span>mdi mdi-headset-off</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-heart"></i><code class="m-r-10">f2d1</code><span>mdi mdi-heart</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-heart-box"></i><code class="m-r-10">f2d2</code><span>mdi mdi-heart-box</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-heart-box-outline"></i><code class="m-r-10">f2d3</code><span>mdi mdi-heart-box-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-heart-broken"></i><code class="m-r-10">f2d4</code><span>mdi mdi-heart-broken</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-heart-half-outline"></i><code class="m-r-10">f6dd</code><span>mdi mdi-heart-half-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-heart-half-part"></i><code class="m-r-10">f6de</code><span>mdi mdi-heart-half-part</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-heart-half-part-outline"></i><code class="m-r-10">f6df</code><span>mdi mdi-heart-half-part-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-heart-outline"></i><code class="m-r-10">f2d5</code><span>mdi mdi-heart-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-heart-pulse"></i><code class="m-r-10">f5f6</code><span>mdi mdi-heart-pulse</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-help"></i><code class="m-r-10">f2d6</code><span>mdi mdi-help</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-help-circle"></i><code class="m-r-10">f2d7</code><span>mdi mdi-help-circle</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-help-circle-outline"></i><code class="m-r-10">f625</code><span>mdi mdi-help-circle-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-hexagon"></i><code class="m-r-10">f2d8</code><span>mdi mdi-hexagon</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-hexagon-multiple"></i><code class="m-r-10">f6e0</code><span>mdi mdi-hexagon-multiple</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-hexagon-outline"></i><code class="m-r-10">f2d9</code><span>mdi mdi-hexagon-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-highway"></i><code class="m-r-10">f5f7</code><span>mdi mdi-highway</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-history"></i><code class="m-r-10">f2da</code><span>mdi mdi-history</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-hololens"></i><code class="m-r-10">f2db</code><span>mdi mdi-hololens</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-home"></i><code class="m-r-10">f2dc</code><span>mdi mdi-home</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-home-map-marker"></i><code class="m-r-10">f5f8</code><span>mdi mdi-home-map-marker</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-home-modern"></i><code class="m-r-10">f2dd</code><span>mdi mdi-home-modern</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-home-outline"></i><code class="m-r-10">f6a0</code><span>mdi mdi-home-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-home-variant"></i><code class="m-r-10">f2de</code><span>mdi mdi-home-variant</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-hook"></i><code class="m-r-10">f6e1</code><span>mdi mdi-hook</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-hook-off"></i><code class="m-r-10">f6e2</code><span>mdi mdi-hook-off</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-hops"></i><code class="m-r-10">f2df</code><span>mdi mdi-hops</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-hospital"></i><code class="m-r-10">f2e0</code><span>mdi mdi-hospital</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-hospital-building"></i><code class="m-r-10">f2e1</code><span>mdi mdi-hospital-building</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-hospital-marker"></i><code class="m-r-10">f2e2</code><span>mdi mdi-hospital-marker</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-hotel"></i><code class="m-r-10">f2e3</code><span>mdi mdi-hotel</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-houzz"></i><code class="m-r-10">f2e4</code><span>mdi mdi-houzz</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-houzz-box"></i><code class="m-r-10">f2e5</code><span>mdi mdi-houzz-box</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-human"></i><code class="m-r-10">f2e6</code><span>mdi mdi-human</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-human-child"></i><code class="m-r-10">f2e7</code><span>mdi mdi-human-child</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-human-female"></i><code class="m-r-10">f649</code><span>mdi mdi-human-female</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-human-greeting"></i><code class="m-r-10">f64a</code><span>mdi mdi-human-greeting</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-human-handsdown"></i><code class="m-r-10">f64b</code><span>mdi mdi-human-handsdown</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-human-handsup"></i><code class="m-r-10">f64c</code><span>mdi mdi-human-handsup</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-human-male"></i><code class="m-r-10">f64d</code><span>mdi mdi-human-male</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-human-male-female"></i><code class="m-r-10">f2e8</code><span>mdi mdi-human-male-female</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-human-pregnant"></i><code class="m-r-10">f5cf</code><span>mdi mdi-human-pregnant</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-image"></i><code class="m-r-10">f2e9</code><span>mdi mdi-image</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-image-album"></i><code class="m-r-10">f2ea</code><span>mdi mdi-image-album</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-image-area"></i><code class="m-r-10">f2eb</code><span>mdi mdi-image-area</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-image-area-close"></i><code class="m-r-10">f2ec</code><span>mdi mdi-image-area-close</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-image-broken"></i><code class="m-r-10">f2ed</code><span>mdi mdi-image-broken</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-image-broken-variant"></i><code class="m-r-10">f2ee</code><span>mdi mdi-image-broken-variant</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-image-filter"></i><code class="m-r-10">f2ef</code><span>mdi mdi-image-filter</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-image-filter-black-white"></i><code class="m-r-10">f2f0</code><span>mdi mdi-image-filter-black-white</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-image-filter-center-focus"></i><code class="m-r-10">f2f1</code><span>mdi mdi-image-filter-center-focus</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-image-filter-center-focus-weak"></i><code class="m-r-10">f2f2</code><span>mdi mdi-image-filter-center-focus-weak</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-image-filter-drama"></i><code class="m-r-10">f2f3</code><span>mdi mdi-image-filter-drama</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-image-filter-frames"></i><code class="m-r-10">f2f4</code><span>mdi mdi-image-filter-frames</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-image-filter-hdr"></i><code class="m-r-10">f2f5</code><span>mdi mdi-image-filter-hdr</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-image-filter-none"></i><code class="m-r-10">f2f6</code><span>mdi mdi-image-filter-none</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-image-filter-tilt-shift"></i><code class="m-r-10">f2f7</code><span>mdi mdi-image-filter-tilt-shift</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-image-filter-vintage"></i><code class="m-r-10">f2f8</code><span>mdi mdi-image-filter-vintage</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-image-multiple"></i><code class="m-r-10">f2f9</code><span>mdi mdi-image-multiple</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-import"></i><code class="m-r-10">f2fa</code><span>mdi mdi-import</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-inbox"></i><code class="m-r-10">f686</code><span>mdi mdi-inbox</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-inbox-arrow-down"></i><code class="m-r-10">f2fb</code><span>mdi mdi-inbox-arrow-down</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-inbox-arrow-up"></i><code class="m-r-10">f3d1</code><span>mdi mdi-inbox-arrow-up</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-incognito"></i><code class="m-r-10">f5f9</code><span>mdi mdi-incognito</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-infinity"></i><code class="m-r-10">f6e3</code><span>mdi mdi-infinity</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-information"></i><code class="m-r-10">f2fc</code><span>mdi mdi-information</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-information-outline"></i><code class="m-r-10">f2fd</code><span>mdi mdi-information-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-information-variant"></i><code class="m-r-10">f64e</code><span>mdi mdi-information-variant</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-instagram"></i><code class="m-r-10">f2fe</code><span>mdi mdi-instagram</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-instapaper"></i><code class="m-r-10">f2ff</code><span>mdi mdi-instapaper</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-internet-explorer"></i><code class="m-r-10">f300</code><span>mdi mdi-internet-explorer</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-invert-colors"></i><code class="m-r-10">f301</code><span>mdi mdi-invert-colors</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-itunes"></i><code class="m-r-10">f676</code><span>mdi mdi-itunes</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-jeepney"></i><code class="m-r-10">f302</code><span>mdi mdi-jeepney</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-jira"></i><code class="m-r-10">f303</code><span>mdi mdi-jira</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-jsfiddle"></i><code class="m-r-10">f304</code><span>mdi mdi-jsfiddle</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-json"></i><code class="m-r-10">f626</code><span>mdi mdi-json</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-keg"></i><code class="m-r-10">f305</code><span>mdi mdi-keg</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-kettle"></i><code class="m-r-10">f5fa</code><span>mdi mdi-kettle</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-key"></i><code class="m-r-10">f306</code><span>mdi mdi-key</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-key-change"></i><code class="m-r-10">f307</code><span>mdi mdi-key-change</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-key-minus"></i><code class="m-r-10">f308</code><span>mdi mdi-key-minus</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-key-plus"></i><code class="m-r-10">f309</code><span>mdi mdi-key-plus</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-key-remove"></i><code class="m-r-10">f30a</code><span>mdi mdi-key-remove</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-key-variant"></i><code class="m-r-10">f30b</code><span>mdi mdi-key-variant</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-keyboard"></i><code class="m-r-10">f30c</code><span>mdi mdi-keyboard</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-keyboard-backspace"></i><code class="m-r-10">f30d</code><span>mdi mdi-keyboard-backspace</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-keyboard-caps"></i><code class="m-r-10">f30e</code><span>mdi mdi-keyboard-caps</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-keyboard-close"></i><code class="m-r-10">f30f</code><span>mdi mdi-keyboard-close</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-keyboard-off"></i><code class="m-r-10">f310</code><span>mdi mdi-keyboard-off</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-keyboard-return"></i><code class="m-r-10">f311</code><span>mdi mdi-keyboard-return</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-keyboard-tab"></i><code class="m-r-10">f312</code><span>mdi mdi-keyboard-tab</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-keyboard-variant"></i><code class="m-r-10">f313</code><span>mdi mdi-keyboard-variant</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-kodi"></i><code class="m-r-10">f314</code><span>mdi mdi-kodi</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-label"></i><code class="m-r-10">f315</code><span>mdi mdi-label</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-label-outline"></i><code class="m-r-10">f316</code><span>mdi mdi-label-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-lambda"></i><code class="m-r-10">f627</code><span>mdi mdi-lambda</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-lamp"></i><code class="m-r-10">f6b4</code><span>mdi mdi-lamp</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-lan"></i><code class="m-r-10">f317</code><span>mdi mdi-lan</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-lan-connect"></i><code class="m-r-10">f318</code><span>mdi mdi-lan-connect</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-lan-disconnect"></i><code class="m-r-10">f319</code><span>mdi mdi-lan-disconnect</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-lan-pending"></i><code class="m-r-10">f31a</code><span>mdi mdi-lan-pending</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-language-c"></i><code class="m-r-10">f671</code><span>mdi mdi-language-c</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-language-cpp"></i><code class="m-r-10">f672</code><span>mdi mdi-language-cpp</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-language-csharp"></i><code class="m-r-10">f31b</code><span>mdi mdi-language-csharp</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-language-css3"></i><code class="m-r-10">f31c</code><span>mdi mdi-language-css3</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-language-html5"></i><code class="m-r-10">f31d</code><span>mdi mdi-language-html5</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-language-javascript"></i><code class="m-r-10">f31e</code><span>mdi mdi-language-javascript</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-language-php"></i><code class="m-r-10">f31f</code><span>mdi mdi-language-php</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-language-python"></i><code class="m-r-10">f320</code><span>mdi mdi-language-python</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-language-python-text"></i><code class="m-r-10">f321</code><span>mdi mdi-language-python-text</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-language-swift"></i><code class="m-r-10">f6e4</code><span>mdi mdi-language-swift</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-language-typescript"></i><code class="m-r-10">f6e5</code><span>mdi mdi-language-typescript</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-laptop"></i><code class="m-r-10">f322</code><span>mdi mdi-laptop</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-laptop-chromebook"></i><code class="m-r-10">f323</code><span>mdi mdi-laptop-chromebook</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-laptop-mac"></i><code class="m-r-10">f324</code><span>mdi mdi-laptop-mac</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-laptop-off"></i><code class="m-r-10">f6e6</code><span>mdi mdi-laptop-off</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-laptop-windows"></i><code class="m-r-10">f325</code><span>mdi mdi-laptop-windows</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-lastfm"></i><code class="m-r-10">f326</code><span>mdi mdi-lastfm</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-launch"></i><code class="m-r-10">f327</code><span>mdi mdi-launch</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-layers"></i><code class="m-r-10">f328</code><span>mdi mdi-layers</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-layers-off"></i><code class="m-r-10">f329</code><span>mdi mdi-layers-off</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-lead-pencil"></i><code class="m-r-10">f64f</code><span>mdi mdi-lead-pencil</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-leaf"></i><code class="m-r-10">f32a</code><span>mdi mdi-leaf</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-led-off"></i><code class="m-r-10">f32b</code><span>mdi mdi-led-off</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-led-on"></i><code class="m-r-10">f32c</code><span>mdi mdi-led-on</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-led-outline"></i><code class="m-r-10">f32d</code><span>mdi mdi-led-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-led-variant-off"></i><code class="m-r-10">f32e</code><span>mdi mdi-led-variant-off</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-led-variant-on"></i><code class="m-r-10">f32f</code><span>mdi mdi-led-variant-on</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-led-variant-outline"></i><code class="m-r-10">f330</code><span>mdi mdi-led-variant-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-library"></i><code class="m-r-10">f331</code><span>mdi mdi-library</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-library-books"></i><code class="m-r-10">f332</code><span>mdi mdi-library-books</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-library-music"></i><code class="m-r-10">f333</code><span>mdi mdi-library-music</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-library-plus"></i><code class="m-r-10">f334</code><span>mdi mdi-library-plus</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-lightbulb"></i><code class="m-r-10">f335</code><span>mdi mdi-lightbulb</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-lightbulb-on"></i><code class="m-r-10">f6e7</code><span>mdi mdi-lightbulb-on</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-lightbulb-on-outline"></i><code class="m-r-10">f6e8</code><span>mdi mdi-lightbulb-on-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-lightbulb-outline"></i><code class="m-r-10">f336</code><span>mdi mdi-lightbulb-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-link"></i><code class="m-r-10">f337</code><span>mdi mdi-link</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-link-off"></i><code class="m-r-10">f338</code><span>mdi mdi-link-off</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-link-variant"></i><code class="m-r-10">f339</code><span>mdi mdi-link-variant</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-link-variant-off"></i><code class="m-r-10">f33a</code><span>mdi mdi-link-variant-off</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-linkedin"></i><code class="m-r-10">f33b</code><span>mdi mdi-linkedin</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-linkedin-box"></i><code class="m-r-10">f33c</code><span>mdi mdi-linkedin-box</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-linux"></i><code class="m-r-10">f33d</code><span>mdi mdi-linux</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-lock"></i><code class="m-r-10">f33e</code><span>mdi mdi-lock</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-lock-open"></i><code class="m-r-10">f33f</code><span>mdi mdi-lock-open</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-lock-open-outline"></i><code class="m-r-10">f340</code><span>mdi mdi-lock-open-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-lock-outline"></i><code class="m-r-10">f341</code><span>mdi mdi-lock-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-lock-pattern"></i><code class="m-r-10">f6e9</code><span>mdi mdi-lock-pattern</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-lock-plus"></i><code class="m-r-10">f5fb</code><span>mdi mdi-lock-plus</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-login"></i><code class="m-r-10">f342</code><span>mdi mdi-login</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-login-variant"></i><code class="m-r-10">f5fc</code><span>mdi mdi-login-variant</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-logout"></i><code class="m-r-10">f343</code><span>mdi mdi-logout</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-logout-variant"></i><code class="m-r-10">f5fd</code><span>mdi mdi-logout-variant</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-looks"></i><code class="m-r-10">f344</code><span>mdi mdi-looks</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-loop"></i><code class="m-r-10">f6ea</code><span>mdi mdi-loop</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-loupe"></i><code class="m-r-10">f345</code><span>mdi mdi-loupe</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-lumx"></i><code class="m-r-10">f346</code><span>mdi mdi-lumx</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-magnet"></i><code class="m-r-10">f347</code><span>mdi mdi-magnet</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-magnet-on"></i><code class="m-r-10">f348</code><span>mdi mdi-magnet-on</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-magnify"></i><code class="m-r-10">f349</code><span>mdi mdi-magnify</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-magnify-minus"></i><code class="m-r-10">f34a</code><span>mdi mdi-magnify-minus</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-magnify-minus-outline"></i><code class="m-r-10">f6eb</code><span>mdi mdi-magnify-minus-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-magnify-plus"></i><code class="m-r-10">f34b</code><span>mdi mdi-magnify-plus</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-magnify-plus-outline"></i><code class="m-r-10">f6ec</code><span>mdi mdi-magnify-plus-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-mail-ru"></i><code class="m-r-10">f34c</code><span>mdi mdi-mail-ru</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-mailbox"></i><code class="m-r-10">f6ed</code><span>mdi mdi-mailbox</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-map"></i><code class="m-r-10">f34d</code><span>mdi mdi-map</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-map-marker"></i><code class="m-r-10">f34e</code><span>mdi mdi-map-marker</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-map-marker-circle"></i><code class="m-r-10">f34f</code><span>mdi mdi-map-marker-circle</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-map-marker-minus"></i><code class="m-r-10">f650</code><span>mdi mdi-map-marker-minus</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-map-marker-multiple"></i><code class="m-r-10">f350</code><span>mdi mdi-map-marker-multiple</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-map-marker-off"></i><code class="m-r-10">f351</code><span>mdi mdi-map-marker-off</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-map-marker-plus"></i><code class="m-r-10">f651</code><span>mdi mdi-map-marker-plus</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-map-marker-radius"></i><code class="m-r-10">f352</code><span>mdi mdi-map-marker-radius</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-margin"></i><code class="m-r-10">f353</code><span>mdi mdi-margin</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-markdown"></i><code class="m-r-10">f354</code><span>mdi mdi-markdown</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-marker"></i><code class="m-r-10">f652</code><span>mdi mdi-marker</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-marker-check"></i><code class="m-r-10">f355</code><span>mdi mdi-marker-check</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-martini"></i><code class="m-r-10">f356</code><span>mdi mdi-martini</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-material-ui"></i><code class="m-r-10">f357</code><span>mdi mdi-material-ui</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-math-compass"></i><code class="m-r-10">f358</code><span>mdi mdi-math-compass</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-matrix"></i><code class="m-r-10">f628</code><span>mdi mdi-matrix</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-maxcdn"></i><code class="m-r-10">f359</code><span>mdi mdi-maxcdn</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-medical-bag"></i><code class="m-r-10">f6ee</code><span>mdi mdi-medical-bag</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-medium"></i><code class="m-r-10">f35a</code><span>mdi mdi-medium</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-memory"></i><code class="m-r-10">f35b</code><span>mdi mdi-memory</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-menu"></i><code class="m-r-10">f35c</code><span>mdi mdi-menu</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-menu-down"></i><code class="m-r-10">f35d</code><span>mdi mdi-menu-down</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-menu-down-outline"></i><code class="m-r-10">f6b5</code><span>mdi mdi-menu-down-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-menu-left"></i><code class="m-r-10">f35e</code><span>mdi mdi-menu-left</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-menu-right"></i><code class="m-r-10">f35f</code><span>mdi mdi-menu-right</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-menu-up"></i><code class="m-r-10">f360</code><span>mdi mdi-menu-up</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-menu-up-outline"></i><code class="m-r-10">f6b6</code><span>mdi mdi-menu-up-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-message"></i><code class="m-r-10">f361</code><span>mdi mdi-message</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-message-alert"></i><code class="m-r-10">f362</code><span>mdi mdi-message-alert</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-message-bulleted"></i><code class="m-r-10">f6a1</code><span>mdi mdi-message-bulleted</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-message-bulleted-off"></i><code class="m-r-10">f6a2</code><span>mdi mdi-message-bulleted-off</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-message-draw"></i><code class="m-r-10">f363</code><span>mdi mdi-message-draw</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-message-image"></i><code class="m-r-10">f364</code><span>mdi mdi-message-image</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-message-outline"></i><code class="m-r-10">f365</code><span>mdi mdi-message-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-message-plus"></i><code class="m-r-10">f653</code><span>mdi mdi-message-plus</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-message-processing"></i><code class="m-r-10">f366</code><span>mdi mdi-message-processing</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-message-reply"></i><code class="m-r-10">f367</code><span>mdi mdi-message-reply</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-message-reply-text"></i><code class="m-r-10">f368</code><span>mdi mdi-message-reply-text</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-message-settings"></i><code class="m-r-10">f6ef</code><span>mdi mdi-message-settings</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-message-settings-variant"></i><code class="m-r-10">f6f0</code><span>mdi mdi-message-settings-variant</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-message-text"></i><code class="m-r-10">f369</code><span>mdi mdi-message-text</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-message-text-outline"></i><code class="m-r-10">f36a</code><span>mdi mdi-message-text-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-message-video"></i><code class="m-r-10">f36b</code><span>mdi mdi-message-video</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-meteor"></i><code class="m-r-10">f629</code><span>mdi mdi-meteor</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-microphone"></i><code class="m-r-10">f36c</code><span>mdi mdi-microphone</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-microphone-off"></i><code class="m-r-10">f36d</code><span>mdi mdi-microphone-off</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-microphone-outline"></i><code class="m-r-10">f36e</code><span>mdi mdi-microphone-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-microphone-settings"></i><code class="m-r-10">f36f</code><span>mdi mdi-microphone-settings</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-microphone-variant"></i><code class="m-r-10">f370</code><span>mdi mdi-microphone-variant</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-microphone-variant-off"></i><code class="m-r-10">f371</code><span>mdi mdi-microphone-variant-off</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-microscope"></i><code class="m-r-10">f654</code><span>mdi mdi-microscope</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-microsoft"></i><code class="m-r-10">f372</code><span>mdi mdi-microsoft</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-minecraft"></i><code class="m-r-10">f373</code><span>mdi mdi-minecraft</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-minus"></i><code class="m-r-10">f374</code><span>mdi mdi-minus</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-minus-box"></i><code class="m-r-10">f375</code><span>mdi mdi-minus-box</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-minus-box-outline"></i><code class="m-r-10">f6f1</code><span>mdi mdi-minus-box-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-minus-circle"></i><code class="m-r-10">f376</code><span>mdi mdi-minus-circle</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-minus-circle-outline"></i><code class="m-r-10">f377</code><span>mdi mdi-minus-circle-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-minus-network"></i><code class="m-r-10">f378</code><span>mdi mdi-minus-network</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-mixcloud"></i><code class="m-r-10">f62a</code><span>mdi mdi-mixcloud</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-monitor"></i><code class="m-r-10">f379</code><span>mdi mdi-monitor</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-monitor-multiple"></i><code class="m-r-10">f37a</code><span>mdi mdi-monitor-multiple</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-more"></i><code class="m-r-10">f37b</code><span>mdi mdi-more</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-motorbike"></i><code class="m-r-10">f37c</code><span>mdi mdi-motorbike</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-mouse"></i><code class="m-r-10">f37d</code><span>mdi mdi-mouse</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-mouse-off"></i><code class="m-r-10">f37e</code><span>mdi mdi-mouse-off</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-mouse-variant"></i><code class="m-r-10">f37f</code><span>mdi mdi-mouse-variant</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-mouse-variant-off"></i><code class="m-r-10">f380</code><span>mdi mdi-mouse-variant-off</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-move-resize"></i><code class="m-r-10">f655</code><span>mdi mdi-move-resize</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-move-resize-variant"></i><code class="m-r-10">f656</code><span>mdi mdi-move-resize-variant</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-movie"></i><code class="m-r-10">f381</code><span>mdi mdi-movie</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-multiplication"></i><code class="m-r-10">f382</code><span>mdi mdi-multiplication</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-multiplication-box"></i><code class="m-r-10">f383</code><span>mdi mdi-multiplication-box</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-music-box"></i><code class="m-r-10">f384</code><span>mdi mdi-music-box</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-music-box-outline"></i><code class="m-r-10">f385</code><span>mdi mdi-music-box-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-music-circle"></i><code class="m-r-10">f386</code><span>mdi mdi-music-circle</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-music-note"></i><code class="m-r-10">f387</code><span>mdi mdi-music-note</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-music-note-bluetooth"></i><code class="m-r-10">f5fe</code><span>mdi mdi-music-note-bluetooth</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-music-note-bluetooth-off"></i><code class="m-r-10">f5ff</code><span>mdi mdi-music-note-bluetooth-off</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-music-note-eighth"></i><code class="m-r-10">f388</code><span>mdi mdi-music-note-eighth</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-music-note-half"></i><code class="m-r-10">f389</code><span>mdi mdi-music-note-half</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-music-note-off"></i><code class="m-r-10">f38a</code><span>mdi mdi-music-note-off</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-music-note-quarter"></i><code class="m-r-10">f38b</code><span>mdi mdi-music-note-quarter</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-music-note-sixteenth"></i><code class="m-r-10">f38c</code><span>mdi mdi-music-note-sixteenth</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-music-note-whole"></i><code class="m-r-10">f38d</code><span>mdi mdi-music-note-whole</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-nature"></i><code class="m-r-10">f38e</code><span>mdi mdi-nature</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-nature-people"></i><code class="m-r-10">f38f</code><span>mdi mdi-nature-people</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-navigation"></i><code class="m-r-10">f390</code><span>mdi mdi-navigation</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-near-me"></i><code class="m-r-10">f5cd</code><span>mdi mdi-near-me</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-needle"></i><code class="m-r-10">f391</code><span>mdi mdi-needle</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-nest-protect"></i><code class="m-r-10">f392</code><span>mdi mdi-nest-protect</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-nest-thermostat"></i><code class="m-r-10">f393</code><span>mdi mdi-nest-thermostat</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-network"></i><code class="m-r-10">f6f2</code><span>mdi mdi-network</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-network-download"></i><code class="m-r-10">f6f3</code><span>mdi mdi-network-download</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-network-question"></i><code class="m-r-10">f6f4</code><span>mdi mdi-network-question</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-network-upload"></i><code class="m-r-10">f6f5</code><span>mdi mdi-network-upload</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-new-box"></i><code class="m-r-10">f394</code><span>mdi mdi-new-box</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-newspaper"></i><code class="m-r-10">f395</code><span>mdi mdi-newspaper</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-nfc"></i><code class="m-r-10">f396</code><span>mdi mdi-nfc</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-nfc-tap"></i><code class="m-r-10">f397</code><span>mdi mdi-nfc-tap</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-nfc-variant"></i><code class="m-r-10">f398</code><span>mdi mdi-nfc-variant</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-nodejs"></i><code class="m-r-10">f399</code><span>mdi mdi-nodejs</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-note"></i><code class="m-r-10">f39a</code><span>mdi mdi-note</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-note-multiple"></i><code class="m-r-10">f6b7</code><span>mdi mdi-note-multiple</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-note-multiple-outline"></i><code class="m-r-10">f6b8</code><span>mdi mdi-note-multiple-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-note-outline"></i><code class="m-r-10">f39b</code><span>mdi mdi-note-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-note-plus"></i><code class="m-r-10">f39c</code><span>mdi mdi-note-plus</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-note-plus-outline"></i><code class="m-r-10">f39d</code><span>mdi mdi-note-plus-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-note-text"></i><code class="m-r-10">f39e</code><span>mdi mdi-note-text</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-notification-clear-all"></i><code class="m-r-10">f39f</code><span>mdi mdi-notification-clear-all</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-npm"></i><code class="m-r-10">f6f6</code><span>mdi mdi-npm</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-nuke"></i><code class="m-r-10">f6a3</code><span>mdi mdi-nuke</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-numeric"></i><code class="m-r-10">f3a0</code><span>mdi mdi-numeric</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-numeric-0-box"></i><code class="m-r-10">f3a1</code><span>mdi mdi-numeric-0-box</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-numeric-0-box-multiple-outline"></i><code class="m-r-10">f3a2</code><span>mdi mdi-numeric-0-box-multiple-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-numeric-0-box-outline"></i><code class="m-r-10">f3a3</code><span>mdi mdi-numeric-0-box-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-numeric-1-box"></i><code class="m-r-10">f3a4</code><span>mdi mdi-numeric-1-box</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-numeric-1-box-multiple-outline"></i><code class="m-r-10">f3a5</code><span>mdi mdi-numeric-1-box-multiple-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-numeric-1-box-outline"></i><code class="m-r-10">f3a6</code><span>mdi mdi-numeric-1-box-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-numeric-2-box"></i><code class="m-r-10">f3a7</code><span>mdi mdi-numeric-2-box</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-numeric-2-box-multiple-outline"></i><code class="m-r-10">f3a8</code><span>mdi mdi-numeric-2-box-multiple-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-numeric-2-box-outline"></i><code class="m-r-10">f3a9</code><span>mdi mdi-numeric-2-box-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-numeric-3-box"></i><code class="m-r-10">f3aa</code><span>mdi mdi-numeric-3-box</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-numeric-3-box-multiple-outline"></i><code class="m-r-10">f3ab</code><span>mdi mdi-numeric-3-box-multiple-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-numeric-3-box-outline"></i><code class="m-r-10">f3ac</code><span>mdi mdi-numeric-3-box-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-numeric-4-box"></i><code class="m-r-10">f3ad</code><span>mdi mdi-numeric-4-box</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-numeric-4-box-multiple-outline"></i><code class="m-r-10">f3ae</code><span>mdi mdi-numeric-4-box-multiple-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-numeric-4-box-outline"></i><code class="m-r-10">f3af</code><span>mdi mdi-numeric-4-box-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-numeric-5-box"></i><code class="m-r-10">f3b0</code><span>mdi mdi-numeric-5-box</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-numeric-5-box-multiple-outline"></i><code class="m-r-10">f3b1</code><span>mdi mdi-numeric-5-box-multiple-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-numeric-5-box-outline"></i><code class="m-r-10">f3b2</code><span>mdi mdi-numeric-5-box-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-numeric-6-box"></i><code class="m-r-10">f3b3</code><span>mdi mdi-numeric-6-box</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-numeric-6-box-multiple-outline"></i><code class="m-r-10">f3b4</code><span>mdi mdi-numeric-6-box-multiple-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-numeric-6-box-outline"></i><code class="m-r-10">f3b5</code><span>mdi mdi-numeric-6-box-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-numeric-7-box"></i><code class="m-r-10">f3b6</code><span>mdi mdi-numeric-7-box</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-numeric-7-box-multiple-outline"></i><code class="m-r-10">f3b7</code><span>mdi mdi-numeric-7-box-multiple-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-numeric-7-box-outline"></i><code class="m-r-10">f3b8</code><span>mdi mdi-numeric-7-box-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-numeric-8-box"></i><code class="m-r-10">f3b9</code><span>mdi mdi-numeric-8-box</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-numeric-8-box-multiple-outline"></i><code class="m-r-10">f3ba</code><span>mdi mdi-numeric-8-box-multiple-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-numeric-8-box-outline"></i><code class="m-r-10">f3bb</code><span>mdi mdi-numeric-8-box-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-numeric-9-box"></i><code class="m-r-10">f3bc</code><span>mdi mdi-numeric-9-box</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-numeric-9-box-multiple-outline"></i><code class="m-r-10">f3bd</code><span>mdi mdi-numeric-9-box-multiple-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-numeric-9-box-outline"></i><code class="m-r-10">f3be</code><span>mdi mdi-numeric-9-box-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-numeric-9-plus-box"></i><code class="m-r-10">f3bf</code><span>mdi mdi-numeric-9-plus-box</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-numeric-9-plus-box-multiple-outline"></i><code class="m-r-10">f3c0</code><span>mdi mdi-numeric-9-plus-box-multiple-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-numeric-9-plus-box-outline"></i><code class="m-r-10">f3c1</code><span>mdi mdi-numeric-9-plus-box-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-nut"></i><code class="m-r-10">f6f7</code><span>mdi mdi-nut</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-nutrition"></i><code class="m-r-10">f3c2</code><span>mdi mdi-nutrition</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-oar"></i><code class="m-r-10">f67b</code><span>mdi mdi-oar</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-octagon"></i><code class="m-r-10">f3c3</code><span>mdi mdi-octagon</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-octagon-outline"></i><code class="m-r-10">f3c4</code><span>mdi mdi-octagon-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-octagram"></i><code class="m-r-10">f6f8</code><span>mdi mdi-octagram</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-odnoklassniki"></i><code class="m-r-10">f3c5</code><span>mdi mdi-odnoklassniki</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-office"></i><code class="m-r-10">f3c6</code><span>mdi mdi-office</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-oil"></i><code class="m-r-10">f3c7</code><span>mdi mdi-oil</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-oil-temperature"></i><code class="m-r-10">f3c8</code><span>mdi mdi-oil-temperature</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-omega"></i><code class="m-r-10">f3c9</code><span>mdi mdi-omega</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-onedrive"></i><code class="m-r-10">f3ca</code><span>mdi mdi-onedrive</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-opacity"></i><code class="m-r-10">f5cc</code><span>mdi mdi-opacity</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-open-in-app"></i><code class="m-r-10">f3cb</code><span>mdi mdi-open-in-app</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-open-in-new"></i><code class="m-r-10">f3cc</code><span>mdi mdi-open-in-new</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-openid"></i><code class="m-r-10">f3cd</code><span>mdi mdi-openid</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-opera"></i><code class="m-r-10">f3ce</code><span>mdi mdi-opera</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-ornament"></i><code class="m-r-10">f3cf</code><span>mdi mdi-ornament</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-ornament-variant"></i><code class="m-r-10">f3d0</code><span>mdi mdi-ornament-variant</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-owl"></i><code class="m-r-10">f3d2</code><span>mdi mdi-owl</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-package"></i><code class="m-r-10">f3d3</code><span>mdi mdi-package</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-package-down"></i><code class="m-r-10">f3d4</code><span>mdi mdi-package-down</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-package-up"></i><code class="m-r-10">f3d5</code><span>mdi mdi-package-up</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-package-variant"></i><code class="m-r-10">f3d6</code><span>mdi mdi-package-variant</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-package-variant-closed"></i><code class="m-r-10">f3d7</code><span>mdi mdi-package-variant-closed</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-page-first"></i><code class="m-r-10">f600</code><span>mdi mdi-page-first</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-page-last"></i><code class="m-r-10">f601</code><span>mdi mdi-page-last</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-page-layout-body"></i><code class="m-r-10">f6f9</code><span>mdi mdi-page-layout-body</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-page-layout-footer"></i><code class="m-r-10">f6fa</code><span>mdi mdi-page-layout-footer</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-page-layout-header"></i><code class="m-r-10">f6fb</code><span>mdi mdi-page-layout-header</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-page-layout-sidebar-left"></i><code class="m-r-10">f6fc</code><span>mdi mdi-page-layout-sidebar-left</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-page-layout-sidebar-right"></i><code class="m-r-10">f6fd</code><span>mdi mdi-page-layout-sidebar-right</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-palette"></i><code class="m-r-10">f3d8</code><span>mdi mdi-palette</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-palette-advanced"></i><code class="m-r-10">f3d9</code><span>mdi mdi-palette-advanced</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-panda"></i><code class="m-r-10">f3da</code><span>mdi mdi-panda</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-pandora"></i><code class="m-r-10">f3db</code><span>mdi mdi-pandora</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-panorama"></i><code class="m-r-10">f3dc</code><span>mdi mdi-panorama</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-panorama-fisheye"></i><code class="m-r-10">f3dd</code><span>mdi mdi-panorama-fisheye</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-panorama-horizontal"></i><code class="m-r-10">f3de</code><span>mdi mdi-panorama-horizontal</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-panorama-vertical"></i><code class="m-r-10">f3df</code><span>mdi mdi-panorama-vertical</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-panorama-wide-angle"></i><code class="m-r-10">f3e0</code><span>mdi mdi-panorama-wide-angle</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-paper-cut-vertical"></i><code class="m-r-10">f3e1</code><span>mdi mdi-paper-cut-vertical</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-paperclip"></i><code class="m-r-10">f3e2</code><span>mdi mdi-paperclip</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-parking"></i><code class="m-r-10">f3e3</code><span>mdi mdi-parking</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-pause"></i><code class="m-r-10">f3e4</code><span>mdi mdi-pause</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-pause-circle"></i><code class="m-r-10">f3e5</code><span>mdi mdi-pause-circle</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-pause-circle-outline"></i><code class="m-r-10">f3e6</code><span>mdi mdi-pause-circle-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-pause-octagon"></i><code class="m-r-10">f3e7</code><span>mdi mdi-pause-octagon</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-pause-octagon-outline"></i><code class="m-r-10">f3e8</code><span>mdi mdi-pause-octagon-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-paw"></i><code class="m-r-10">f3e9</code><span>mdi mdi-paw</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-paw-off"></i><code class="m-r-10">f657</code><span>mdi mdi-paw-off</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-pen"></i><code class="m-r-10">f3ea</code><span>mdi mdi-pen</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-pencil"></i><code class="m-r-10">f3eb</code><span>mdi mdi-pencil</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-pencil-box"></i><code class="m-r-10">f3ec</code><span>mdi mdi-pencil-box</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-pencil-box-outline"></i><code class="m-r-10">f3ed</code><span>mdi mdi-pencil-box-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-pencil-circle"></i><code class="m-r-10">f6fe</code><span>mdi mdi-pencil-circle</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-pencil-lock"></i><code class="m-r-10">f3ee</code><span>mdi mdi-pencil-lock</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-pencil-off"></i><code class="m-r-10">f3ef</code><span>mdi mdi-pencil-off</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-pentagon"></i><code class="m-r-10">f6ff</code><span>mdi mdi-pentagon</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-pentagon-outline"></i><code class="m-r-10">f700</code><span>mdi mdi-pentagon-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-percent"></i><code class="m-r-10">f3f0</code><span>mdi mdi-percent</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-pharmacy"></i><code class="m-r-10">f3f1</code><span>mdi mdi-pharmacy</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-phone"></i><code class="m-r-10">f3f2</code><span>mdi mdi-phone</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-phone-bluetooth"></i><code class="m-r-10">f3f3</code><span>mdi mdi-phone-bluetooth</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-phone-classic"></i><code class="m-r-10">f602</code><span>mdi mdi-phone-classic</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-phone-forward"></i><code class="m-r-10">f3f4</code><span>mdi mdi-phone-forward</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-phone-hangup"></i><code class="m-r-10">f3f5</code><span>mdi mdi-phone-hangup</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-phone-in-talk"></i><code class="m-r-10">f3f6</code><span>mdi mdi-phone-in-talk</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-phone-incoming"></i><code class="m-r-10">f3f7</code><span>mdi mdi-phone-incoming</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-phone-locked"></i><code class="m-r-10">f3f8</code><span>mdi mdi-phone-locked</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-phone-log"></i><code class="m-r-10">f3f9</code><span>mdi mdi-phone-log</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-phone-minus"></i><code class="m-r-10">f658</code><span>mdi mdi-phone-minus</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-phone-missed"></i><code class="m-r-10">f3fa</code><span>mdi mdi-phone-missed</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-phone-outgoing"></i><code class="m-r-10">f3fb</code><span>mdi mdi-phone-outgoing</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-phone-paused"></i><code class="m-r-10">f3fc</code><span>mdi mdi-phone-paused</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-phone-plus"></i><code class="m-r-10">f659</code><span>mdi mdi-phone-plus</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-phone-settings"></i><code class="m-r-10">f3fd</code><span>mdi mdi-phone-settings</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-phone-voip"></i><code class="m-r-10">f3fe</code><span>mdi mdi-phone-voip</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-pi"></i><code class="m-r-10">f3ff</code><span>mdi mdi-pi</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-pi-box"></i><code class="m-r-10">f400</code><span>mdi mdi-pi-box</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-piano"></i><code class="m-r-10">f67c</code><span>mdi mdi-piano</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-pig"></i><code class="m-r-10">f401</code><span>mdi mdi-pig</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-pill"></i><code class="m-r-10">f402</code><span>mdi mdi-pill</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-pillar"></i><code class="m-r-10">f701</code><span>mdi mdi-pillar</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-pin"></i><code class="m-r-10">f403</code><span>mdi mdi-pin</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-pin-off"></i><code class="m-r-10">f404</code><span>mdi mdi-pin-off</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-pine-tree"></i><code class="m-r-10">f405</code><span>mdi mdi-pine-tree</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-pine-tree-box"></i><code class="m-r-10">f406</code><span>mdi mdi-pine-tree-box</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-pinterest"></i><code class="m-r-10">f407</code><span>mdi mdi-pinterest</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-pinterest-box"></i><code class="m-r-10">f408</code><span>mdi mdi-pinterest-box</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-pistol"></i><code class="m-r-10">f702</code><span>mdi mdi-pistol</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-pizza"></i><code class="m-r-10">f409</code><span>mdi mdi-pizza</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-plane-shield"></i><code class="m-r-10">f6ba</code><span>mdi mdi-plane-shield</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-play"></i><code class="m-r-10">f40a</code><span>mdi mdi-play</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-play-box-outline"></i><code class="m-r-10">f40b</code><span>mdi mdi-play-box-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-play-circle"></i><code class="m-r-10">f40c</code><span>mdi mdi-play-circle</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-play-circle-outline"></i><code class="m-r-10">f40d</code><span>mdi mdi-play-circle-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-play-pause"></i><code class="m-r-10">f40e</code><span>mdi mdi-play-pause</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-play-protected-content"></i><code class="m-r-10">f40f</code><span>mdi mdi-play-protected-content</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-playlist-check"></i><code class="m-r-10">f5c7</code><span>mdi mdi-playlist-check</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-playlist-minus"></i><code class="m-r-10">f410</code><span>mdi mdi-playlist-minus</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-playlist-play"></i><code class="m-r-10">f411</code><span>mdi mdi-playlist-play</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-playlist-plus"></i><code class="m-r-10">f412</code><span>mdi mdi-playlist-plus</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-playlist-remove"></i><code class="m-r-10">f413</code><span>mdi mdi-playlist-remove</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-playstation"></i><code class="m-r-10">f414</code><span>mdi mdi-playstation</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-plex"></i><code class="m-r-10">f6b9</code><span>mdi mdi-plex</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-plus"></i><code class="m-r-10">f415</code><span>mdi mdi-plus</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-plus-box"></i><code class="m-r-10">f416</code><span>mdi mdi-plus-box</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-plus-box-outline"></i><code class="m-r-10">f703</code><span>mdi mdi-plus-box-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-plus-circle"></i><code class="m-r-10">f417</code><span>mdi mdi-plus-circle</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-plus-circle-multiple-outline"></i><code class="m-r-10">f418</code><span>mdi mdi-plus-circle-multiple-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-plus-circle-outline"></i><code class="m-r-10">f419</code><span>mdi mdi-plus-circle-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-plus-network"></i><code class="m-r-10">f41a</code><span>mdi mdi-plus-network</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-plus-one"></i><code class="m-r-10">f41b</code><span>mdi mdi-plus-one</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-plus-outline"></i><code class="m-r-10">f704</code><span>mdi mdi-plus-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-pocket"></i><code class="m-r-10">f41c</code><span>mdi mdi-pocket</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-pokeball"></i><code class="m-r-10">f41d</code><span>mdi mdi-pokeball</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-polaroid"></i><code class="m-r-10">f41e</code><span>mdi mdi-polaroid</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-poll"></i><code class="m-r-10">f41f</code><span>mdi mdi-poll</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-poll-box"></i><code class="m-r-10">f420</code><span>mdi mdi-poll-box</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-polymer"></i><code class="m-r-10">f421</code><span>mdi mdi-polymer</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-pool"></i><code class="m-r-10">f606</code><span>mdi mdi-pool</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-popcorn"></i><code class="m-r-10">f422</code><span>mdi mdi-popcorn</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-pot"></i><code class="m-r-10">f65a</code><span>mdi mdi-pot</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-pot-mix"></i><code class="m-r-10">f65b</code><span>mdi mdi-pot-mix</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-pound"></i><code class="m-r-10">f423</code><span>mdi mdi-pound</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-pound-box"></i><code class="m-r-10">f424</code><span>mdi mdi-pound-box</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-power"></i><code class="m-r-10">f425</code><span>mdi mdi-power</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-power-plug"></i><code class="m-r-10">f6a4</code><span>mdi mdi-power-plug</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-power-plug-off"></i><code class="m-r-10">f6a5</code><span>mdi mdi-power-plug-off</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-power-settings"></i><code class="m-r-10">f426</code><span>mdi mdi-power-settings</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-power-socket"></i><code class="m-r-10">f427</code><span>mdi mdi-power-socket</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-prescription"></i><code class="m-r-10">f705</code><span>mdi mdi-prescription</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-presentation"></i><code class="m-r-10">f428</code><span>mdi mdi-presentation</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-presentation-play"></i><code class="m-r-10">f429</code><span>mdi mdi-presentation-play</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-printer"></i><code class="m-r-10">f42a</code><span>mdi mdi-printer</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-printer-3d"></i><code class="m-r-10">f42b</code><span>mdi mdi-printer-3d</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-printer-alert"></i><code class="m-r-10">f42c</code><span>mdi mdi-printer-alert</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-printer-settings"></i><code class="m-r-10">f706</code><span>mdi mdi-printer-settings</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-priority-high"></i><code class="m-r-10">f603</code><span>mdi mdi-priority-high</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-priority-low"></i><code class="m-r-10">f604</code><span>mdi mdi-priority-low</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-professional-hexagon"></i><code class="m-r-10">f42d</code><span>mdi mdi-professional-hexagon</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-projector"></i><code class="m-r-10">f42e</code><span>mdi mdi-projector</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-projector-screen"></i><code class="m-r-10">f42f</code><span>mdi mdi-projector-screen</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-publish"></i><code class="m-r-10">f6a6</code><span>mdi mdi-publish</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-pulse"></i><code class="m-r-10">f430</code><span>mdi mdi-pulse</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-puzzle"></i><code class="m-r-10">f431</code><span>mdi mdi-puzzle</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-qqchat"></i><code class="m-r-10">f605</code><span>mdi mdi-qqchat</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-qrcode"></i><code class="m-r-10">f432</code><span>mdi mdi-qrcode</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-qrcode-scan"></i><code class="m-r-10">f433</code><span>mdi mdi-qrcode-scan</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-quadcopter"></i><code class="m-r-10">f434</code><span>mdi mdi-quadcopter</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-quality-high"></i><code class="m-r-10">f435</code><span>mdi mdi-quality-high</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-quicktime"></i><code class="m-r-10">f436</code><span>mdi mdi-quicktime</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-radar"></i><code class="m-r-10">f437</code><span>mdi mdi-radar</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-radiator"></i><code class="m-r-10">f438</code><span>mdi mdi-radiator</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-radio"></i><code class="m-r-10">f439</code><span>mdi mdi-radio</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-radio-handheld"></i><code class="m-r-10">f43a</code><span>mdi mdi-radio-handheld</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-radio-tower"></i><code class="m-r-10">f43b</code><span>mdi mdi-radio-tower</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-radioactive"></i><code class="m-r-10">f43c</code><span>mdi mdi-radioactive</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-radiobox-blank"></i><code class="m-r-10">f43d</code><span>mdi mdi-radiobox-blank</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-radiobox-marked"></i><code class="m-r-10">f43e</code><span>mdi mdi-radiobox-marked</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-raspberrypi"></i><code class="m-r-10">f43f</code><span>mdi mdi-raspberrypi</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-ray-end"></i><code class="m-r-10">f440</code><span>mdi mdi-ray-end</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-ray-end-arrow"></i><code class="m-r-10">f441</code><span>mdi mdi-ray-end-arrow</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-ray-start"></i><code class="m-r-10">f442</code><span>mdi mdi-ray-start</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-ray-start-arrow"></i><code class="m-r-10">f443</code><span>mdi mdi-ray-start-arrow</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-ray-start-end"></i><code class="m-r-10">f444</code><span>mdi mdi-ray-start-end</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-ray-vertex"></i><code class="m-r-10">f445</code><span>mdi mdi-ray-vertex</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-rdio"></i><code class="m-r-10">f446</code><span>mdi mdi-rdio</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-react"></i><code class="m-r-10">f707</code><span>mdi mdi-react</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-read"></i><code class="m-r-10">f447</code><span>mdi mdi-read</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-readability"></i><code class="m-r-10">f448</code><span>mdi mdi-readability</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-receipt"></i><code class="m-r-10">f449</code><span>mdi mdi-receipt</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-record"></i><code class="m-r-10">f44a</code><span>mdi mdi-record</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-record-rec"></i><code class="m-r-10">f44b</code><span>mdi mdi-record-rec</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-recycle"></i><code class="m-r-10">f44c</code><span>mdi mdi-recycle</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-reddit"></i><code class="m-r-10">f44d</code><span>mdi mdi-reddit</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-redo"></i><code class="m-r-10">f44e</code><span>mdi mdi-redo</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-redo-variant"></i><code class="m-r-10">f44f</code><span>mdi mdi-redo-variant</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-refresh"></i><code class="m-r-10">f450</code><span>mdi mdi-refresh</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-regex"></i><code class="m-r-10">f451</code><span>mdi mdi-regex</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-relative-scale"></i><code class="m-r-10">f452</code><span>mdi mdi-relative-scale</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-reload"></i><code class="m-r-10">f453</code><span>mdi mdi-reload</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-remote"></i><code class="m-r-10">f454</code><span>mdi mdi-remote</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-rename-box"></i><code class="m-r-10">f455</code><span>mdi mdi-rename-box</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-reorder-horizontal"></i><code class="m-r-10">f687</code><span>mdi mdi-reorder-horizontal</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-reorder-vertical"></i><code class="m-r-10">f688</code><span>mdi mdi-reorder-vertical</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-repeat"></i><code class="m-r-10">f456</code><span>mdi mdi-repeat</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-repeat-off"></i><code class="m-r-10">f457</code><span>mdi mdi-repeat-off</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-repeat-once"></i><code class="m-r-10">f458</code><span>mdi mdi-repeat-once</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-replay"></i><code class="m-r-10">f459</code><span>mdi mdi-replay</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-reply"></i><code class="m-r-10">f45a</code><span>mdi mdi-reply</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-reply-all"></i><code class="m-r-10">f45b</code><span>mdi mdi-reply-all</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-reproduction"></i><code class="m-r-10">f45c</code><span>mdi mdi-reproduction</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-resize-bottom-right"></i><code class="m-r-10">f45d</code><span>mdi mdi-resize-bottom-right</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-responsive"></i><code class="m-r-10">f45e</code><span>mdi mdi-responsive</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-restart"></i><code class="m-r-10">f708</code><span>mdi mdi-restart</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-restore"></i><code class="m-r-10">f6a7</code><span>mdi mdi-restore</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-rewind"></i><code class="m-r-10">f45f</code><span>mdi mdi-rewind</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-rewind-outline"></i><code class="m-r-10">f709</code><span>mdi mdi-rewind-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-rhombus"></i><code class="m-r-10">f70a</code><span>mdi mdi-rhombus</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-rhombus-outline"></i><code class="m-r-10">f70b</code><span>mdi mdi-rhombus-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-ribbon"></i><code class="m-r-10">f460</code><span>mdi mdi-ribbon</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-road"></i><code class="m-r-10">f461</code><span>mdi mdi-road</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-road-variant"></i><code class="m-r-10">f462</code><span>mdi mdi-road-variant</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-robot"></i><code class="m-r-10">f6a8</code><span>mdi mdi-robot</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-rocket"></i><code class="m-r-10">f463</code><span>mdi mdi-rocket</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-roomba"></i><code class="m-r-10">f70c</code><span>mdi mdi-roomba</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-rotate-3d"></i><code class="m-r-10">f464</code><span>mdi mdi-rotate-3d</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-rotate-left"></i><code class="m-r-10">f465</code><span>mdi mdi-rotate-left</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-rotate-left-variant"></i><code class="m-r-10">f466</code><span>mdi mdi-rotate-left-variant</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-rotate-right"></i><code class="m-r-10">f467</code><span>mdi mdi-rotate-right</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-rotate-right-variant"></i><code class="m-r-10">f468</code><span>mdi mdi-rotate-right-variant</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-rounded-corner"></i><code class="m-r-10">f607</code><span>mdi mdi-rounded-corner</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-router-wireless"></i><code class="m-r-10">f469</code><span>mdi mdi-router-wireless</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-routes"></i><code class="m-r-10">f46a</code><span>mdi mdi-routes</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-rowing"></i><code class="m-r-10">f608</code><span>mdi mdi-rowing</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-rss"></i><code class="m-r-10">f46b</code><span>mdi mdi-rss</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-rss-box"></i><code class="m-r-10">f46c</code><span>mdi mdi-rss-box</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-ruler"></i><code class="m-r-10">f46d</code><span>mdi mdi-ruler</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-run"></i><code class="m-r-10">f70d</code><span>mdi mdi-run</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-run-fast"></i><code class="m-r-10">f46e</code><span>mdi mdi-run-fast</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-sale"></i><code class="m-r-10">f46f</code><span>mdi mdi-sale</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-satellite"></i><code class="m-r-10">f470</code><span>mdi mdi-satellite</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-satellite-variant"></i><code class="m-r-10">f471</code><span>mdi mdi-satellite-variant</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-saxophone"></i><code class="m-r-10">f609</code><span>mdi mdi-saxophone</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-scale"></i><code class="m-r-10">f472</code><span>mdi mdi-scale</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-scale-balance"></i><code class="m-r-10">f5d1</code><span>mdi mdi-scale-balance</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-scale-bathroom"></i><code class="m-r-10">f473</code><span>mdi mdi-scale-bathroom</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-scanner"></i><code class="m-r-10">f6aa</code><span>mdi mdi-scanner</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-school"></i><code class="m-r-10">f474</code><span>mdi mdi-school</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-screen-rotation"></i><code class="m-r-10">f475</code><span>mdi mdi-screen-rotation</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-screen-rotation-lock"></i><code class="m-r-10">f476</code><span>mdi mdi-screen-rotation-lock</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-screwdriver"></i><code class="m-r-10">f477</code><span>mdi mdi-screwdriver</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-script"></i><code class="m-r-10">f478</code><span>mdi mdi-script</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-sd"></i><code class="m-r-10">f479</code><span>mdi mdi-sd</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-seal"></i><code class="m-r-10">f47a</code><span>mdi mdi-seal</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-search-web"></i><code class="m-r-10">f70e</code><span>mdi mdi-search-web</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-seat-flat"></i><code class="m-r-10">f47b</code><span>mdi mdi-seat-flat</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-seat-flat-angled"></i><code class="m-r-10">f47c</code><span>mdi mdi-seat-flat-angled</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-seat-individual-suite"></i><code class="m-r-10">f47d</code><span>mdi mdi-seat-individual-suite</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-seat-legroom-extra"></i><code class="m-r-10">f47e</code><span>mdi mdi-seat-legroom-extra</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-seat-legroom-normal"></i><code class="m-r-10">f47f</code><span>mdi mdi-seat-legroom-normal</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-seat-legroom-reduced"></i><code class="m-r-10">f480</code><span>mdi mdi-seat-legroom-reduced</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-seat-recline-extra"></i><code class="m-r-10">f481</code><span>mdi mdi-seat-recline-extra</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-seat-recline-normal"></i><code class="m-r-10">f482</code><span>mdi mdi-seat-recline-normal</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-security"></i><code class="m-r-10">f483</code><span>mdi mdi-security</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-security-home"></i><code class="m-r-10">f689</code><span>mdi mdi-security-home</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-security-network"></i><code class="m-r-10">f484</code><span>mdi mdi-security-network</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-select"></i><code class="m-r-10">f485</code><span>mdi mdi-select</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-select-all"></i><code class="m-r-10">f486</code><span>mdi mdi-select-all</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-select-inverse"></i><code class="m-r-10">f487</code><span>mdi mdi-select-inverse</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-select-off"></i><code class="m-r-10">f488</code><span>mdi mdi-select-off</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-selection"></i><code class="m-r-10">f489</code><span>mdi mdi-selection</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-send"></i><code class="m-r-10">f48a</code><span>mdi mdi-send</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-serial-port"></i><code class="m-r-10">f65c</code><span>mdi mdi-serial-port</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-server"></i><code class="m-r-10">f48b</code><span>mdi mdi-server</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-server-minus"></i><code class="m-r-10">f48c</code><span>mdi mdi-server-minus</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-server-network"></i><code class="m-r-10">f48d</code><span>mdi mdi-server-network</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-server-network-off"></i><code class="m-r-10">f48e</code><span>mdi mdi-server-network-off</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-server-off"></i><code class="m-r-10">f48f</code><span>mdi mdi-server-off</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-server-plus"></i><code class="m-r-10">f490</code><span>mdi mdi-server-plus</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-server-remove"></i><code class="m-r-10">f491</code><span>mdi mdi-server-remove</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-server-security"></i><code class="m-r-10">f492</code><span>mdi mdi-server-security</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-settings"></i><code class="m-r-10">f493</code><span>mdi mdi-settings</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-settings-box"></i><code class="m-r-10">f494</code><span>mdi mdi-settings-box</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-shape-circle-plus"></i><code class="m-r-10">f65d</code><span>mdi mdi-shape-circle-plus</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-shape-plus"></i><code class="m-r-10">f495</code><span>mdi mdi-shape-plus</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-shape-polygon-plus"></i><code class="m-r-10">f65e</code><span>mdi mdi-shape-polygon-plus</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-shape-rectangle-plus"></i><code class="m-r-10">f65f</code><span>mdi mdi-shape-rectangle-plus</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-shape-square-plus"></i><code class="m-r-10">f660</code><span>mdi mdi-shape-square-plus</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-share"></i><code class="m-r-10">f496</code><span>mdi mdi-share</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-share-variant"></i><code class="m-r-10">f497</code><span>mdi mdi-share-variant</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-shield"></i><code class="m-r-10">f498</code><span>mdi mdi-shield</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-shield-outline"></i><code class="m-r-10">f499</code><span>mdi mdi-shield-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-shopping"></i><code class="m-r-10">f49a</code><span>mdi mdi-shopping</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-shopping-music"></i><code class="m-r-10">f49b</code><span>mdi mdi-shopping-music</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-shovel"></i><code class="m-r-10">f70f</code><span>mdi mdi-shovel</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-shovel-off"></i><code class="m-r-10">f710</code><span>mdi mdi-shovel-off</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-shredder"></i><code class="m-r-10">f49c</code><span>mdi mdi-shredder</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-shuffle"></i><code class="m-r-10">f49d</code><span>mdi mdi-shuffle</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-shuffle-disabled"></i><code class="m-r-10">f49e</code><span>mdi mdi-shuffle-disabled</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-shuffle-variant"></i><code class="m-r-10">f49f</code><span>mdi mdi-shuffle-variant</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-sigma"></i><code class="m-r-10">f4a0</code><span>mdi mdi-sigma</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-sigma-lower"></i><code class="m-r-10">f62b</code><span>mdi mdi-sigma-lower</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-sign-caution"></i><code class="m-r-10">f4a1</code><span>mdi mdi-sign-caution</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-signal"></i><code class="m-r-10">f4a2</code><span>mdi mdi-signal</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-signal-2g"></i><code class="m-r-10">f711</code><span>mdi mdi-signal-2g</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-signal-3g"></i><code class="m-r-10">f712</code><span>mdi mdi-signal-3g</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-signal-4g"></i><code class="m-r-10">f713</code><span>mdi mdi-signal-4g</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-signal-hspa"></i><code class="m-r-10">f714</code><span>mdi mdi-signal-hspa</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-signal-hspa-plus"></i><code class="m-r-10">f715</code><span>mdi mdi-signal-hspa-plus</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-signal-variant"></i><code class="m-r-10">f60a</code><span>mdi mdi-signal-variant</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-silverware"></i><code class="m-r-10">f4a3</code><span>mdi mdi-silverware</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-silverware-fork"></i><code class="m-r-10">f4a4</code><span>mdi mdi-silverware-fork</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-silverware-spoon"></i><code class="m-r-10">f4a5</code><span>mdi mdi-silverware-spoon</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-silverware-variant"></i><code class="m-r-10">f4a6</code><span>mdi mdi-silverware-variant</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-sim"></i><code class="m-r-10">f4a7</code><span>mdi mdi-sim</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-sim-alert"></i><code class="m-r-10">f4a8</code><span>mdi mdi-sim-alert</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-sim-off"></i><code class="m-r-10">f4a9</code><span>mdi mdi-sim-off</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-sitemap"></i><code class="m-r-10">f4aa</code><span>mdi mdi-sitemap</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-skip-backward"></i><code class="m-r-10">f4ab</code><span>mdi mdi-skip-backward</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-skip-forward"></i><code class="m-r-10">f4ac</code><span>mdi mdi-skip-forward</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-skip-next"></i><code class="m-r-10">f4ad</code><span>mdi mdi-skip-next</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-skip-next-circle"></i><code class="m-r-10">f661</code><span>mdi mdi-skip-next-circle</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-skip-next-circle-outline"></i><code class="m-r-10">f662</code><span>mdi mdi-skip-next-circle-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-skip-previous"></i><code class="m-r-10">f4ae</code><span>mdi mdi-skip-previous</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-skip-previous-circle"></i><code class="m-r-10">f663</code><span>mdi mdi-skip-previous-circle</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-skip-previous-circle-outline"></i><code class="m-r-10">f664</code><span>mdi mdi-skip-previous-circle-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-skull"></i><code class="m-r-10">f68b</code><span>mdi mdi-skull</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-skype"></i><code class="m-r-10">f4af</code><span>mdi mdi-skype</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-skype-business"></i><code class="m-r-10">f4b0</code><span>mdi mdi-skype-business</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-slack"></i><code class="m-r-10">f4b1</code><span>mdi mdi-slack</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-sleep"></i><code class="m-r-10">f4b2</code><span>mdi mdi-sleep</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-sleep-off"></i><code class="m-r-10">f4b3</code><span>mdi mdi-sleep-off</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-smoking"></i><code class="m-r-10">f4b4</code><span>mdi mdi-smoking</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-smoking-off"></i><code class="m-r-10">f4b5</code><span>mdi mdi-smoking-off</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-snapchat"></i><code class="m-r-10">f4b6</code><span>mdi mdi-snapchat</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-snowflake"></i><code class="m-r-10">f716</code><span>mdi mdi-snowflake</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-snowman"></i><code class="m-r-10">f4b7</code><span>mdi mdi-snowman</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-soccer"></i><code class="m-r-10">f4b8</code><span>mdi mdi-soccer</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-sofa"></i><code class="m-r-10">f4b9</code><span>mdi mdi-sofa</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-solid"></i><code class="m-r-10">f68c</code><span>mdi mdi-solid</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-sort"></i><code class="m-r-10">f4ba</code><span>mdi mdi-sort</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-sort-alphabetical"></i><code class="m-r-10">f4bb</code><span>mdi mdi-sort-alphabetical</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-sort-ascending"></i><code class="m-r-10">f4bc</code><span>mdi mdi-sort-ascending</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-sort-descending"></i><code class="m-r-10">f4bd</code><span>mdi mdi-sort-descending</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-sort-numeric"></i><code class="m-r-10">f4be</code><span>mdi mdi-sort-numeric</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-sort-variant"></i><code class="m-r-10">f4bf</code><span>mdi mdi-sort-variant</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-soundcloud"></i><code class="m-r-10">f4c0</code><span>mdi mdi-soundcloud</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-source-branch"></i><code class="m-r-10">f62c</code><span>mdi mdi-source-branch</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-source-commit"></i><code class="m-r-10">f717</code><span>mdi mdi-source-commit</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-source-commit-end"></i><code class="m-r-10">f718</code><span>mdi mdi-source-commit-end</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-source-commit-end-local"></i><code class="m-r-10">f719</code><span>mdi mdi-source-commit-end-local</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-source-commit-local"></i><code class="m-r-10">f71a</code><span>mdi mdi-source-commit-local</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-source-commit-next-local"></i><code class="m-r-10">f71b</code><span>mdi mdi-source-commit-next-local</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-source-commit-start"></i><code class="m-r-10">f71c</code><span>mdi mdi-source-commit-start</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-source-commit-start-next-local"></i><code class="m-r-10">f71d</code><span>mdi mdi-source-commit-start-next-local</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-source-fork"></i><code class="m-r-10">f4c1</code><span>mdi mdi-source-fork</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-source-merge"></i><code class="m-r-10">f62d</code><span>mdi mdi-source-merge</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-source-pull"></i><code class="m-r-10">f4c2</code><span>mdi mdi-source-pull</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-speaker"></i><code class="m-r-10">f4c3</code><span>mdi mdi-speaker</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-speaker-off"></i><code class="m-r-10">f4c4</code><span>mdi mdi-speaker-off</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-speaker-wireless"></i><code class="m-r-10">f71e</code><span>mdi mdi-speaker-wireless</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-speedometer"></i><code class="m-r-10">f4c5</code><span>mdi mdi-speedometer</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-spellcheck"></i><code class="m-r-10">f4c6</code><span>mdi mdi-spellcheck</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-spotify"></i><code class="m-r-10">f4c7</code><span>mdi mdi-spotify</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-spotlight"></i><code class="m-r-10">f4c8</code><span>mdi mdi-spotlight</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-spotlight-beam"></i><code class="m-r-10">f4c9</code><span>mdi mdi-spotlight-beam</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-spray"></i><code class="m-r-10">f665</code><span>mdi mdi-spray</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-square-inc"></i><code class="m-r-10">f4ca</code><span>mdi mdi-square-inc</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-square-inc-cash"></i><code class="m-r-10">f4cb</code><span>mdi mdi-square-inc-cash</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-stackexchange"></i><code class="m-r-10">f60b</code><span>mdi mdi-stackexchange</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-stackoverflow"></i><code class="m-r-10">f4cc</code><span>mdi mdi-stackoverflow</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-stadium"></i><code class="m-r-10">f71f</code><span>mdi mdi-stadium</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-stairs"></i><code class="m-r-10">f4cd</code><span>mdi mdi-stairs</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-star"></i><code class="m-r-10">f4ce</code><span>mdi mdi-star</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-star-circle"></i><code class="m-r-10">f4cf</code><span>mdi mdi-star-circle</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-star-half"></i><code class="m-r-10">f4d0</code><span>mdi mdi-star-half</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-star-off"></i><code class="m-r-10">f4d1</code><span>mdi mdi-star-off</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-star-outline"></i><code class="m-r-10">f4d2</code><span>mdi mdi-star-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-steam"></i><code class="m-r-10">f4d3</code><span>mdi mdi-steam</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-steering"></i><code class="m-r-10">f4d4</code><span>mdi mdi-steering</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-step-backward"></i><code class="m-r-10">f4d5</code><span>mdi mdi-step-backward</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-step-backward-2"></i><code class="m-r-10">f4d6</code><span>mdi mdi-step-backward-2</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-step-forward"></i><code class="m-r-10">f4d7</code><span>mdi mdi-step-forward</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-step-forward-2"></i><code class="m-r-10">f4d8</code><span>mdi mdi-step-forward-2</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-stethoscope"></i><code class="m-r-10">f4d9</code><span>mdi mdi-stethoscope</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-sticker"></i><code class="m-r-10">f5d0</code><span>mdi mdi-sticker</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-stocking"></i><code class="m-r-10">f4da</code><span>mdi mdi-stocking</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-stop"></i><code class="m-r-10">f4db</code><span>mdi mdi-stop</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-stop-circle"></i><code class="m-r-10">f666</code><span>mdi mdi-stop-circle</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-stop-circle-outline"></i><code class="m-r-10">f667</code><span>mdi mdi-stop-circle-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-store"></i><code class="m-r-10">f4dc</code><span>mdi mdi-store</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-store-24-hour"></i><code class="m-r-10">f4dd</code><span>mdi mdi-store-24-hour</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-stove"></i><code class="m-r-10">f4de</code><span>mdi mdi-stove</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-subdirectory-arrow-left"></i><code class="m-r-10">f60c</code><span>mdi mdi-subdirectory-arrow-left</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-subdirectory-arrow-right"></i><code class="m-r-10">f60d</code><span>mdi mdi-subdirectory-arrow-right</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-subway"></i><code class="m-r-10">f6ab</code><span>mdi mdi-subway</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-subway-variant"></i><code class="m-r-10">f4df</code><span>mdi mdi-subway-variant</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-sunglasses"></i><code class="m-r-10">f4e0</code><span>mdi mdi-sunglasses</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-surround-sound"></i><code class="m-r-10">f5c5</code><span>mdi mdi-surround-sound</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-svg"></i><code class="m-r-10">f720</code><span>mdi mdi-svg</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-swap-horizontal"></i><code class="m-r-10">f4e1</code><span>mdi mdi-swap-horizontal</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-swap-vertical"></i><code class="m-r-10">f4e2</code><span>mdi mdi-swap-vertical</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-swim"></i><code class="m-r-10">f4e3</code><span>mdi mdi-swim</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-switch"></i><code class="m-r-10">f4e4</code><span>mdi mdi-switch</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-sword"></i><code class="m-r-10">f4e5</code><span>mdi mdi-sword</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-sync"></i><code class="m-r-10">f4e6</code><span>mdi mdi-sync</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-sync-alert"></i><code class="m-r-10">f4e7</code><span>mdi mdi-sync-alert</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-sync-off"></i><code class="m-r-10">f4e8</code><span>mdi mdi-sync-off</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-tab"></i><code class="m-r-10">f4e9</code><span>mdi mdi-tab</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-tab-unselected"></i><code class="m-r-10">f4ea</code><span>mdi mdi-tab-unselected</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-table"></i><code class="m-r-10">f4eb</code><span>mdi mdi-table</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-table-column-plus-after"></i><code class="m-r-10">f4ec</code><span>mdi mdi-table-column-plus-after</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-table-column-plus-before"></i><code class="m-r-10">f4ed</code><span>mdi mdi-table-column-plus-before</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-table-column-remove"></i><code class="m-r-10">f4ee</code><span>mdi mdi-table-column-remove</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-table-column-width"></i><code class="m-r-10">f4ef</code><span>mdi mdi-table-column-width</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-table-edit"></i><code class="m-r-10">f4f0</code><span>mdi mdi-table-edit</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-table-large"></i><code class="m-r-10">f4f1</code><span>mdi mdi-table-large</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-table-row-height"></i><code class="m-r-10">f4f2</code><span>mdi mdi-table-row-height</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-table-row-plus-after"></i><code class="m-r-10">f4f3</code><span>mdi mdi-table-row-plus-after</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-table-row-plus-before"></i><code class="m-r-10">f4f4</code><span>mdi mdi-table-row-plus-before</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-table-row-remove"></i><code class="m-r-10">f4f5</code><span>mdi mdi-table-row-remove</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-tablet"></i><code class="m-r-10">f4f6</code><span>mdi mdi-tablet</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-tablet-android"></i><code class="m-r-10">f4f7</code><span>mdi mdi-tablet-android</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-tablet-ipad"></i><code class="m-r-10">f4f8</code><span>mdi mdi-tablet-ipad</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-tag"></i><code class="m-r-10">f4f9</code><span>mdi mdi-tag</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-tag-faces"></i><code class="m-r-10">f4fa</code><span>mdi mdi-tag-faces</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-tag-heart"></i><code class="m-r-10">f68a</code><span>mdi mdi-tag-heart</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-tag-multiple"></i><code class="m-r-10">f4fb</code><span>mdi mdi-tag-multiple</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-tag-outline"></i><code class="m-r-10">f4fc</code><span>mdi mdi-tag-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-tag-plus"></i><code class="m-r-10">f721</code><span>mdi mdi-tag-plus</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-tag-remove"></i><code class="m-r-10">f722</code><span>mdi mdi-tag-remove</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-tag-text-outline"></i><code class="m-r-10">f4fd</code><span>mdi mdi-tag-text-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-target"></i><code class="m-r-10">f4fe</code><span>mdi mdi-target</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-taxi"></i><code class="m-r-10">f4ff</code><span>mdi mdi-taxi</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-teamviewer"></i><code class="m-r-10">f500</code><span>mdi mdi-teamviewer</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-telegram"></i><code class="m-r-10">f501</code><span>mdi mdi-telegram</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-television"></i><code class="m-r-10">f502</code><span>mdi mdi-television</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-television-guide"></i><code class="m-r-10">f503</code><span>mdi mdi-television-guide</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-temperature-celsius"></i><code class="m-r-10">f504</code><span>mdi mdi-temperature-celsius</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-temperature-fahrenheit"></i><code class="m-r-10">f505</code><span>mdi mdi-temperature-fahrenheit</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-temperature-kelvin"></i><code class="m-r-10">f506</code><span>mdi mdi-temperature-kelvin</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-tennis"></i><code class="m-r-10">f507</code><span>mdi mdi-tennis</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-tent"></i><code class="m-r-10">f508</code><span>mdi mdi-tent</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-terrain"></i><code class="m-r-10">f509</code><span>mdi mdi-terrain</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-test-tube"></i><code class="m-r-10">f668</code><span>mdi mdi-test-tube</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-text-shadow"></i><code class="m-r-10">f669</code><span>mdi mdi-text-shadow</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-text-to-speech"></i><code class="m-r-10">f50a</code><span>mdi mdi-text-to-speech</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-text-to-speech-off"></i><code class="m-r-10">f50b</code><span>mdi mdi-text-to-speech-off</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-textbox"></i><code class="m-r-10">f60e</code><span>mdi mdi-textbox</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-texture"></i><code class="m-r-10">f50c</code><span>mdi mdi-texture</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-theater"></i><code class="m-r-10">f50d</code><span>mdi mdi-theater</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-theme-light-dark"></i><code class="m-r-10">f50e</code><span>mdi mdi-theme-light-dark</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-thermometer"></i><code class="m-r-10">f50f</code><span>mdi mdi-thermometer</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-thermometer-lines"></i><code class="m-r-10">f510</code><span>mdi mdi-thermometer-lines</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-thumb-down"></i><code class="m-r-10">f511</code><span>mdi mdi-thumb-down</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-thumb-down-outline"></i><code class="m-r-10">f512</code><span>mdi mdi-thumb-down-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-thumb-up"></i><code class="m-r-10">f513</code><span>mdi mdi-thumb-up</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-thumb-up-outline"></i><code class="m-r-10">f514</code><span>mdi mdi-thumb-up-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-thumbs-up-down"></i><code class="m-r-10">f515</code><span>mdi mdi-thumbs-up-down</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-ticket"></i><code class="m-r-10">f516</code><span>mdi mdi-ticket</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-ticket-account"></i><code class="m-r-10">f517</code><span>mdi mdi-ticket-account</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-ticket-confirmation"></i><code class="m-r-10">f518</code><span>mdi mdi-ticket-confirmation</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-ticket-percent"></i><code class="m-r-10">f723</code><span>mdi mdi-ticket-percent</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-tie"></i><code class="m-r-10">f519</code><span>mdi mdi-tie</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-tilde"></i><code class="m-r-10">f724</code><span>mdi mdi-tilde</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-timelapse"></i><code class="m-r-10">f51a</code><span>mdi mdi-timelapse</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-timer"></i><code class="m-r-10">f51b</code><span>mdi mdi-timer</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-timer-10"></i><code class="m-r-10">f51c</code><span>mdi mdi-timer-10</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-timer-3"></i><code class="m-r-10">f51d</code><span>mdi mdi-timer-3</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-timer-off"></i><code class="m-r-10">f51e</code><span>mdi mdi-timer-off</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-timer-sand"></i><code class="m-r-10">f51f</code><span>mdi mdi-timer-sand</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-timer-sand-empty"></i><code class="m-r-10">f6ac</code><span>mdi mdi-timer-sand-empty</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-timetable"></i><code class="m-r-10">f520</code><span>mdi mdi-timetable</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-toggle-switch"></i><code class="m-r-10">f521</code><span>mdi mdi-toggle-switch</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-toggle-switch-off"></i><code class="m-r-10">f522</code><span>mdi mdi-toggle-switch-off</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-tooltip"></i><code class="m-r-10">f523</code><span>mdi mdi-tooltip</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-tooltip-edit"></i><code class="m-r-10">f524</code><span>mdi mdi-tooltip-edit</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-tooltip-image"></i><code class="m-r-10">f525</code><span>mdi mdi-tooltip-image</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-tooltip-outline"></i><code class="m-r-10">f526</code><span>mdi mdi-tooltip-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-tooltip-outline-plus"></i><code class="m-r-10">f527</code><span>mdi mdi-tooltip-outline-plus</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-tooltip-text"></i><code class="m-r-10">f528</code><span>mdi mdi-tooltip-text</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-tooth"></i><code class="m-r-10">f529</code><span>mdi mdi-tooth</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-tor"></i><code class="m-r-10">f52a</code><span>mdi mdi-tor</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-tower-beach"></i><code class="m-r-10">f680</code><span>mdi mdi-tower-beach</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-tower-fire"></i><code class="m-r-10">f681</code><span>mdi mdi-tower-fire</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-traffic-light"></i><code class="m-r-10">f52b</code><span>mdi mdi-traffic-light</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-train"></i><code class="m-r-10">f52c</code><span>mdi mdi-train</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-tram"></i><code class="m-r-10">f52d</code><span>mdi mdi-tram</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-transcribe"></i><code class="m-r-10">f52e</code><span>mdi mdi-transcribe</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-transcribe-close"></i><code class="m-r-10">f52f</code><span>mdi mdi-transcribe-close</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-transfer"></i><code class="m-r-10">f530</code><span>mdi mdi-transfer</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-transit-transfer"></i><code class="m-r-10">f6ad</code><span>mdi mdi-transit-transfer</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-translate"></i><code class="m-r-10">f5ca</code><span>mdi mdi-translate</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-treasure-chest"></i><code class="m-r-10">f725</code><span>mdi mdi-treasure-chest</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-tree"></i><code class="m-r-10">f531</code><span>mdi mdi-tree</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-trello"></i><code class="m-r-10">f532</code><span>mdi mdi-trello</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-trending-down"></i><code class="m-r-10">f533</code><span>mdi mdi-trending-down</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-trending-neutral"></i><code class="m-r-10">f534</code><span>mdi mdi-trending-neutral</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-trending-up"></i><code class="m-r-10">f535</code><span>mdi mdi-trending-up</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-triangle"></i><code class="m-r-10">f536</code><span>mdi mdi-triangle</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-triangle-outline"></i><code class="m-r-10">f537</code><span>mdi mdi-triangle-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-trophy"></i><code class="m-r-10">f538</code><span>mdi mdi-trophy</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-trophy-award"></i><code class="m-r-10">f539</code><span>mdi mdi-trophy-award</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-trophy-outline"></i><code class="m-r-10">f53a</code><span>mdi mdi-trophy-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-trophy-variant"></i><code class="m-r-10">f53b</code><span>mdi mdi-trophy-variant</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-trophy-variant-outline"></i><code class="m-r-10">f53c</code><span>mdi mdi-trophy-variant-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-truck"></i><code class="m-r-10">f53d</code><span>mdi mdi-truck</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-truck-delivery"></i><code class="m-r-10">f53e</code><span>mdi mdi-truck-delivery</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-truck-trailer"></i><code class="m-r-10">f726</code><span>mdi mdi-truck-trailer</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-tshirt-crew"></i><code class="m-r-10">f53f</code><span>mdi mdi-tshirt-crew</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-tshirt-v"></i><code class="m-r-10">f540</code><span>mdi mdi-tshirt-v</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-tumblr"></i><code class="m-r-10">f541</code><span>mdi mdi-tumblr</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-tumblr-reblog"></i><code class="m-r-10">f542</code><span>mdi mdi-tumblr-reblog</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-tune"></i><code class="m-r-10">f62e</code><span>mdi mdi-tune</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-tune-vertical"></i><code class="m-r-10">f66a</code><span>mdi mdi-tune-vertical</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-twitch"></i><code class="m-r-10">f543</code><span>mdi mdi-twitch</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-twitter"></i><code class="m-r-10">f544</code><span>mdi mdi-twitter</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-twitter-box"></i><code class="m-r-10">f545</code><span>mdi mdi-twitter-box</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-twitter-circle"></i><code class="m-r-10">f546</code><span>mdi mdi-twitter-circle</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-twitter-retweet"></i><code class="m-r-10">f547</code><span>mdi mdi-twitter-retweet</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-ubuntu"></i><code class="m-r-10">f548</code><span>mdi mdi-ubuntu</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-umbraco"></i><code class="m-r-10">f549</code><span>mdi mdi-umbraco</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-umbrella"></i><code class="m-r-10">f54a</code><span>mdi mdi-umbrella</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-umbrella-outline"></i><code class="m-r-10">f54b</code><span>mdi mdi-umbrella-outline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-undo"></i><code class="m-r-10">f54c</code><span>mdi mdi-undo</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-undo-variant"></i><code class="m-r-10">f54d</code><span>mdi mdi-undo-variant</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-unfold-less"></i><code class="m-r-10">f54e</code><span>mdi mdi-unfold-less</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-unfold-more"></i><code class="m-r-10">f54f</code><span>mdi mdi-unfold-more</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-ungroup"></i><code class="m-r-10">f550</code><span>mdi mdi-ungroup</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-unity"></i><code class="m-r-10">f6ae</code><span>mdi mdi-unity</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-untappd"></i><code class="m-r-10">f551</code><span>mdi mdi-untappd</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-update"></i><code class="m-r-10">f6af</code><span>mdi mdi-update</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-upload"></i><code class="m-r-10">f552</code><span>mdi mdi-upload</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-usb"></i><code class="m-r-10">f553</code><span>mdi mdi-usb</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-vector-arrange-above"></i><code class="m-r-10">f554</code><span>mdi mdi-vector-arrange-above</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-vector-arrange-below"></i><code class="m-r-10">f555</code><span>mdi mdi-vector-arrange-below</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-vector-circle"></i><code class="m-r-10">f556</code><span>mdi mdi-vector-circle</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-vector-circle-variant"></i><code class="m-r-10">f557</code><span>mdi mdi-vector-circle-variant</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-vector-combine"></i><code class="m-r-10">f558</code><span>mdi mdi-vector-combine</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-vector-curve"></i><code class="m-r-10">f559</code><span>mdi mdi-vector-curve</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-vector-difference"></i><code class="m-r-10">f55a</code><span>mdi mdi-vector-difference</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-vector-difference-ab"></i><code class="m-r-10">f55b</code><span>mdi mdi-vector-difference-ab</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-vector-difference-ba"></i><code class="m-r-10">f55c</code><span>mdi mdi-vector-difference-ba</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-vector-intersection"></i><code class="m-r-10">f55d</code><span>mdi mdi-vector-intersection</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-vector-line"></i><code class="m-r-10">f55e</code><span>mdi mdi-vector-line</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-vector-point"></i><code class="m-r-10">f55f</code><span>mdi mdi-vector-point</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-vector-polygon"></i><code class="m-r-10">f560</code><span>mdi mdi-vector-polygon</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-vector-polyline"></i><code class="m-r-10">f561</code><span>mdi mdi-vector-polyline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-vector-rectangle"></i><code class="m-r-10">f5c6</code><span>mdi mdi-vector-rectangle</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-vector-selection"></i><code class="m-r-10">f562</code><span>mdi mdi-vector-selection</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-vector-square"></i><code class="m-r-10">f001</code><span>mdi mdi-vector-square</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-vector-triangle"></i><code class="m-r-10">f563</code><span>mdi mdi-vector-triangle</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-vector-union"></i><code class="m-r-10">f564</code><span>mdi mdi-vector-union</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-verified"></i><code class="m-r-10">f565</code><span>mdi mdi-verified</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-vibrate"></i><code class="m-r-10">f566</code><span>mdi mdi-vibrate</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-video"></i><code class="m-r-10">f567</code><span>mdi mdi-video</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-video-off"></i><code class="m-r-10">f568</code><span>mdi mdi-video-off</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-video-switch"></i><code class="m-r-10">f569</code><span>mdi mdi-video-switch</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-view-agenda"></i><code class="m-r-10">f56a</code><span>mdi mdi-view-agenda</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-view-array"></i><code class="m-r-10">f56b</code><span>mdi mdi-view-array</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-view-carousel"></i><code class="m-r-10">f56c</code><span>mdi mdi-view-carousel</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-view-column"></i><code class="m-r-10">f56d</code><span>mdi mdi-view-column</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-view-dashboard"></i><code class="m-r-10">f56e</code><span>mdi mdi-view-dashboard</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-view-day"></i><code class="m-r-10">f56f</code><span>mdi mdi-view-day</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-view-grid"></i><code class="m-r-10">f570</code><span>mdi mdi-view-grid</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-view-headline"></i><code class="m-r-10">f571</code><span>mdi mdi-view-headline</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-view-list"></i><code class="m-r-10">f572</code><span>mdi mdi-view-list</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-view-module"></i><code class="m-r-10">f573</code><span>mdi mdi-view-module</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-view-parallel"></i><code class="m-r-10">f727</code><span>mdi mdi-view-parallel</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-view-quilt"></i><code class="m-r-10">f574</code><span>mdi mdi-view-quilt</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-view-sequential"></i><code class="m-r-10">f728</code><span>mdi mdi-view-sequential</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-view-stream"></i><code class="m-r-10">f575</code><span>mdi mdi-view-stream</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-view-week"></i><code class="m-r-10">f576</code><span>mdi mdi-view-week</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-vimeo"></i><code class="m-r-10">f577</code><span>mdi mdi-vimeo</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-vine"></i><code class="m-r-10">f578</code><span>mdi mdi-vine</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-violin"></i><code class="m-r-10">f60f</code><span>mdi mdi-violin</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-visualstudio"></i><code class="m-r-10">f610</code><span>mdi mdi-visualstudio</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-vk"></i><code class="m-r-10">f579</code><span>mdi mdi-vk</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-vk-box"></i><code class="m-r-10">f57a</code><span>mdi mdi-vk-box</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-vk-circle"></i><code class="m-r-10">f57b</code><span>mdi mdi-vk-circle</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-vlc"></i><code class="m-r-10">f57c</code><span>mdi mdi-vlc</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-voice"></i><code class="m-r-10">f5cb</code><span>mdi mdi-voice</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-voicemail"></i><code class="m-r-10">f57d</code><span>mdi mdi-voicemail</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-volume-high"></i><code class="m-r-10">f57e</code><span>mdi mdi-volume-high</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-volume-low"></i><code class="m-r-10">f57f</code><span>mdi mdi-volume-low</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-volume-medium"></i><code class="m-r-10">f580</code><span>mdi mdi-volume-medium</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-volume-off"></i><code class="m-r-10">f581</code><span>mdi mdi-volume-off</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-vpn"></i><code class="m-r-10">f582</code><span>mdi mdi-vpn</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-walk"></i><code class="m-r-10">f583</code><span>mdi mdi-walk</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-wallet"></i><code class="m-r-10">f584</code><span>mdi mdi-wallet</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-wallet-giftcard"></i><code class="m-r-10">f585</code><span>mdi mdi-wallet-giftcard</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-wallet-membership"></i><code class="m-r-10">f586</code><span>mdi mdi-wallet-membership</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-wallet-travel"></i><code class="m-r-10">f587</code><span>mdi mdi-wallet-travel</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-wan"></i><code class="m-r-10">f588</code><span>mdi mdi-wan</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-washing-machine"></i><code class="m-r-10">f729</code><span>mdi mdi-washing-machine</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-watch"></i><code class="m-r-10">f589</code><span>mdi mdi-watch</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-watch-export"></i><code class="m-r-10">f58a</code><span>mdi mdi-watch-export</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-watch-import"></i><code class="m-r-10">f58b</code><span>mdi mdi-watch-import</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-watch-vibrate"></i><code class="m-r-10">f6b0</code><span>mdi mdi-watch-vibrate</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-water"></i><code class="m-r-10">f58c</code><span>mdi mdi-water</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-water-off"></i><code class="m-r-10">f58d</code><span>mdi mdi-water-off</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-water-percent"></i><code class="m-r-10">f58e</code><span>mdi mdi-water-percent</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-water-pump"></i><code class="m-r-10">f58f</code><span>mdi mdi-water-pump</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-watermark"></i><code class="m-r-10">f612</code><span>mdi mdi-watermark</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-weather-cloudy"></i><code class="m-r-10">f590</code><span>mdi mdi-weather-cloudy</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-weather-fog"></i><code class="m-r-10">f591</code><span>mdi mdi-weather-fog</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-weather-hail"></i><code class="m-r-10">f592</code><span>mdi mdi-weather-hail</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-weather-lightning"></i><code class="m-r-10">f593</code><span>mdi mdi-weather-lightning</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-weather-lightning-rainy"></i><code class="m-r-10">f67d</code><span>mdi mdi-weather-lightning-rainy</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-weather-night"></i><code class="m-r-10">f594</code><span>mdi mdi-weather-night</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-weather-partlycloudy"></i><code class="m-r-10">f595</code><span>mdi mdi-weather-partlycloudy</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-weather-pouring"></i><code class="m-r-10">f596</code><span>mdi mdi-weather-pouring</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-weather-rainy"></i><code class="m-r-10">f597</code><span>mdi mdi-weather-rainy</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-weather-snowy"></i><code class="m-r-10">f598</code><span>mdi mdi-weather-snowy</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-weather-snowy-rainy"></i><code class="m-r-10">f67e</code><span>mdi mdi-weather-snowy-rainy</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-weather-sunny"></i><code class="m-r-10">f599</code><span>mdi mdi-weather-sunny</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-weather-sunset"></i><code class="m-r-10">f59a</code><span>mdi mdi-weather-sunset</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-weather-sunset-down"></i><code class="m-r-10">f59b</code><span>mdi mdi-weather-sunset-down</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-weather-sunset-up"></i><code class="m-r-10">f59c</code><span>mdi mdi-weather-sunset-up</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-weather-windy"></i><code class="m-r-10">f59d</code><span>mdi mdi-weather-windy</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-weather-windy-variant"></i><code class="m-r-10">f59e</code><span>mdi mdi-weather-windy-variant</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-web"></i><code class="m-r-10">f59f</code><span>mdi mdi-web</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-webcam"></i><code class="m-r-10">f5a0</code><span>mdi mdi-webcam</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-webhook"></i><code class="m-r-10">f62f</code><span>mdi mdi-webhook</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-webpack"></i><code class="m-r-10">f72a</code><span>mdi mdi-webpack</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-wechat"></i><code class="m-r-10">f611</code><span>mdi mdi-wechat</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-weight"></i><code class="m-r-10">f5a1</code><span>mdi mdi-weight</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-weight-kilogram"></i><code class="m-r-10">f5a2</code><span>mdi mdi-weight-kilogram</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-whatsapp"></i><code class="m-r-10">f5a3</code><span>mdi mdi-whatsapp</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-wheelchair-accessibility"></i><code class="m-r-10">f5a4</code><span>mdi mdi-wheelchair-accessibility</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-white-balance-auto"></i><code class="m-r-10">f5a5</code><span>mdi mdi-white-balance-auto</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-white-balance-incandescent"></i><code class="m-r-10">f5a6</code><span>mdi mdi-white-balance-incandescent</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-white-balance-iridescent"></i><code class="m-r-10">f5a7</code><span>mdi mdi-white-balance-iridescent</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-white-balance-sunny"></i><code class="m-r-10">f5a8</code><span>mdi mdi-white-balance-sunny</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-widgets"></i><code class="m-r-10">f72b</code><span>mdi mdi-widgets</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-wifi"></i><code class="m-r-10">f5a9</code><span>mdi mdi-wifi</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-wifi-off"></i><code class="m-r-10">f5aa</code><span>mdi mdi-wifi-off</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-wii"></i><code class="m-r-10">f5ab</code><span>mdi mdi-wii</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-wiiu"></i><code class="m-r-10">f72c</code><span>mdi mdi-wiiu</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-wikipedia"></i><code class="m-r-10">f5ac</code><span>mdi mdi-wikipedia</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-window-close"></i><code class="m-r-10">f5ad</code><span>mdi mdi-window-close</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-window-closed"></i><code class="m-r-10">f5ae</code><span>mdi mdi-window-closed</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-window-maximize"></i><code class="m-r-10">f5af</code><span>mdi mdi-window-maximize</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-window-minimize"></i><code class="m-r-10">f5b0</code><span>mdi mdi-window-minimize</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-window-open"></i><code class="m-r-10">f5b1</code><span>mdi mdi-window-open</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-window-restore"></i><code class="m-r-10">f5b2</code><span>mdi mdi-window-restore</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-windows"></i><code class="m-r-10">f5b3</code><span>mdi mdi-windows</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-wordpress"></i><code class="m-r-10">f5b4</code><span>mdi mdi-wordpress</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-worker"></i><code class="m-r-10">f5b5</code><span>mdi mdi-worker</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-wrap"></i><code class="m-r-10">f5b6</code><span>mdi mdi-wrap</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-wrench"></i><code class="m-r-10">f5b7</code><span>mdi mdi-wrench</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-wunderlist"></i><code class="m-r-10">f5b8</code><span>mdi mdi-wunderlist</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-xaml"></i><code class="m-r-10">f673</code><span>mdi mdi-xaml</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-xbox"></i><code class="m-r-10">f5b9</code><span>mdi mdi-xbox</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-xbox-controller"></i><code class="m-r-10">f5ba</code><span>mdi mdi-xbox-controller</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-xbox-controller-off"></i><code class="m-r-10">f5bb</code><span>mdi mdi-xbox-controller-off</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-xda"></i><code class="m-r-10">f5bc</code><span>mdi mdi-xda</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-xing"></i><code class="m-r-10">f5bd</code><span>mdi mdi-xing</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-xing-box"></i><code class="m-r-10">f5be</code><span>mdi mdi-xing-box</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-xing-circle"></i><code class="m-r-10">f5bf</code><span>mdi mdi-xing-circle</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-xml"></i><code class="m-r-10">f5c0</code><span>mdi mdi-xml</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-yeast"></i><code class="m-r-10">f5c1</code><span>mdi mdi-yeast</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-yelp"></i><code class="m-r-10">f5c2</code><span>mdi mdi-yelp</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-yin-yang"></i><code class="m-r-10">f67f</code><span>mdi mdi-yin-yang</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-youtube-play"></i><code class="m-r-10">f5c3</code><span>mdi mdi-youtube-play</span></div>
                                        <div class="m-icon"><i class="m-r-10 mdi mdi-zip-box"></i><code class="m-r-10">f5c4</code><span>mdi mdi-zip-box</span></div>
                                    </div>
                                    <div class="tab-pane fade" id="fas" role="tabpanel" aria-labelledby="profile-tab">
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-address-book"></i> fas fa-address-book</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-address-card"></i> fas fa-address-card</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-adjust"></i> fas fa-adjust</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-align-center"></i> fas fa-align-center</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-align-justify"></i> fas fa-align-justify</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-align-left"></i> fas fa-align-left</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-align-right"></i> fas fa-align-right</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-allergies"></i> fas fa-allergies</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-ambulance"></i> fas fa-ambulance</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-american-sign-language-interpreting"></i> fas fa-american-sign-language-interpreting</div>
                                        <div class=" col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-anchor"></i> fas fa-anchor</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-angle-double-down"></i> fas fa-angle-double-down</span>
                                        </div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-angle-double-left"></i> fas fa-angle-double-left</span>
                                        </div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-angle-double-right"></i> fas fa-angle-double-right</span>
                                        </div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-angle-double-up"></i> fas fa-angle-double-up</span>
                                        </div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-angle-down"></i> fas fa-angle-down</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-angle-left"></i> fas fa-angle-left</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-angle-right"></i> fas fa-angle-right</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-angle-up"></i> fas fa-angle-up</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-archive"></i> fas fa-archive</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-arrow-alt-circle-down"></i> fas fa-arrow-alt-circle-down
                                        </div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-arrow-alt-circle-left"></i> fas fa-arrow-alt-circle-left</div>
                                        <div class=" col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-arrow-alt-circle-right"></i> fas fa-arrow-alt-circle-right</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-arrow-alt-circle-up"></i> fas fa-arrow-alt-circle-up</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-arrow-circle-down"></i> fas fa-arrow-circle-down
                                        </div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-arrow-circle-left"></i> fas fa-arrow-circle-left
                                        </div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-arrow-circle-right"></i> fas fa-arrow-circle-right
                                        </div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-arrow-circle-up"></i> fas fa-arrow-circle-up
                                        </div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-arrow-down"></i> fas fa-arrow-down</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-arrow-left"></i> fas fa-arrow-left</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-arrow-right"></i> fas fa-arrow-right</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-arrow-up"></i> fas fa-arrow-up</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-arrows-alt"></i> fas fa-arrows-alt</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-arrows-alt-h"></i> fas fa-arrows-alt-h</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-arrows-alt-v"></i> fas fa-arrows-alt-v</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-assistive-listening-systems"></i> fas fa-assistive-listening-systems</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-asterisk"></i> fas fa-asterisk</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-at"></i> fas fa-at</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-audio-description"></i> fas fa-audio-tion
                                        </div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-backward"></i> fas fa-backward</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-balance-scale"></i> fas fa-balance-scale</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-ban"></i> fas fa-ban</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-band-aid"></i> fas fa-band-aid</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-barcode"></i> fas fa-barcode</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-bars"></i> fas fa-bars</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-baseball-ball"></i> fas fa-baseball-ball</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-basketball-ball"></i> fas fa-basketba
                                        </div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-bath"></i> fas fa-bath</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-battery-empty"></i> fas fa-battery-empty</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-battery-full"></i> fas fa-battery-full</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-battery-half"></i> fas fa-battery-half</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-battery-quarter"></i> fas fa-battery-quarter
                                        </div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon "><i class="fas fa-battery-three-quarters"></i> fas fa-battery-three-quarters
                                        </div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-bed"></i> fas fa-bed</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-beer"></i> fas fa-beer</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-bell"></i> fas fa-bell</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-bell-slash"></i> fas fa-bell-slash</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-bicycle"></i> fas fa-bicycle</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-binoculars"></i> fas fa-binoculars</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-birthday-cake"></i> fas fa-birthday-cake</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-blind"></i> fas fa-blind</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-bold"></i> fas fa-bold</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-bolt"></i> fas fa-bolt</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-bomb"></i> fas fa-bomb</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-book"></i> fas fa-book</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-bookmark"></i> fas fa-bookmark</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-bowling-ball"></i> fas fa-bowling-ball</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-box"></i> fas fa-box</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-box-open"></i> fas fa-box-open</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-boxes"></i> fas fa-boxes</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-braille"></i> fas fa-braille</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-briefcase"></i> fas fa-briefcase</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-briefcase-medical"></i> fas fa-briefcical
                                        </div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-bug"></i> fas fa-bug</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-building"></i> fas fa-building</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-bullhorn"></i> fas fa-bullhorn</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-bullseye"></i> fas fa-bullseye</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-burn"></i> fas fa-burn</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-bus"></i> fas fa-bus</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-calculator"></i> fas fa-calculator</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-calendar"></i> fas fa-calendar</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-calendar-alt"></i> fas fa-calendar-alt</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-calendar-check"></i> fas fa-calendar-check</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-calendar-minus"></i> fas fa-calendar-minus</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-calendar-plus"></i> fas fa-calendar-plus</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-calendar-times"></i> fas fa-calendar-times</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-camera"></i> fas fa-camera</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-camera-retro"></i> fas fa-camera-retro</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-capsules"></i> fas fa-capsules</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-car"></i> fas fa-car</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-caret-down"></i> fas fa-caret-down</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-caret-left"></i> fas fa-caret-left</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-caret-right"></i> fas fa-caret-right</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-caret-square-down"></i> fas fa-caret-down
                                        </div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-caret-square-left"></i> fas fa-caret-left
                                        </div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-caret-square-right"></i> fas fa-caret-right
                                        </div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-caret-square-up"></i> fas fa-caret-sq
                                        </div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-caret-up"></i> fas fa-caret-up</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-cart-arrow-down"></i> fas fa-cart-arr
                                        </div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-cart-plus"></i> fas fa-cart-plus</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-certificate"></i> fas fa-certificate</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-chart-area"></i> fas fa-chart-area</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-chart-bar"></i> fas fa-chart-bar</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-chart-line"></i> fas fa-chart-line</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-chart-pie"></i> fas fa-chart-pie</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-check"></i> fas fa-check</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-check-circle"></i> fas fa-check-circle</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-check-square"></i> fas fa-check-square</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-chess"></i> fas fa-chess</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-chess-bishop"></i> fas fa-chess-bishop</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-chess-board"></i> fas fa-chess-board</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-chess-king"></i> fas fa-chess-king</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-chess-knight"></i> fas fa-chess-knight</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-chess-pawn"></i> fas fa-chess-pawn</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-chess-queen"></i> fas fa-chess-queen</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-chess-rook"></i> fas fa-chess-rook</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-chevron-circle-down"></i> fas fa-chevron-circle-down</div>
                                        <div class=" col-sm-6 col-md-4 col-lg-3 f-icon "><i class="fas fa-chevron-circle-left"></i> fas fa-chevron-circle-left</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-chevron-circle-right"></i> fas fa-chevron-circle-right</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-chevron-circle-up"></i> fas fa-chevroe-up
                                        </div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-chevron-down"></i> fas fa-chevron-down</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-chevron-left"></i> fas fa-chevron-left</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-chevron-right"></i> fas fa-chevron-right</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-chevron-up"></i> fas fa-chevron-up</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-child"></i> fas fa-child</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-circle"></i> fas fa-circle</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-circle-notch"></i> fas fa-circle-notch</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-clipboard"></i> fas fa-clipboard</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-clipboard-check"></i> fas fa-clipboard-check
                                        </div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-clipboard-list"></i> fas fa-clipboard-list</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-clock"></i> fas fa-clock</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-clone"></i> fas fa-clone</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-closed-captioning"></i> fas fa-closedning
                                        </div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-cloud"></i> fas fa-cloud</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-cloud-download-alt"></i> fas fa-cloudad-alt
                                        </div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-cloud-upload-alt"></i> fas fa-cloud-alt
                                        </div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-code"></i> fas fa-code</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-code-branch"></i> fas fa-code-branch</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-coffee"></i> fas fa-coffee</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-cog"></i> fas fa-cog</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-cogs"></i> fas fa-cogs</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-columns"></i> fas fa-columns</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-comment"></i> fas fa-comment</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-comment-alt"></i> fas fa-comment-alt</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-comment-dots"></i> fas fa-comment-dots</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-comment-slash"></i> fas fa-comment-slash</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-comments"></i> fas fa-comments</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-compass"></i> fas fa-compass</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-compress"></i> fas fa-compress</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-copy"></i> fas fa-copy</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-copyright"></i> fas fa-copyright</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-couch"></i> fas fa-couch</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-credit-card"></i> fas fa-credit-card</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-crop"></i> fas fa-crop</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-crosshairs"></i> fas fa-crosshairs</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-cube"></i> fas fa-cube</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-cubes"></i> fas fa-cubes</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-cut"></i> fas fa-cut</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-database"></i> fas fa-database</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-deaf"></i> fas fa-deaf</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-desktop"></i> fas fa-desktop</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-diagnoses"></i> fas fa-diagnoses</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-dna"></i> fas fa-dna</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-dollar-sign"></i> fas fa-dollar-sign</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-dolly"></i> fas fa-dolly</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-dolly-flatbed"></i> fas fa-dolly-flatbed</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-donate"></i> fas fa-donate</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-dot-circle"></i> fas fa-dot-circle</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-dove"></i> fas fa-dove</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-download"></i> fas fa-download</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-edit"></i> fas fa-edit</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-eject"></i> fas fa-eject</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-ellipsis-h"></i> fas fa-ellipsis-h</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-ellipsis-v"></i> fas fa-ellipsis-v</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-envelope"></i> fas fa-envelope</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-envelope-open"></i> fas fa-envelope-open</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-envelope-square"></i> fas fa-envelope-square
                                        </div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-eraser"></i> fas fa-eraser</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-euro-sign"></i> fas fa-euro-sign</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-exchange-alt"></i> fas fa-exchange-alt</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-exclamation"></i> fas fa-exclamation</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-exclamation-circle"></i> fas fa-exclamation-circle
                                        </div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-exclamation-triangle"></i> fas fa-exclamation-triangle</div>
                                        <div class=" col-sm-6 col-md-4 col-lg-3 f-icon "><i class="fas fa-expand"></i> fas fa-expand</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon "><i class="fas fa-expand-arrows-alt"></i> fas fa-expand-alt
                                        </div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon "><i class="fas fa-external-link-alt"></i> fas fa-external-link-alt
                                        </div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon "><i class="fas fa-external-link-square-alt"></i> fas fa-external-link-square-alt
                                        </div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-eye"></i> fas fa-eye</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-eye-dropper"></i> fas fa-eye-dropper</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-eye-slash"></i> fas fa-eye-slash</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-fast-backward"></i> fas fa-fast-backward</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-fast-forward"></i> fas fa-fast-forward</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-fax"></i> fas fa-fax</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-female"></i> fas fa-female</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-fighter-jet"></i> fas fa-fighter-jet</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-file"></i> fas fa-file</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-file-alt"></i> fas fa-file-alt</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-file-archive"></i> fas fa-file-archive</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-file-audio"></i> fas fa-file-audio</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-file-code"></i> fas fa-file-code</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-file-excel"></i> fas fa-file-excel</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-file-image"></i> fas fa-file-image</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-file-medical"></i> fas fa-file-medical</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-file-medical-alt"></i> fas fa-file-medical-alt
                                        </div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-file-pdf"></i> fas fa-file-pdf</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-file-powerpoint"></i> fas fa-file-pow
                                        </div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-file-video"></i> fas fa-file-video</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-file-word"></i> fas fa-file-word</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-film"></i> fas fa-film</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-filter"></i> fas fa-filter</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-fire"></i> fas fa-fire</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-fire-extinguisher"></i> fas fa-fire-extinguisher
                                        </div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-first-aid"></i> fas fa-first-aid</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-flag"></i> fas fa-flag</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-flag-checkered"></i> fas fa-flag-checkered</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-flask"></i> fas fa-flask</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-folder"></i> fas fa-folder</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-folder-open"></i> fas fa-folder-open</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-font"></i> fas fa-font</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-football-ball"></i> fas fa-football-ball</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-forward"></i> fas fa-forward</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-frown"></i> fas fa-frown</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-futbol"></i> fas fa-futbol</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-gamepad"></i> fas fa-gamepad</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-gavel"></i> fas fa-gavel</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-gem"></i> fas fa-gem</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-genderless"></i> fas fa-genderless</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-gift"></i> fas fa-gift</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-glass-martini"></i> fas fa-glass-martini</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-globe"></i> fas fa-globe</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-golf-ball"></i> fas fa-golf-ball</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-graduation-cap"></i> fas fa-graduation-cap</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-h-square"></i> fas fa-h-square</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-hand-holding"></i> fas fa-hand-holding</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-hand-holding-heart"></i> fas fa-hand-holding-heart
                                        </div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-hand-holding-usd"></i> fas fa-hand-holding-usd
                                        </div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-hand-lizard"></i> fas fa-hand-lizard</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-hand-paper"></i> fas fa-hand-paper</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-hand-peace"></i> fas fa-hand-peace</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-hand-point-down"></i> fas fa-hand-point-down
                                        </div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-hand-point-left"></i> fas fa-hand-point-left
                                        </div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-hand-point-right"></i> fas fa-hand-point-right
                                        </div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-hand-point-up"></i> fas fa-hand-point-up</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-hand-pointer"></i> fas fa-hand-pointer</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-hand-rock"></i> fas fa-hand-rock</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-hand-scissors"></i> fas fa-hand-scissors</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-hand-spock"></i> fas fa-hand-spock</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-hands"></i> fas fa-hands</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-hands-helping"></i> fas fa-hands-helping</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-handshake"></i> fas fa-handshake</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-hashtag"></i> fas fa-hashtag</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-hdd"></i> fas fa-hdd</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-heading"></i> fas fa-heading</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-headphones"></i> fas fa-headphones</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-heart"></i> fas fa-heart</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-heartbeat"></i> fas fa-heartbeat</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-history"></i> fas fa-history </div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-hockey-puck"></i> fas fa-hockey-puck</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-home"></i> fas fa-home</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-hospital"></i> fas fa-hospital</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-hospital-alt"></i> fas fa-hospital-alt</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-hospital-symbol"></i> fas fa-hospital
                                        </div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-hourglass"></i> fas fa-hourglass</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-hourglass-end"></i> fas fa-hourglass-end</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-hourglass-half"></i> fas fa-hourglass-half</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-hourglass-start"></i> fas fa-hourglass-start
                                        </div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-i-cursor"></i> fas fa-i-cursor</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-id-badge"></i> fas fa-id-badge</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-id-card"></i> fas fa-id-card</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-id-card-alt"></i> fas fa-id-card-alt</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-image"></i> fas fa-image</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-images"></i> fas fa-images</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-inbox"></i> fas fa-inbox</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-indent"></i> fas fa-indent</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-industry"></i> fas fa-industry</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-info"></i> fas fa-info</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-info-circle"></i> fas fa-info-circle</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-italic"></i> fas fa-italic</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-key"></i> fas fa-key</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-keyboard"></i> fas fa-keyboard</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-language"></i> fas fa-language</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-laptop"></i> fas fa-laptop</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-leaf"></i> fas fa-leaf</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-lemon"></i> fas fa-lemon</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-level-down-alt"></i> fas fa-level-down-alt</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-level-up-alt"></i> fas fa-level-up-alt</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-life-ring"></i> fas fa-life-ring</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-lightbulb"></i> fas fa-lightbulb</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-link"></i> fas fa-link</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-lira-sign"></i> fas fa-lira-sign</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-list"></i> fas fa-list</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-list-alt"></i> fas fa-list-alt</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-list-ol"></i> fas fa-list-ol</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-list-ul"></i> fas fa-list-ul</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-location-arrow"></i> fas fa-location-arrow</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-lock"></i> fas fa-lock</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-lock-open"></i> fas fa-lock-open</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-long-arrow-alt-down"></i> fas fa-long-arrow-alt-down</div>
                                        <div class=" col-sm-6 col-md-4 col-lg-3 f-icon "><i class="fas fa-long-arrow-alt-left"></i> fas fa-long-arrow-alt-left</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-long-arrow-alt-right"></i> fas fa-long-arrow-alt-right</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-long-arrow-alt-up"></i> fas fa-long-arrow-alt-up
                                        </div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-low-vision"></i> fas fa-low-vision</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-magic"></i> fas fa-magic</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-magnet"></i> fas fa-magnet</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-male"></i> fas fa-male</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-map"></i> fas fa-map</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-map-marker"></i> fas fa-map-marker</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-map-marker-alt"></i> fas fa-map-marker-alt</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-map-pin"></i> fas fa-map-pin</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-map-signs"></i> fas fa-map-signs</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-mars"></i> fas fa-mars</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-mars-double"></i> fas fa-mars-double</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-mars-stroke"></i> fas fa-mars-stroke</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-mars-stroke-h"></i> fas fa-mars-stroke-h</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-mars-stroke-v"></i> fas fa-mars-stroke-v</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-medkit"></i> fas fa-medkit</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-meh"></i> fas fa-meh</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-mercury"></i> fas fa-mercury</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-microchip"></i> fas fa-microchip</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-microphone"></i> fas fa-microphone</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-microphone-slash"></i> fas fa-microphone-slash
                                        </div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-minus"></i> fas fa-minus</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-minus-circle"></i> fas fa-minus-circle</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-minus-square"></i> fas fa-minus-square</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-mobile"></i> fas fa-mobile</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-mobile-alt"></i> fas fa-mobile-alt</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-money-bill-alt"></i> fas money-bill-alt</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-moon"></i> fas fa-moon</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-motorcycle"></i> fas fa-motorcycle</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-mouse-pointer"></i> fas fa-mouse-pointer</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-music"></i> fas fa-music</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-neuter"></i> fas fa-neuter</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-newspaper"></i> fas fa-newspaper</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-notes-medical"></i> fas fa-notes-medical</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-object-group"></i> fas fa-object-group</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-object-ungroup"></i> fas fa-object-ungroup</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-outdent"></i> fas fa-outdent</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-paint-brush"></i> fas fa-paint-brush</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-pallet"></i> fas fa-pallet</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-paper-plane"></i> fas fa-paper-plane</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-paperclip"></i> fas fa-paperclip</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-parachute-box"></i> fas fa-parachute-box</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-paragraph"></i> fas fa-paragraph</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-paste"></i> fas fa-paste</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-pause"></i> fas fa-pause</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-pause-circle"></i> fas pause-circle</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-paw"></i> fas fa-fa-paw</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-pen-square"></i> fas fa-pen-square</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-pencil-alt"></i> fas fa-pencil-alt</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-people-carry"></i> fas fa-people-carry</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-percent"></i> fas fa-percent</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-phone"></i> fas fa-phone</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-phone-slash"></i> fas fa-phone-slash</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-phone-square"></i> fas fa-phone-square</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-phone-volume"></i> fas fa-phone-volume</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-piggy-bank"></i> fas fa-piggy-bank</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-pills"></i> fas fa-pills</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-plane"></i> fas fa-plane</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-play"></i> fas fa-play</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-play-circle"></i> fas fa-play-circle</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-plug"></i> fas fa-plug</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-plus"></i> fas fa-plus</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-plus-circle"></i> fas fa-plus-circle</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-plus-square"></i> fas fa-plus-square</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-podcast"></i> fas fa-podcast</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-poo"></i> fas fa-poo</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-pound-sign"></i> fas fa-pound-sign</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-power-off"></i> fas fa-power-off</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-prescription-bottle"></i> fas fa-prescription-bottle</div>
                                        <div class=" col-sm-6 col-md-4 col-lg-3 f-icon "><i class="fas fa-prescription-bottle-alt"></i> fas fa-prescription-bottle-alt</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-print"></i> fas fa-print</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-procedures"></i> fas fa-procedures</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-puzzle-piece"></i> fas fa-puzzle-piece</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-qrcode"></i> fas fa-qrcode</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-question"></i> fas fa-question</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-question-circle"></i> fas fa-question
                                        </div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-quidditch"></i> fas fa-quidditch</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-quote-left"></i> fas fa-quote-left</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-quote-right"></i> fas fa-quote-right</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-random"></i> fas fa-random</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-recycle"></i> fas fa-recycle</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-redo"></i> fas fa-redo</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-redo-alt"></i> fas fa-redo-alt</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-registered"></i> fas fa-registered</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-reply"></i> fas fa-reply</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-reply-all"></i> fas fa-reply-all</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-retweet"></i> fas fa-retweet</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-ribbon"></i> fas fa-ribbon</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-road"></i> fas fa-road</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-rocket"></i> fas fa-rocket</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-rss"></i> fas fa-rss</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-rss-square"></i> fas fa-rss-square</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-ruble-sign"></i> fas fa-ruble-sign</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-rupee-sign"></i> fas fa-rupee-sign</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-save"></i> fas fa-save</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-search"></i> fas fa-search</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-search-minus"></i> fas fa-search-minus</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-search-plus"></i> fas fa-search-plus</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-seedling"></i> fas fa-seedling</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-server"></i> fas fa-server</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-share"></i> fas fa-share</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-share-alt"></i> fas fa-share-alt</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-share-alt-square"></i> fas fa-share-alt-square
                                        </div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-share-square"></i> fas fa-share-square</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-shekel-sign"></i> fas fa-shekel-sign</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-shield-alt"></i> fas fa-shield-alt</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-ship"></i> fas fa-ship</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-shipping-fast"></i> fas fa-shipping-fast</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-shopping-bag"></i> fas fa-shopping-bag</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-shopping-basket"></i> fas fa-shopping-basket
                                        </div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-shopping-cart"></i> fas fa-shopping-cart</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-shower"></i> fas fa-shower</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-sign"></i> fas fa-sign</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-sign-in-alt"></i> fas fa-sign-in-alt</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-sign-language"></i> fas fa-sign-language</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-sign-out-alt"></i> fas fa-sign-out-alt</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-signal"></i> fas fa-signal</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-sitemap"></i> fas fa-sitemap</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-sliders-h"></i> fas fa-sliders-h</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-smile"></i> fas fa-smile</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-smoking"></i> fas fa-smoking</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-snowflake"></i> fas fa-snowflake</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-sort"></i> fas fa-sort</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-sort-alpha-down"></i> fas fa-alpha-down
                                        </div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-sort-alpha-up"></i> fas fa-sort-alpha-up</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-sort-amount-down"></i> fas fa-sort-amount-down
                                        </div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-sort-amount-up"></i> fas fa-sort-amount-up</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-sort-down"></i> fas fa-sort-down</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-sort-numeric-down"></i> fas fa-sort-numeric-down
                                        </div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-sort-numeric-up"></i> fas fa-sort-numeric-up
                                        </div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-sort-up"></i> fas fa-sort-up</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-space-shuttle"></i> fas fa-space-shuttle</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-spinner"></i> fas fa-spinner</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-square"></i> fas fa-square</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-square-full"></i> fas fa-square-full</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-star"></i> fas fa-star</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-star-half"></i> fas fa-star-half</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-step-backward"></i> fas fa-step-backward</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-step-forward"></i> fas fa-step-forward</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-stethoscope"></i> fas fa-stethoscope</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-sticky-note"></i> fas fa-sticky-note</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-stop"></i> fas fa-stop</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-stop-circle"></i> fas fa-stop-circle</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-stopwatch"></i> fas fa-stopwatch</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-street-view"></i> fas fa-street-view</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-strikethrough"></i> fas fa-strikethrough</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-subscript"></i> fas fa-subscript</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-subway"></i> fas fa-subway</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-suitcase"></i> fas fa-suitcase</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-sun"></i> fas fa-sun</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-superscript"></i> fas fa-superscript</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-sync"></i> fas fa-sync</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-sync-alt"></i> fas fa-sync-alt</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-syringe"></i> fas fa-syringe</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-table"></i> fas fa-table</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-table-tennis"></i> fas fa-table-tennis</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-tablet"></i> fas fa-tablet</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-tablet-alt"></i> fas fa-tablet-alt</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-tablets"></i> fas fa-tablets</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-tachometer-alt"></i> fas fa-tachometer-alt</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-tag"></i> fas fa-tag</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-tags"></i> fas fa-tags</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-tape"></i> fas fa-tape</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-tasks"></i> fas fa-tasks</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-taxi"></i> fas fa-taxi</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-terminal"></i> fas fa-terminal</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-text-height"></i> fas fa-text-height</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-text-width"></i> fas fa-text-width</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-th"></i> fas fa-th</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-th-large"></i> fas fa-th-large</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-th-list"></i> fas fa-th-list</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-thermometer"></i> fas fa-thermometer</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-thermometer-empty"></i> fas fa-thermometer-empty
                                        </div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-thermometer-full"></i> fas fa-thermometer-full
                                        </div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-thermometer-half"></i> fas fa-thermometer-half
                                        </div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-thermometer-quarter"></i> fas fa-thermometer-quarter</div>
                                        <div class=" col-sm-6 col-md-4 col-lg-3 f-icon "><i class="fas fa-thermometer-three-quarters"></i> fas fa-thermometer-three-quarters</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-thumbs-down"></i> fas fa-thumbs-down</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-thumbs-up"></i> fas fa-thumbs-up</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-thumbtack"></i> fas fa-thumbtack</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-ticket-alt"></i> fas fa-ticket-alt</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-times"></i> fas fa-times</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-times-circle"></i> fas fa-times-circle</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-tint"></i> fas fa-tint</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-toggle-off"></i> fas fa-toggle-off</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-toggle-on"></i> fas fa-toggle-on</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-trademark"></i> fas fa-trademark</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-train"></i> fas fa-train</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-transgender"></i> fas fa-transgender</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-transgender-alt"></i> fas fa-transgen
                                        </div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-trash"></i> fas fa-trash</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-trash-alt"></i> fas fa-trash-alt</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-tree"></i> fas fa-tree</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-trophy"></i> fas fa-trophy</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-truck"></i> fas fa-truck</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-truck-loading"></i> fas fa-truck-loading</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-truck-moving"></i> fas fa-truck-moving</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-tty"></i> fas fa-tty</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-tv"></i> fas fa-tv</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-umbrella"></i> fas fa-umbrella</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-underline"></i> fas fa-underline</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-undo"></i> fas fa-undo</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-undo-alt"></i> fas fa-undo-alt</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-universal-access"></i> fas fa-universal-access
                                        </div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-university"></i> fas fa-university</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-unlink"></i> fas fa-unlink</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-unlock"></i> fas fa-unlock</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-unlock-alt"></i> fas fa-unlock-alt</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-upload"></i> fas fa-upload</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-user"></i> fas fa-user</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-user-circle"></i> fas fa-user-circle</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-user-md"></i> fas fa-user-md</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-user-plus"></i> fas fa-user-plus</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-user-secret"></i> fas fa-user-secret</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-user-times"></i> fas fa-user-times</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-users"></i> fas fa-users</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-utensil-spoon"></i> fas fa-utensil-spoon</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-utensils"></i> fas fa-utensils</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-venus"></i> fas fa-venus</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-venus-double"></i> fas fa-venus-double</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-venus-mars"></i> fas fa-venus-mars</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-vial"></i> fas fa-vial</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-vials"></i> fas fa-vials</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-video"></i> fas fa-video</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-video-slash"></i> fas fa-video-slash</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-volleyball-ball"></i> fas fa-volleyba
                                        </div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-volume-down"></i> fas fa-volume-down</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-volume-off"></i> fas fa-volume-off</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-volume-up"></i> fas fa-volume-up</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-warehouse"></i> fas fa-warehouse</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-weight"></i> fas fa-weight</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-wheelchair"></i> fas fa-wheelchair</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-wifi"></i> fas fa-wifi</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-window-close"></i> fas fa-window-close</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-window-maximize"></i> fas fa-window-maximize
                                        </div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-window-minimize"></i> fas fa-window-minimize
                                        </div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-window-restore"></i> fas fa-window-restore</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-wine-glass"></i> fas fa-wine-glass</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-won-sign"></i> fas fa-won-sign</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-wrench"></i> fas fa-wrench</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-x-ray"></i> fas fa-x-ray</div>
                                        <div class="col-sm-6 col-md-4 col-lg-3 f-icon"><i class="fas fa-yen-sign"></i> fas fa-yen-sign</div>
                                    </div>
                                </div>
                            </div>
                            <!-- column -->

                        </div>
                        <!-- ============================================================== -->
                        <!-- Recent comment and chats -->
                        <!-- ============================================================== -->
                    </div>
                    <!-- ============================================================== -->
                    <!-- End Container fluid  -->
                    <!-- ============================================================== -->
                    <!-- ============================================================== -->
                    <!-- footer -->
                    <!-- ============================================================== -->
                    <footer class="footer text-center">

                    </footer>
                    <!-- ============================================================== -->
                    <!-- End footer -->
                    <!-- ============================================================== -->
                </div>
                <!-- ============================================================== -->
                <!-- End Page wrapper  -->
                <!-- ============================================================== -->
            </div>
            <!-- ============================================================== -->
            <!-- End Wrapper -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- All Jquery -->
            <!-- ============================================================== -->
            <script src="assets/libs/jquery/dist/jquery.min.js"></script>
            <!-- Bootstrap tether Core JavaScript -->
            <script src="assets/libs/popper.js/dist/umd/popper.min.js"></script>
            <script src="assets/libs/bootstrap/dist/js/bootstrap.min.js"></script>
            <script src="assets/libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js"></script>
            <script src="assets/extra-libs/sparkline/sparkline.js"></script>
            <!--Wave Effects -->
            <script src="dist/js/waves.js"></script>
            <!--Menu sidebar -->
            <script src="dist/js/sidebarmenu.js"></script>
            <!--Custom JavaScript -->
            <script src="dist/js/custom.min.js"></script>
            <!--This page JavaScript -->



    </body>

</html>