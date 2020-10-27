package br.com.mjv.hq.home.dao;

import java.util.List;

import br.com.mjv.hq.home.model.Hq;

public interface HqDao {
	
	public List<Hq> listar();
	
	public Hq incluir(Hq hq);
}
