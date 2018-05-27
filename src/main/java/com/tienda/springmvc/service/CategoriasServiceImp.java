package com.tienda.springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tienda.springmvc.dao.CategoriasDao;
import com.tienda.springmvc.model.Categorias;


@Service("categoriasService")
@Transactional
public class CategoriasServiceImp implements CategoriasService{
	
	@Autowired
	private CategoriasDao categoriasDao;
	
	public List<Categorias>listarCategorias(){
		return categoriasDao.listarCategorias();
	}
	
	public List<Categorias>listarComplementos(String descripcion){
		return categoriasDao.listarComplementos(descripcion);
	}
	
	public int findByDescripcion(String descripcion){
		return categoriasDao.findByDescripcion(descripcion);
	}
}

