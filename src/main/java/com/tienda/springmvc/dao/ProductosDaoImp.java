package com.tienda.springmvc.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;
import com.tienda.springmvc.model.Productos;


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
	
	public Productos findById(int id) {
		Productos productos = getByKey(id);
		
		return productos;
	}
	
	public List<Productos> listarProductosCategorias(int idCategoria) {

		Criteria criteria = createEntityCriteria().addOrder(Order.asc("nombreProducto")).add(Restrictions.eq("categoria.idCategoria", idCategoria));
		List<Productos> productos = (List<Productos>) criteria.list();
		return productos;
	}
}
