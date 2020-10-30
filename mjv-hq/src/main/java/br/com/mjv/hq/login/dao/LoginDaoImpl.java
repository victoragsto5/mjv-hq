package br.com.mjv.hq.login.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import br.com.mjv.hq.login.model.Login;
import br.com.mjv.hq.login.model.LoginRowMapper;

@Repository
public class LoginDaoImpl implements LoginDao {

	@Autowired
	private NamedParameterJdbcTemplate template;
	
	@Override
	public List<Login> listar() {
		try {
			String sql = " SELECT * FROM TB_LOGIN ";

			List<Login> lista = this.template.query(sql, new LoginRowMapper());
			
			return lista;
		} 
		
		catch (EmptyResultDataAccessException e) {
			return null;
		}
	}
	
	@Override
	public Login incluir(Login login) {
		return null;
	}
}
	
	
