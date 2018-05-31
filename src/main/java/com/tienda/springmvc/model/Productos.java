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
	private String descripcionCorta;
	private String descripcionLarga;
	private double precio;
	private String url;
	private String material;
	private String talla;
	private String url1;
	private String url2;
	private String url3;
	private String url4;
	private String url5;
	
	
	
	private Categorias categoria;

	public Productos() {
	}

	public Productos(Integer idProductos, String nombreProducto, String descripcionCorta, String descripcionLarga,
			double precio, String url, String material, String talla, String url1, String url2, String url3,
			String url4, String url5, Categorias categoria) {
		super();
		this.idProductos = idProductos;
		this.nombreProducto = nombreProducto;
		this.descripcionCorta = descripcionCorta;
		this.descripcionLarga = descripcionLarga;
		this.precio = precio;
		this.url = url;
		this.material = material;
		this.talla = talla;
		this.url1 = url1;
		this.url2 = url2;
		this.url3 = url3;
		this.url4 = url4;
		this.url5 = url5;
		this.categoria = categoria;
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

	@Column(name = "url1")
	public String getUrl1() {
		return url1;
	}

	public void setUrl1(String url1) {
		this.url1 = url1;
	}

	@Column(name = "url2")
	public String getUrl2() {
		return url2;
	}

	public void setUrl2(String url2) {
		this.url2 = url2;
	}

	@Column(name = "url3")
	public String getUrl3() {
		return url3;
	}

	public void setUrl3(String url3) {
		this.url3 = url3;
	}

	@Column(name = "url4")
	public String getUrl4() {
		return url4;
	}

	public void setUrl4(String url4) {
		this.url4 = url4;
	}

	@Column(name = "url5")
	public String getUrl5() {
		return url5;
	}

	public void setUrl5(String url5) {
		this.url5 = url5;
	}

	@Column(name = "descripcionCorta")
	public String getDescripcionCorta() {
		return descripcionCorta;
	}

	public void setDescripcionCorta(String descripcionCorta) {
		this.descripcionCorta = descripcionCorta;
	}

	@Column(name = "descripcionLarga")
	public String getDescripcionLarga() {
		return descripcionLarga;
	}

	public void setDescripcionLarga(String descripcionLarga) {
		this.descripcionLarga = descripcionLarga;
	}

	
	
	
}

