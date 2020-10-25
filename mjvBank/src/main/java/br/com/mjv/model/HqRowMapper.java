package br.com.mjv.model;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;


/**
  *Classe de mapeamento do modelo{@link Hq} para a tabela TB_HQ
  *@author Victor de Paula
*/
public class HqRowMapper implements RowMapper<Hq> {
	
	@Override
	public Hq mapRow(ResultSet rs, int rowNum) throws SQLException {

		Hq hq = new Hq();
		
		hq.setId(rs.getInt("ID_HQ"));
		hq.setNome(rs.getString("NOME_HQ"));
		hq.setCapa(rs.getString("CAPA_HQ"));
		
		return hq;
	}
}
