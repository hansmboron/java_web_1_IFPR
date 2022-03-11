package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Model.Fornecedor;

public class FornecedorDAO {
	public List<Fornecedor> getFornecedor() throws ClassNotFoundException, SQLException {
		Connection conexao = ConexaoJDBC.getConexao();
		PreparedStatement ps = conexao
				.prepareStatement("select id, email, nome, razao_social, cnpj from java_web.usuarios");
		ResultSet rs = ps.executeQuery();
		List<Fornecedor> fornecedores = new ArrayList<Fornecedor>();
		while (rs.next()) {
			fornecedores.add(
					new Fornecedor(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5)));
		}
		return fornecedores;
	}

	public static Fornecedor getFornecedorById(Integer id) throws ClassNotFoundException, SQLException {
		Connection conexao = ConexaoJDBC.getConexao();
		PreparedStatement ps = conexao
				.prepareStatement("SELECT id, email, nome, razao_social, cnpj FROM usuarios WHERE id = ? LIMIT 1");
		ps.setInt(1, id);
		ResultSet rs = ps.executeQuery();
		Fornecedor fornecedor = new Fornecedor();
		while (rs.next()) {
			fornecedor = new Fornecedor(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),
					rs.getString(5));
		}
		return fornecedor;
	}

	public static boolean salvar(Fornecedor fornecedor) throws ClassNotFoundException, SQLException {
		Connection conexao = ConexaoJDBC.getConexao();
		String sql = "INSERT INTO usuarios (nome, email, razao_social, cnpj) VALUES (?, ?, ?, ?)";
		PreparedStatement ps = conexao.prepareStatement(sql);
		ps.setString(1, fornecedor.getNome());
		ps.setString(2, fornecedor.getEmail());
		ps.setString(3, fornecedor.getRazaoSocial());
		ps.setString(4, fornecedor.getCnpj());
		return ps.execute();
	}

	public void excluir(Integer id) throws ClassNotFoundException, SQLException {
		Connection conexao = ConexaoJDBC.getConexao();
		System.out.println("Excluir");

		PreparedStatement ps = conexao.prepareStatement("DELETE FROM usuarios WHERE id = ?");
		ps.setInt(1, id);
		ps.execute();

	}

	public static boolean update(Fornecedor fornecedor) throws ClassNotFoundException, SQLException {
		Connection conexao = ConexaoJDBC.getConexao();
		String sql = "UPDATE usuarios SET nome = ?, email = ?, razao_social = ?, cnpj = ? WHERE id = ?";
		PreparedStatement ps = conexao.prepareStatement(sql);
		ps.setString(1, fornecedor.getNome());
		ps.setString(2, fornecedor.getEmail());
		ps.setString(3, fornecedor.getRazaoSocial());
		ps.setString(4, fornecedor.getCnpj());
		ps.setInt(5, fornecedor.getId());
		return ps.execute();
	}
}
