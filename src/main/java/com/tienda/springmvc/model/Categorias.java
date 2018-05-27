package com.tienda.springmvc.model;

import static javax.persistence.GenerationType.IDENTITY;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "CATEGORIAS")
public class Categorias implements Serializable{
	
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "idCategoria", unique = true)
	private Integer idCategoria;
	
	@Column(name = "descripcionCategoria")
	private String descripcionCategoria;

	public Integer getIdCategoria() {
		return idCategoria;
	}

	public void setIdCategoria(Integer idCategoria) {
		this.idCategoria = idCategoria;
	}

	public String getDescripcionCategoria() {
		return descripcionCategoria;
	}

	public void setDescripcionCategoria(String descripcionCategoria) {
		this.descripcionCategoria = descripcionCategoria;
	}
	
	

}
