/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.ArrayList;

/**
 *
 * @author BNB - SOLUÇÕES
 */
public class Agendamento {
    private int idagendamento;
    private String data;
    private float valor;
    private Cliente cliente;
    private Funcionario funcionario;

    public int getIdagendamento() {
        return idagendamento;
    }

    public void setIdagendamento(int idagendamento) {
        this.idagendamento = idagendamento;
    }

    public String getData() {
        return data;
    }

    public void setData(String data) {
        this.data = data;
    }

    public float getValor() {
        return valor;
    }

    public void setValor(float valor) {
        this.valor = valor;
    }

    public Cliente getCliente() {
        return cliente;
    }

    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }

    public Funcionario getFuncionario() {
        return funcionario;
    }

    public void setFuncionario(Funcionario funcionario) {
        this.funcionario = funcionario;
    }

    /*public boolean gravar() throws Exception {
        AgendamentoDAO DAO = new AgendamentoDAO();
        return DAO.agendar(this);
    }*/

    public ArrayList<Agendamento> getLista() throws Exception {
        AgendamentoDAO dao = new AgendamentoDAO();
        return dao.getLista();
    }
    
    public ArrayList<Agendamento> getQuantidadePorFuncionario() throws Exception {
        AgendamentoDAO dao = new AgendamentoDAO();
        return dao.getQuantidadePorFuncionario();
    }
    public ArrayList<Agendamento> getQuantidadePorClienteFrequente() throws Exception {
        AgendamentoDAO dao = new AgendamentoDAO();
        return dao.getQuantidadePorCliente();
    }
    public ArrayList<Agendamento> getQuantidadePorClienteDesistente() throws Exception {
        AgendamentoDAO dao = new AgendamentoDAO();
        return dao.getQuantidadePorClienteDesistente();
    }
    public ArrayList<Agendamento> getQuantidadePorFunDesistente() throws Exception {
        AgendamentoDAO dao = new AgendamentoDAO();
        return dao.getQuantidadePorFunDesistente();
    }

    public Agendamento getCarregaPorID(int idAgendamento) throws Exception {
        AgendamentoDAO DAO = new AgendamentoDAO();
        return DAO.getCarregaPorID(idAgendamento);
    }

    public boolean excluir() throws Exception {
        AgendamentoDAO DAO = new AgendamentoDAO();
        return DAO.excluir(this);
    }

    public ArrayList<Servico> servicosVinculadoPorAgendamento(int idagendamento) throws Exception {
        AgendamentoDAO DAO = new AgendamentoDAO();
        return DAO.servicosVinculadoPorAgendamento(idagendamento);
    }

    public ArrayList<Servico> servicosNaoVinculadosPorAgendamento(int idAgendamento) throws Exception {
        AgendamentoDAO DAO = new AgendamentoDAO();
        return DAO.servicosNaoVinculadosPorAgendamento(idAgendamento);
    }

     public int getQtdAgendamento() throws Exception{
        AgendamentoDAO DAO = new AgendamentoDAO();
        return DAO.getQtdAgendamento();
    }


}
