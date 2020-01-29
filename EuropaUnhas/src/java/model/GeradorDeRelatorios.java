/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.FileOutputStream;
import java.io.OutputStream;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import net.sf.jasperreports.engine.*;
import net.sf.jasperreports.engine.*;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.data.JRBeanArrayDataSource;
import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource;
import net.sf.jasperreports.engine.export.JRPdfExporter;
import net.sf.jasperreports.export.SimpleExporterInput;
import net.sf.jasperreports.export.SimpleOutputStreamExporterOutput;
import net.sf.jasperreports.export.SimplePdfExporterConfiguration;

/**
 *
 * @author BNB - SOLUÇÕES
 */
public class GeradorDeRelatorios extends DataBaseDAO {

    public void geraPdf(String jrxml, List<AgendamentoServico> as , OutputStream saida) {

        try {
            System.out.println(jrxml);
            // compila jrxml em memoria
            JasperReport jasper = JasperCompileManager.compileReport(jrxml);
            // preenche relatorio
            this.conectar();
            
           JasperPrint print;
           
             print = JasperFillManager.fillReport(jasper, null, new JRBeanCollectionDataSource(as));
            // exporta para pdf
            JRPdfExporter exporter = new JRPdfExporter();

            exporter.setExporterInput(new SimpleExporterInput(print));
            exporter.setExporterOutput(new SimpleOutputStreamExporterOutput(saida));
            SimplePdfExporterConfiguration configuration = new SimplePdfExporterConfiguration();
            exporter.setConfiguration(configuration);

            exporter.exportReport();
            
            this.desconectar();
        } catch (Exception e) {
            throw new RuntimeException("Erro ao gerar relatório", e);
        }
    }
}
