package br.com.mjv.hq.login.dao;

import java.util.List;

import br.com.mjv.hq.login.model.Login;

public interface LoginDao {
	
	public List<Login> listar();
	
	public Login incluir(Login login);
}
