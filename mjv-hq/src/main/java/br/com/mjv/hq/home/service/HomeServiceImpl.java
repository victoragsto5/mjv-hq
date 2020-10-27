package br.com.mjv.hq.home.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.mjv.hq.home.dao.HqDao;
import br.com.mjv.hq.home.model.Hq;

@Service
public class HomeServiceImpl implements HomeService {

	@Autowired
	private HqDao dao;

	@Override
	public List<Hq> listarHQs() {
		return dao.listar();
	}
}
