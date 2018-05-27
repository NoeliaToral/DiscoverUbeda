package com.tienda.springmvc.service;

import java.util.List;

import com.tienda.springmvc.model.Categorias;

public interface CategoriasService {

	List<Categorias>listarCategorias();
	List<Categorias>listarComplementos(String descripcion);
	int findByDescripcion(String descripcion);
}
