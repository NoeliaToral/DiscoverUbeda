package com.tienda.springmvc.dao;

import java.util.List;

import com.tienda.springmvc.model.Productos;


public interface ProductosDao {
	List<Productos>listarProductos();
	void insertarProductos(Productos producto);
	public Productos findById(int id);
	List<Productos> listarProductosCategorias(int idCategoria);
	List<Productos> buscarProductosByNombre(String nombreProducto);
	int maxIdProductos();

}
