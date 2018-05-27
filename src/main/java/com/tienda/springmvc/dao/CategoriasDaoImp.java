package com.tienda.springmvc.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Hibernate;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;
import com.tienda.springmvc.model.Categorias;
import com.tienda.springmvc.model.User;




@Repository("categoriasDaoImpl")
public class CategoriasDaoImp extends AbstractDao<Integer, Categorias> implements CategoriasDao {
	
	public List<Categorias> listarCategorias() {

		Criteria criteria =  createEntityCriteria();
		criteria.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);// To avoid duplicates.
		List<Categorias> categoria = (List<Categorias>) criteria.list();
		return categoria;
	}
	
	public List<Categorias> listarComplementos(String descripcion) {

		Criteria criteria =  createEntityCriteria().add(Restrictions.eq("descripcionCategoria", descripcion));
		List<Categorias> categoria = (List<Categorias>) criteria.list();
		return categoria;
	}

	public int findByDescripcion(String descripcion) {
		
		Criteria criteria =  createEntityCriteria().setProjection(Projections.property("idCategoria")).add(Restrictions.eq("descripcionCategoria", descripcion));
		int categoria = (int) criteria.uniqueResult();
		return categoria;
	}
	

}
