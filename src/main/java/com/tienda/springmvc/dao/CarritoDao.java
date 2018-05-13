package com.tienda.springmvc.dao;

import java.util.List;

import com.tienda.springmvc.model.Carrito;

public interface CarritoDao {
	
	public void insertarCarrito(Carrito carrito);
	public List<Carrito> listarCarrito();
	public List<Carrito> listarCarritoUser(int id);

}
