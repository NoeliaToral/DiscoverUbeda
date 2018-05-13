package com.tienda.springmvc.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Hibernate;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.tienda.springmvc.model.Carrito;


@Repository("carritoDaoImpl")
public class CarritoDaoImpl extends AbstractDao<Integer, Carrito> implements CarritoDao {
	
	public void insertarCarrito(Carrito carrito) {
		persist(carrito);
	}
	
	public List<Carrito> listarCarrito() {

		Criteria criteria = createEntityCriteria().addOrder(Order.asc("id_venta"));
		criteria.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);// To avoid duplicates.
		List<Carrito> carrito = (List<Carrito>) criteria.list();
		return carrito;
	}
	
	public List<Carrito> listarCarritoUser(int id){
		
		Criteria criteria = createEntityCriteria().add(Restrictions.like("user.id", id));
		criteria.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);// To avoid duplicates.
		List<Carrito> carrito = (List<Carrito>) criteria.list();
		return carrito;
	}

}
