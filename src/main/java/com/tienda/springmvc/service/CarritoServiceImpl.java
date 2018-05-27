package com.tienda.springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tienda.springmvc.dao.CarritoDao;
import com.tienda.springmvc.model.Carrito;
import com.tienda.springmvc.model.Categorias;

@Service("carritoServiceImpl")
@Transactional
public class CarritoServiceImpl implements CarritoService{

	@Autowired
	private CarritoDao carritoDao;
	
	public void insertarCarrito(Carrito carrito) {
		carritoDao.insertarCarrito(carrito);
	}
	
	public List<Carrito> listarCarrito(){
		return carritoDao.listarCarrito();
	}
	
	public List<Carrito> listarCarritoUser(int id){
		return carritoDao.listarCarritoUser(id);
	}
	
	
}
