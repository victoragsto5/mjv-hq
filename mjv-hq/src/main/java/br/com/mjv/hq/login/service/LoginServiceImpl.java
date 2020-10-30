package br.com.mjv.hq.login.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.mjv.hq.login.dao.LoginDao;
import br.com.mjv.hq.login.model.Login;

@Service
public class LoginServiceImpl implements LoginService {

	@Autowired
	private LoginDao dao;

	@Override
	public List<Login> listarLogin() {
		return dao.listar();
	}
}