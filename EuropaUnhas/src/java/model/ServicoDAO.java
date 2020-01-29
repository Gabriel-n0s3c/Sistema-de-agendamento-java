/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.PreparedStatement;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author BNB - SOLUÇÕES
 */
public class ServicoDAO extends DataBaseDAO {

    public ServicoDAO() {
    }

    public boolean gravar(Servico s) {
        String sql;
        try {
            this.conectar();
            if (s.getIdservico() == 0) {
                sql = "INSERT INTO servico (nome_servico, descricao, preco, duracao,  link_img) values (?,?,?,?,?);";
            } else {
                sql = "UPDATE servico SET nome_servico=? , descricao=?, preco=?, duracao=?, link_img=? WHERE idservico=?";
            }
            PreparedStatement pstm = conn.prepareStatement(sql);
            pstm.setString(1, s.getNome_servico());
            pstm.setString(2, s.getDescricao());
            pstm.setFloat(3, s.getPreco());
            pstm.setInt(4, s.getDuracao());
            pstm.setString(5, s.getLink_img());
            if (s.getIdservico() > 0) {
                pstm.setInt(6, s.getIdservico());
            }
            pstm.execute();
            this.desconectar();
            return true;
        } catch (Exception e) {
            System.out.println(e);
            return false;
        }
    }

    public ArrayList<Servico> getLista() {
        ArrayList<Servico> listaServ = new ArrayList<>();
        String sql = "SELECT * FROM servico";
        try {
            this.conectar();
            Statement stm = conn.createStatement();
            rs = stm.executeQuery(sql);
            while (rs.next()) {
                Servico s = new Servico();
                s.setIdservico(rs.getInt("idservico"));
                s.setNome_servico(rs.getString("nome_servico"));
                s.setDescricao(rs.getString("descricao"));
                s.setPreco(rs.getFloat("preco"));
                s.setDuracao(rs.getInt("duracao"));
                s.setLink_img(rs.getString("link_img"));
                listaServ.add(s);
            }
            this.desconectar();
            return listaServ;
        } catch (Exception e) {
            System.out.println(e);
            return listaServ;
        }

    }

    public ArrayList<Servico> getQuantidadeRealizada() {
        ArrayList<Servico> listaServ = new ArrayList<>();
        String sql = "SELECT s.nome_servico, count(*) as quantidade from servico as s "
                + " INNER JOIN agendamento_servico as ss on ss.idservico = s.idservico"
                + " WHERE ss.status = 1 GROUP by s.idservico limit 8";
        try {
            this.conectar();
            Statement stm = conn.createStatement();
            rs = stm.executeQuery(sql);
            while (rs.next()) {
                Servico s = new Servico();
                s.setNome_servico(rs.getString("s.nome_servico"));
                s.setIdservico(rs.getInt("quantidade"));
                listaServ.add(s);
            }
            this.desconectar();
            return listaServ;
        } catch (Exception e) {
            System.out.println(e);
            return listaServ;
        }

    }
    
    public ArrayList<Servico> getPromoAsc() {
        ArrayList<Servico> listaServ = new ArrayList<>();
        String sql = "SELECT * FROM servico where descricao like '%promo%' order by preco asc limit 3";
        try {
            this.conectar();
            Statement stm = conn.createStatement();
            rs = stm.executeQuery(sql);
            while (rs.next()) {
                Servico s = new Servico();
                s = s.getCarregaPorID(rs.getInt("idservico"));
                listaServ.add(s);
            }
            this.desconectar();
            return listaServ;
        } catch (Exception e) {
            System.out.println(e);
            return listaServ;
        }

    }

    public ArrayList<Servico> getQuantidadeRealizados() {
        ArrayList<Servico> listaServ = new ArrayList<>();
        String sql = "SELECT * FROM servico";
        try {
            this.conectar();
            Statement stm = conn.createStatement();
            rs = stm.executeQuery(sql);
            while (rs.next()) {
                Servico s = new Servico();
                s.setIdservico(rs.getInt("idservico"));
                s.setNome_servico(rs.getString("nome_servico"));
                s.setDescricao(rs.getString("descricao"));
                s.setPreco(rs.getFloat("preco"));
                s.setDuracao(rs.getInt("duracao"));
                s.setLink_img(rs.getString("link_img"));
                listaServ.add(s);
            }
            this.desconectar();
            return listaServ;
        } catch (Exception e) {
            System.out.println(e);
            return listaServ;
        }

    }

    public Servico getCarregaPorID(int idServico) {
        Servico s = new Servico();
        String sql = "SELECT * FROM servico WHERE idservico = ?";
        try {
            this.conectar();
            pstm = conn.prepareStatement(sql);
            pstm.setInt(1, idServico);
            rs = pstm.executeQuery();
            while (rs.next()) {
                s.setIdservico(rs.getInt("idservico"));
                s.setNome_servico(rs.getString("nome_servico"));
                s.setDescricao(rs.getString("descricao"));
                s.setPreco(rs.getFloat("preco"));
                s.setDuracao(rs.getInt("duracao"));
                s.setLink_img(rs.getString("link_img"));
            }
            this.desconectar();
            return s;
        } catch (Exception e) {
            System.out.println(e);
            return s;
        }
    }

    public int retornaDuracao(int idServico) {
        int duracao = 0;
        String sql = "SELECT duracao FROM servico WHERE idservico = ?";
        try {
            this.conectar();
            pstm = conn.prepareStatement(sql);
            pstm.setInt(1, idServico);
            rs = pstm.executeQuery();
            if (rs.next()) {
                duracao = (rs.getInt("duracao"));
            }
            this.desconectar();
            return duracao;
        } catch (Exception e) {
            System.out.println(e);
            return duracao;
        }
    }

    public int getQtdServico() throws Exception {
        String sql = "SELECT count(*) 'servico' FROM servico";
        int qtd = 0;
        this.conectar();
        Statement stm = conn.createStatement();
        rs = stm.executeQuery(sql);
        while (rs.next()) {
            qtd = (rs.getInt("servico"));
        }
        this.desconectar();
        return qtd;
    }
    
    public ArrayList<Servico> getPrecoPorServico() throws Exception {
        ArrayList<Servico> lista = new ArrayList<>();
        String sql = "SELECT preco, nome_servico FROM servico";
        this.conectar();
        Statement stm = conn.createStatement();
        rs = stm.executeQuery(sql);
        while (rs.next()) {
            Servico s = new Servico();
            s.setPreco(rs.getFloat("preco"));
            s.setNome_servico(rs.getString("nome_servico"));
            lista.add(s);
        }
        this.desconectar();
        return lista;
    }

    public boolean excluir(Servico s) {
        try {
            this.conectar();
            String sql = "DELETE FROM servico WHERE idservico = ?";
            pstm = conn.prepareStatement(sql);
            pstm.setInt(1, s.getIdservico());
            pstm.execute();
            this.desconectar();
            return true;

        } catch (Exception e) {
            System.out.println(e);
            return false;
        }
    }

}
