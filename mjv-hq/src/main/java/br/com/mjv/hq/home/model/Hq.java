package br.com.mjv.hq.home.model;

public class Hq {
	
	private Integer id;
	private String nome;
	private String capa;
	private String descricao;
	
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getCapa() {
		return capa;
	}
	public void setCapa(String capa) {
		this.capa = capa;
	} 

}
