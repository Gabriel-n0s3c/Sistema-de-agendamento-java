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
public class Servico {

    private int idservico;
    private String nome_servico;
    private String descricao;
    private float preco;
    private String link_img;
    private int duracao;

    public Servico(int idservico, String nome_servico, String descricao, float preco, String link_img, int duracao) {
        this.idservico = idservico;
        this.nome_servico = nome_servico;
        this.descricao = descricao;
        this.preco = preco;
        this.link_img = link_img;
        this.duracao = duracao;
    }

    public Servico() {
    }

    public int getIdservico() {
        return idservico;
    }

    public void setIdservico(int idservico) {
        this.idservico = idservico;
    }

    public String getNome_servico() {
        return nome_servico;
    }

    public void setNome_servico(String nome_servico) {
        this.nome_servico = nome_servico;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public float getPreco() {
        return preco;
    }

    public void setPreco(float preco) {
        this.preco = preco;
    }

    public String getLink_img() {
        return link_img;
    }

    public void setLink_img(String link_img) {
        this.link_img = link_img;
    }

    public boolean gravar() throws Exception {
        ServicoDAO dao = new ServicoDAO();
        return dao.gravar(this);
    }

    public ArrayList<Servico> getLista() throws Exception {
        ServicoDAO dao = new ServicoDAO();
        return dao.getLista();
    }

    public ArrayList<Servico> getQuantidadeRealizada() throws Exception {
        ServicoDAO dao = new ServicoDAO();
        return dao.getQuantidadeRealizada();
    }

    public ArrayList<Servico> getPromoAsc() {
        ServicoDAO dao = new ServicoDAO();
        return dao.getPromoAsc();
    }

    public int retornaDuracao(int idServico) {
        ServicoDAO dao = new ServicoDAO();
        return dao.retornaDuracao(idServico);
    }

    public Servico getCarregaPorID(int idServico) throws Exception {
        ServicoDAO dao = new ServicoDAO();
        return dao.getCarregaPorID(idServico);
    }

    public int getQtdServico() throws Exception {
        ServicoDAO DAO = new ServicoDAO();
        return DAO.getQtdServico();
    }

    public ArrayList<Servico> getPrecoPorServ() throws Exception {
        ServicoDAO DAO = new ServicoDAO();
        return DAO.getPrecoPorServico();
    }

    public boolean excluir() throws Exception {
        ServicoDAO dao = new ServicoDAO();
        return dao.excluir(this);
    }

    public int getDuracao() {
        return duracao;
    }

    public void setDuracao(int duracao) {
        this.duracao = duracao;
    }

}
