package br.com.mjv.bank.dao;

import java.util.List;

import br.com.mjv.model.Hq;

public interface HqDao {
	
	public List<Hq> listar();
	
	public Hq incluir(Hq hq);
}
