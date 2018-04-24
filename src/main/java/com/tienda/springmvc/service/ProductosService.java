package com.tienda.springmvc.service;

import java.util.List;

import com.tienda.springmvc.model.Productos;

public interface ProductosService {

	List<Productos>listarProductos();
	void insertarProductos(Productos producto);

}
