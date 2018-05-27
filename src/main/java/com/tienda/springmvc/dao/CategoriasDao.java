package com.tienda.springmvc.dao;

import java.util.List;

import com.tienda.springmvc.model.Categorias;

public interface CategoriasDao {
	
	List<Categorias> listarCategorias();
	List<Categorias> listarComplementos(String descripcion);
	int findByDescripcion(String descripcion);

}
