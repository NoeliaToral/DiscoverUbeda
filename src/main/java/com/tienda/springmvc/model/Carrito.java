package com.tienda.springmvc.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;



@Entity
@Table(name="CARRITO")
public class Carrito implements Serializable{
	
	private static final long serialVersionUID = 1L;

	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id_venta;
	
	@Column(name="unidades")
	private int unidades;
	
	@ManyToOne
	@JoinColumn(name="idProductos")
	private Productos productos;
	
	@OneToOne
	@JoinColumn(name="carritoUser_id")
	private User user;
	
	public Carrito() {
		
	}
	
	public Carrito(int id_venta, int unidades, Productos productos) {
		super();
		this.id_venta = id_venta;
		this.unidades = unidades;
		this.productos = productos;
	}

	public int getId_venta() {
		return id_venta;
	}

	

	public void setId_venta(int id_venta) {
		this.id_venta = id_venta;
	}

	public int getUnidades() {
		return unidades;
	}

	public void setUnidades(int unidades) {
		this.unidades = unidades;
	}

	public Productos getProductos() {
		return productos;
	}

	public void setProductos(Productos productos) {
		this.productos = productos;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}


}
