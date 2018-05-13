package com.tienda.springmvc.service;

import java.util.List;

import com.tienda.springmvc.model.Carrito;

public interface CarritoService {

	public void insertarCarrito(Carrito carrito);
	public List<Carrito> listarCarrito();
	public List<Carrito> listarCarritoUser(int id);
}
