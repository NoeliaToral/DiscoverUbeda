package com.tienda.springmvc.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.Order;
import org.springframework.stereotype.Repository;

import com.tienda.springmvc.model.Productos;
import com.tienda.springmvc.model.User;

@Repository("productosDaoImpl")
public class ProductosDaoImp extends AbstractDao<Integer, Productos> implements ProductosDao {

	public List<Productos> listarProductos() {

		Criteria criteria = createEntityCriteria().addOrder(Order.asc("nombreProducto"));
		criteria.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);// To avoid duplicates.
		List<Productos> productos = (List<Productos>) criteria.list();
		return productos;
	}
	
	public void insertarProductos(Productos producto) {
		persist(producto);
			
			
		
	}
}
