package com.tienda.springmvc.model;

import static javax.persistence.GenerationType.IDENTITY;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


@Entity
@Table(name = "PRODUCTOS")
public class Productos implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
	private Integer idProductos;
	private String nombreProducto;
	private String descripcion;
	
	private double precio;
	private String url;
	private String material;
	private String talla;
	
	
	private Categorias categoria;

	public Productos() {
	}

	public Productos(String nombreProducto, String descripcion, double precio) {
		this.nombreProducto = nombreProducto;
		this.descripcion = descripcion;
		this.precio = precio;
	}

	public Productos(String nombreProducto, String descripcion, double precio, String url, String material,
			String talla) {
		this.nombreProducto = nombreProducto;
		this.descripcion = descripcion;
		this.precio = precio;
		this.url = url;
		this.material = material;
		this.talla = talla;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "idProductos", unique = true, nullable = false)
	public Integer getIdProductos() {
		return this.idProductos;
	}

	public void setIdProductos(Integer idProductos) {
		this.idProductos = idProductos;
	}

	@Column(name = "nombreProducto", nullable = false, length = 15)
	public String getNombreProducto() {
		return this.nombreProducto;
	}

	public void setNombreProducto(String nombreProducto) {
		this.nombreProducto = nombreProducto;
	}

	@Column(name = "descripcion", nullable = false, length = 100)
	public String getDescripcion() {
		return this.descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	@Column(name = "precio", nullable = false, precision = 22, scale = 0)
	public double getPrecio() {
		return this.precio;
	}

	public void setPrecio(double precio) {
		this.precio = precio;
	}

	@Column(name = "url", length = 30)
	public String getUrl() {
		return this.url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	@Column(name = "material", length = 20)
	public String getMaterial() {
		return this.material;
	}

	public void setMaterial(String material) {
		this.material = material;
	}

	@Column(name = "talla", length = 5)
	public String getTalla() {
		return this.talla;
	}

	public void setTalla(String talla) {
		this.talla = talla;
	}

	@ManyToOne
	@JoinColumn(name="idCategoria")
	public Categorias getCategoria() {
		return categoria;
	}

	public void setCategoria(Categorias categoria) {
		this.categoria = categoria;
	}

	
	
}

