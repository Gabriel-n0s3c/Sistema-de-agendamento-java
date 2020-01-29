/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author BNB - SOLUÇÕES
 */
public class AgendamentoServicoDAO extends DataBaseDAO {

    public boolean agendar(AgendamentoServico a) {
        try {
            this.conectar();
            String sql;
            sql = "INSERT INTO agendamento (data, valor, idfuncionario, idcliente)  VALUES (?,?,?,?)";
            pstm = conn.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);
            pstm.setDate(1, Date.valueOf(a.getAgendamento().getData()));
            pstm.setFloat(2, a.getAgendamento().getValor());
            pstm.setInt(3, a.getAgendamento().getFuncionario().getIdfuncionario());
            pstm.setInt(4, a.getAgendamento().getCliente().getIdcliente());
            pstm.execute();
            rs = pstm.getGeneratedKeys();
            if (rs.next()) {
                a.getAgendamento().setIdagendamento(rs.getInt(1));
            }
            this.desconectar();
            boolean sucesso = true;
            int i = 0;
            for (Servico s : a.getVinculado()) {

                sucesso = sucesso && vincular(a.getAgendamento().getIdagendamento(), s.getIdservico(), a.getListaDeHorarios().get(i));
                i++;
            }
            return sucesso;
        } catch (Exception e) {
            System.out.println("ERRO AO AGENDAR AGENDAMENTO (00x122): " + e);
            return false;
        }
    }

    public boolean alterarAgendar(AgendamentoServico a, int idantigo) {
        try {
            this.conectar();
            String sql2 = "UPDATE agendamento_servico set idservico =?, horario=?, status=? WHERE idagendamento = ? and idservico=?";
            pstm = conn.prepareStatement(sql2);
            pstm.setInt(1, a.getServico().getIdservico());
            pstm.setString(2, a.getHorario());
            pstm.setInt(3, a.getStatus());
            pstm.setInt(4, a.getAgendamento().getIdagendamento());
            pstm.setInt(5, idantigo);
            pstm.execute();

            String sql;
            sql = "UPDATE agendamento set data =?, valor=?, idfuncionario=?, idcliente=?  WHERE idagendamento = ?";
            pstm = conn.prepareStatement(sql);
            pstm.setDate(1, Date.valueOf(a.getAgendamento().getData()));
            pstm.setFloat(2, a.getAgendamento().getValor());
            pstm.setInt(3, a.getAgendamento().getFuncionario().getIdfuncionario());
            pstm.setInt(4, a.getAgendamento().getCliente().getIdcliente());
            pstm.setInt(5, a.getAgendamento().getIdagendamento());
            pstm.execute();

            this.desconectar();

            return true;
        } catch (Exception e) {
            System.out.println("ERRO AO ATUALIZAR AGENDAMENTO (00x129): " + e);
            return false;
        }
    }

    public boolean vincular(int idAgendamento, int idServico, String horario) {
        try {
            this.conectar();
            String sql = "INSERT INTO agendamento_servico (idagendamento, idservico, horario, status) VALUES (?,?,?,0)";
            pstm = conn.prepareStatement(sql);
            pstm.setInt(1, idAgendamento);
            pstm.setInt(2, idServico);
            pstm.setString(3, horario);
            pstm.execute();
            this.desconectar();
            return true;
        } catch (Exception e) {
            System.out.println("ERRO AO VINCULAR AGENDAMENTO (00x123): " + e);
            return false;
        }
    }

    public boolean excluir(int idagendamento, int idservico) {
        String sql = "DELETE from agendamento_servico WHERE idagendamento=? and idservico=?";
        try {
            this.conectar();
            pstm = conn.prepareStatement(sql);
            pstm.setInt(1, idagendamento);
            pstm.setInt(2, idservico);
            pstm.execute();
            this.desconectar();
            this.conectar();
            sql = "select idagendamento from agendamento_servico WHERE idagendamento=?";
            pstm = conn.prepareStatement(sql);
            pstm.setInt(1, idagendamento);
            rs = pstm.executeQuery();
            if (rs.next()) {
            } else {
                sql = "DELETE FROM agendamento WHERE idagendamento=?";
                pstm = conn.prepareStatement(sql);
                pstm.setInt(1, idagendamento);
                pstm.execute();
                this.desconectar();
            }
            return true;
        } catch (Exception e) {
            System.out.println("ERRO AO EXCLUIR VINCULO (00X133):" + e);
            return false;
        }

    }

    public ArrayList<AgendamentoServico> getHorariosMarcados(String data, int idfuncionario) throws Exception {
        ArrayList<AgendamentoServico> naodisponiveis = new ArrayList<>();
        System.out.println("" + data);
        String sql;
        if (idfuncionario > 0) {
            sql = "SELECT sa.horario, sa.idservico from agendamento_servico as sa INNER JOIN "
                    + "agendamento as a on a.idagendamento = sa.idagendamento WHERE a.data = ? AND a.idfuncionario = ? ";
        } else {
            sql = "SELECT sa.horario, sa.idservico from agendamento_servico as sa INNER JOIN "
                    + "agendamento as a on a.idagendamento = sa.idagendamento WHERE a.data = ? ";
        }
        this.conectar();
        pstm = conn.prepareStatement(sql);
        pstm.setString(1, data);
        if (idfuncionario > 0) {
            pstm.setInt(2, idfuncionario);
        }
        ResultSet rs = pstm.executeQuery();
        while (rs.next()) {
            AgendamentoServico as = new AgendamentoServico();
            as.setHorario(rs.getString("sa.horario"));
            Servico s = new Servico();
            s = s.getCarregaPorID(rs.getInt("sa.idservico"));
            as.setServico(s);
            as.setHorario(rs.getString("sa.horario"));
            naodisponiveis.add(as);
        }
        this.desconectar();
        return naodisponiveis;
    }

    public ArrayList<AgendamentoServico> getLista() throws Exception {
        ArrayList<AgendamentoServico> lista = new ArrayList<AgendamentoServico>();
        String sql = "SELECT a.*, sa.horario,sa.status, s.idservico,s.nome_servico, s.duracao FROM agendamento as a "
                + "INNER JOIN agendamento_servico as sa on a.idagendamento=sa.idagendamento "
                + "INNER join servico as s on s.idservico = sa.idservico "
                + "INNER JOIN cliente as c on c.idcliente = a.idcliente "
                + "INNER JOIN funcionario as f ON f.idfuncionario = a.idfuncionario ";
        this.conectar();
        Statement stm = conn.createStatement();
        ResultSet rs = stm.executeQuery(sql);
        while (rs.next()) {
            AgendamentoServico as = new AgendamentoServico();
            Agendamento a = new Agendamento();
            a.setIdagendamento(rs.getInt("a.idagendamento"));
            a.setData(rs.getString("a.data"));
            a.setValor(rs.getFloat("a.valor"));
            Cliente c = new Cliente();
            a.setCliente(c.getCarregaPorID(rs.getInt("idcliente")));
            Funcionario f = new Funcionario();
            a.setFuncionario(f.getCarregaPorID(rs.getInt("idfuncionario")));
            as.setAgendamento(a);
            Servico servico = new Servico();
            servico.setNome_servico(rs.getString("s.nome_servico"));
            servico.setIdservico(rs.getInt("s.idservico"));
            servico.setDuracao(rs.getInt("s.duracao"));
            as.setServico(servico);
            as.setListaDeHorarios(vincularHorarioAoAgendamento(a.getIdagendamento()));
            as.setHorario(rs.getString("sa.horario"));
            as.setStatus(rs.getInt("sa.status"));
            lista.add(as);
        }
        this.desconectar();
        return lista;
    }
    public ArrayList<AgendamentoServico> getListaPorCliente(int idcliente) throws Exception {
        ArrayList<AgendamentoServico> lista = new ArrayList<AgendamentoServico>();
        String sql = "SELECT a.*, sa.horario,sa.status, s.idservico,s.nome_servico, s.duracao FROM agendamento as a "
                + "INNER JOIN agendamento_servico as sa on a.idagendamento=sa.idagendamento "
                + "INNER join servico as s on s.idservico = sa.idservico "
                + "INNER JOIN cliente as c on c.idcliente = a.idcliente "
                + "INNER JOIN funcionario as f ON f.idfuncionario = a.idfuncionario WHERE a.idcliente = ? ORDER BY a.idagendamento DESC";
        this.conectar();
        pstm = conn.prepareStatement(sql);
        pstm.setInt(1, idcliente);
        ResultSet rs = pstm.executeQuery();
        while (rs.next()) {
            AgendamentoServico as = new AgendamentoServico();
            Agendamento a = new Agendamento();
            a.setIdagendamento(rs.getInt("a.idagendamento"));
            a.setData(rs.getString("a.data"));
            a.setValor(rs.getFloat("a.valor"));
            Cliente c = new Cliente();
            a.setCliente(c.getCarregaPorID(rs.getInt("idcliente")));
            Funcionario f = new Funcionario();
            a.setFuncionario(f.getCarregaPorID(rs.getInt("idfuncionario")));
            as.setAgendamento(a);
            Servico servico = new Servico();
            servico.setNome_servico(rs.getString("s.nome_servico"));
            servico.setIdservico(rs.getInt("s.idservico"));
            servico.setDuracao(rs.getInt("s.duracao"));
            as.setServico(servico);
            as.setListaDeHorarios(vincularHorarioAoAgendamento(a.getIdagendamento()));
            as.setHorario(rs.getString("sa.horario"));
            as.setStatus(rs.getInt("sa.status"));
            lista.add(as);
        }
        this.desconectar();
        return lista;
    }
    
    public ArrayList<AgendamentoServico> getListaDataDesc() throws Exception {
        ArrayList<AgendamentoServico> lista = new ArrayList<AgendamentoServico>();
        String sql = "SELECT a.*, sa.horario,sa.status, s.idservico,s.nome_servico, s.duracao,s.preco FROM agendamento as a "
                + "INNER JOIN agendamento_servico as sa on a.idagendamento=sa.idagendamento "
                + "INNER join servico as s on s.idservico = sa.idservico "
                + "INNER JOIN cliente as c on c.idcliente = a.idcliente "
                + "INNER JOIN funcionario as f ON f.idfuncionario = a.idfuncionario WHERE sa.status=0 ORDER by a.data asc, sa.horario asc ";
        this.conectar();
        Statement stm = conn.createStatement();
        ResultSet rs = stm.executeQuery(sql);
        while (rs.next()) {
            AgendamentoServico as = new AgendamentoServico();
            Agendamento a = new Agendamento();
            a.setIdagendamento(rs.getInt("a.idagendamento"));
            a.setData(rs.getString("a.data"));
            a.setValor(rs.getFloat("a.valor"));
            Cliente c = new Cliente();
            a.setCliente(c.getCarregaPorID(rs.getInt("idcliente")));
            Funcionario f = new Funcionario();
            a.setFuncionario(f.getCarregaPorID(rs.getInt("idfuncionario")));
            as.setAgendamento(a);
            Servico servico = new Servico();
            servico.setNome_servico(rs.getString("s.nome_servico"));
            servico.setIdservico(rs.getInt("s.idservico"));
            servico.setDuracao(rs.getInt("s.duracao"));
            servico.setPreco(rs.getFloat("s.preco"));
            as.setServico(servico);
            as.setListaDeHorarios(vincularHorarioAoAgendamento(a.getIdagendamento()));
            as.setHorario(rs.getString("sa.horario"));
            as.setStatus(rs.getInt("sa.status"));
            lista.add(as);
        }
        this.desconectar();
        return lista;
    }

    public ArrayList<Integer> getQuantidadePorStatus() throws Exception {
        ArrayList<Integer> lista = new ArrayList<Integer>();
        String sql = "SELECT "
                + "    count(case when status = 0 then 1 else null end) as agendado, "
                + "    count(case when status = 1 then 1 else null end) as realizado, "
                + "    count(case when status = 2 then 1 else null end) as cancelado "
                + "from agendamento_servico;";
        this.conectar();
        Statement stm = conn.createStatement();
        ResultSet rs = stm.executeQuery(sql);
        if (rs.next()) {
            int realizado = rs.getInt("agendado");
            int agendado = rs.getInt("realizado");
            int cancelado = rs.getInt("cancelado");
            lista.add(realizado);
            lista.add(agendado);
            lista.add(cancelado);
            
        }
        this.desconectar();
        System.out.println(lista.get(0));
        System.out.println(lista.get(1));
        System.out.println(lista.get(2));
        return lista;
    }

    public AgendamentoServico getUmAgendamento(int idagendamento, int idservico) throws Exception {
        AgendamentoServico as = new AgendamentoServico();
        String sql = "SELECT a.*, sa.horario,sa.status, s.* FROM agendamento as a "
                + "INNER JOIN agendamento_servico as sa on a.idagendamento = sa.idagendamento  "
                + "INNER join servico as s on s.idservico = sa.idservico "
                + "INNER JOIN cliente as c on c.idcliente = a.idcliente "
                + "INNER JOIN funcionario as f ON f.idfuncionario = a.idfuncionario WHERE a.idagendamento = ? AND s.idservico = ? ";
        this.conectar();
        pstm = conn.prepareStatement(sql);
        pstm.setInt(1, idagendamento);
        pstm.setInt(2, idservico);
        rs = pstm.executeQuery();
        if (rs.next()) {
            Agendamento a = new Agendamento();
            a.setIdagendamento(rs.getInt("a.idagendamento"));
            a.setData(rs.getString("a.data"));
            a.setValor(rs.getFloat("a.valor"));
            Cliente c = new Cliente();
            a.setCliente(c.getCarregaPorID(rs.getInt("idcliente")));
            Funcionario f = new Funcionario();
            a.setFuncionario(f.getCarregaPorID(rs.getInt("idfuncionario")));
            as.setAgendamento(a);
            Servico servico = new Servico();
            servico = servico.getCarregaPorID(rs.getInt("s.idservico"));
            as.setServico(servico);
            as.setHorario(rs.getString("sa.horario"));
            as.setStatus(rs.getInt("sa.status"));
        }
        this.desconectar();
        return as;
    }
    
    public List<AgendamentoServico> getPorAgendamento(int idagendamento) throws Exception {
        
        List<AgendamentoServico> lista = new ArrayList<>();
        String sql = "SELECT a.*, sa.horario,sa.status, s.* FROM agendamento as a "
                + "INNER JOIN agendamento_servico as sa on a.idagendamento = sa.idagendamento  "
                + "INNER join servico as s on s.idservico = sa.idservico "
                + "INNER JOIN cliente as c on c.idcliente = a.idcliente "
                + "INNER JOIN funcionario as f ON f.idfuncionario = a.idfuncionario WHERE a.idagendamento = ?  ";
        this.conectar();
        pstm = conn.prepareStatement(sql);
        pstm.setInt(1, idagendamento);
        rs = pstm.executeQuery();
        while(rs.next()){
            AgendamentoServico as = new AgendamentoServico();
            Agendamento a = new Agendamento();
            a.setIdagendamento(rs.getInt("a.idagendamento"));
            a.setData(rs.getString("a.data"));
            a.setValor(rs.getFloat("a.valor"));
            Cliente c = new Cliente();
            a.setCliente(c.getCarregaPorID(rs.getInt("idcliente")));
            Funcionario f = new Funcionario();
            a.setFuncionario(f.getCarregaPorID(rs.getInt("idfuncionario")));
            as.setAgendamento(a);
            Servico servico = new Servico();
            servico = servico.getCarregaPorID(rs.getInt("s.idservico"));
            as.setServico(servico);
            as.setHorario(rs.getString("sa.horario"));
            switch (rs.getInt("sa.status")) {
                case 0:
                    as.setSituacao("Agendado");
                    break;
                case 1:
                    as.setSituacao("Realizado");
                    break;
                default:
                    as.setSituacao("Não realizado");
                    break;
            }
            lista.add(as);
        }
        
        this.desconectar();
        return lista;
    }
    

    public ArrayList<String> vincularHorarioAoAgendamento(int idAgendamento) throws Exception {
        ArrayList<String> lista = new ArrayList<String>();
        String sql = "SELECT sa.horario FROM agendamento_servico as sa INNER JOIN agendamento as a on a.idagendamento = sa.idagendamento WHERE a.idagendamento = ? ";
        this.conectar();
        pstm = conn.prepareStatement(sql);
        pstm.setInt(1, idAgendamento);
        rs = pstm.executeQuery();
        while (rs.next()) {
            lista.add(rs.getString("sa.horario"));
        }
        this.desconectar();
        return lista;

    }

    public boolean realizaAgendamento(int idAgendamento, int idServico) {
        String sql = "UPDATE agendamento as a INNER JOIN agendamento_servico as sa on a.idagendamento = sa.idagendamento INNER JOIN servico as s on s.idservico = sa.idservico  set sa.status = 1 where a.idagendamento = ? and s.idservico = ?";
        try {
            this.conectar();
            pstm = conn.prepareStatement(sql);
            pstm.setInt(1, idAgendamento);
            pstm.setInt(2, idServico);
            pstm.execute();
            this.desconectar();
            return true;
        } catch (Exception e) {
            System.out.println("ERRO AO ATUALIZAR" + e);
            return false;
        }
    }

    public boolean naoRealizaAgendamento(int idAgendamento, int idServico, int status) {
        try {
            String sql = "UPDATE agendamento as a INNER JOIN agendamento_servico as sa on a.idagendamento = sa.idagendamento INNER JOIN servico as s on s.idservico = sa.idservico set sa.status = ? WHERE a.idagendamento = ? and s.idservico = ?";

            this.conectar();
            pstm = conn.prepareStatement(sql);
            pstm.setInt(1, status);
            pstm.setInt(2, idAgendamento);
            pstm.setInt(3, idServico);
            pstm.execute();
            this.desconectar();

            return true;
        } catch (Exception e) {
            System.out.println("");
            return false;
        }
    }
}
