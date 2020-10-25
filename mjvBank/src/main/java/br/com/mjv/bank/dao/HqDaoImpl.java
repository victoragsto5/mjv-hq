package br.com.mjv.bank.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;

import br.com.mjv.model.Cliente;
import br.com.mjv.model.ClienteRowMapper;
import br.com.mjv.model.Hq;
import br.com.mjv.model.HqRowMapper;

public class HqDaoImpl implements HqDao{

	
	@Autowired
	private NamedParameterJdbcTemplate template;
	
	@Override
	public List<Hq> listar() {
		try {
			String sql = " SELECT * FROM TB_HQ ";

			MapSqlParameterSource params = new MapSqlParameterSource();
			
			List<Hq> lista = this.template.queryForList(sql, params, Hq.class);
			
			return lista;
		} catch (EmptyResultDataAccessException e) {
			return null;
		}
	}

	@Override
	public Hq incluir(Hq hq) {
		return null;
	}
	
}
