package br.com.mjv.hq.login.model;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;


/**
  *Classe de mapeamento do modelo{@link Login} para a tabela TB_USUARIO
  *@author Lucas Santana
*/
public class LoginRowMapper implements RowMapper<Login> {
	
	@Override
	public Login mapRow(ResultSet rs, int rowNum) throws SQLException {

		Login login = new Login();
		
		login.setId(rs.getString("ID_USUARIO"));
		login.setNome(rs.getString("NOME_USUARIO"));
		login.setSobrenome(rs.getString("SOBRENOME_USUARIO"));
		login.setSenha(rs.getString("SENHA_USUARIO"));
		
		return login;
	}
}