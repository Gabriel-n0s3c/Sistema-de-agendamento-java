/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author BNB - SOLUÇÕES
 */
public class AgendamentoServico {

    private int idservico;
    private int idAgendamento;
    private Agendamento agendamento;
    private Servico servico;
    private String horario;
    private int status;
    private String situacao;
    private ArrayList<String> listaDeHorarios;
    private ArrayList<Servico> vinculado;
    private ArrayList<Servico> naoVinculado;

    public AgendamentoServico() {
    }

    public AgendamentoServico(int idservico, int idAgendamento, Agendamento agendamento, Servico servico, String horario) {
        this.idservico = idservico;
        this.idAgendamento = idAgendamento;
        this.agendamento = agendamento;
        this.servico = servico;
        this.horario = horario;
    }

    public ArrayList<Servico> getVinculado() {
        return vinculado;
    }

    public void setVinculado(ArrayList<Servico> vinculado) {
        this.vinculado = vinculado;
    }

    public ArrayList<Servico> getNaoVinculado() {
        return naoVinculado;
    }

    public void setNaoVinculado(ArrayList<Servico> naoVinculado) {
        this.naoVinculado = naoVinculado;
    }

    public int getIdservico() {
        return idservico;
    }

    public void setIdservico(int idservico) {
        this.idservico = idservico;
    }

    public int getIdAgendamento() {
        return idAgendamento;
    }

    public void setIdAgendamento(int idAgendamento) {
        this.idAgendamento = idAgendamento;
    }

    public ArrayList<String> getListaDeHorarios() {
        return listaDeHorarios;
    }

    public void setListaDeHorarios(ArrayList<String> listaDeHorarios) {
        this.listaDeHorarios = listaDeHorarios;
    }

    public Agendamento getAgendamento() {
        return agendamento;
    }

    public void setAgendamento(Agendamento agendamento) {
        this.agendamento = agendamento;
    }

    public Servico getServico() {
        return servico;
    }

    public void setServico(Servico servico) {
        this.servico = servico;
    }

    public String getHorario() {
        return horario;
    }

    public void setHorario(String horario) {
        this.horario = horario;
    }

    public boolean agendar(AgendamentoServico agendamento) {
        AgendamentoServicoDAO DAO = new AgendamentoServicoDAO();
        return DAO.agendar(agendamento);
    }

    public ArrayList<AgendamentoServico> getHorariosMarcados(String data, int idfuncionario) throws Exception {
        AgendamentoServicoDAO DAO = new AgendamentoServicoDAO();
        return DAO.getHorariosMarcados(data, idfuncionario);
    }

    public ArrayList<AgendamentoServico> getLista() throws Exception {
        AgendamentoServicoDAO DAO = new AgendamentoServicoDAO();
        return DAO.getLista();
    }
    public ArrayList<AgendamentoServico> getListaPorCliente(int id) throws Exception {
        AgendamentoServicoDAO DAO = new AgendamentoServicoDAO();
        return DAO.getListaPorCliente(id);
    }

    public ArrayList<AgendamentoServico> getListaDataDesc() throws Exception {
        AgendamentoServicoDAO DAO = new AgendamentoServicoDAO();
        return DAO.getListaDataDesc();
    }

    public ArrayList<Integer> getQuantidadePorStatus() throws Exception {
        AgendamentoServicoDAO DAO = new AgendamentoServicoDAO();
        return DAO.getQuantidadePorStatus();
    }

    public AgendamentoServico getUmAgendamento(int idagendamento, int idservico) throws Exception {
        AgendamentoServicoDAO DAO = new AgendamentoServicoDAO();
        return DAO.getUmAgendamento(idagendamento, idservico);
    }

    public List<AgendamentoServico> getPorAgendamento(int idagendamento) throws Exception {
        AgendamentoServicoDAO DAO = new AgendamentoServicoDAO();
        return DAO.getPorAgendamento(idagendamento);
    }

    public boolean alterarAgendar(AgendamentoServico a, int idantigo) {
        AgendamentoServicoDAO DAO = new AgendamentoServicoDAO();
        return DAO.alterarAgendar(a, idantigo);
    }

    public boolean excluir(int idagendamento, int idservico) {
        AgendamentoServicoDAO DAO = new AgendamentoServicoDAO();
        return DAO.excluir(idagendamento, idservico);
    }

    public boolean realizaServico(int idAgendamento, int idServico) {
        AgendamentoServicoDAO DAO = new AgendamentoServicoDAO();
        return DAO.realizaAgendamento(idAgendamento, idServico);
    }

    public boolean naoRealizaAgendamento(int idAgendamento, int idServico, int status) {
        AgendamentoServicoDAO DAO = new AgendamentoServicoDAO();
        return DAO.naoRealizaAgendamento(idAgendamento, idServico, status);
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getSituacao() {
        return situacao;
    }

    public void setSituacao(String situacao) {
        this.situacao = situacao;
    }

}
