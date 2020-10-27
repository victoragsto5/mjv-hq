package br.com.mjv.hq.home.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import br.com.mjv.hq.home.model.Hq;
import br.com.mjv.hq.home.model.HqRowMapper;

@Repository
public class HqDaoImpl implements HqDao{
	
	@Autowired
	private NamedParameterJdbcTemplate template;
	
	@Override
	public List<Hq> listar() {
		try {
			String sql = " SELECT * FROM TB_HQ ";

			List<Hq> lista = this.template.query(sql, new HqRowMapper());
			
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
