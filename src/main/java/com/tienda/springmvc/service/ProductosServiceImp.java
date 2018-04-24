package com.tienda.springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tienda.springmvc.dao.ProductosDao;
import com.tienda.springmvc.model.Productos;


@Service("productosService")
@Transactional
public class ProductosServiceImp implements ProductosService {

	@Autowired
	private ProductosDao productosDao;
	
	public List<Productos>listarProductos(){
		return productosDao.listarProductos();
		
	}
	
	public void insertarProductos(Productos producto) {
		productosDao.insertarProductos(producto);
	}

}
