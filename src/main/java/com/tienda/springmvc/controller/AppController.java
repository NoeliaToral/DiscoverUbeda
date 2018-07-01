package com.tienda.springmvc.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.security.authentication.AuthenticationTrustResolver;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.rememberme.PersistentTokenBasedRememberMeServices;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import com.tienda.springmvc.model.Carrito;
import com.tienda.springmvc.model.Categorias;
import com.tienda.springmvc.model.Productos;
import com.tienda.springmvc.model.User;
import com.tienda.springmvc.model.UserProfile;
import com.tienda.springmvc.service.CarritoService;
import com.tienda.springmvc.service.CategoriasService;
import com.tienda.springmvc.service.ProductosService;
import com.tienda.springmvc.service.UserProfileService;
import com.tienda.springmvc.service.UserService;

@Controller
@RequestMapping("/")
@SessionAttributes("roles")
public class AppController {

	@Autowired
	UserService userService;

	@Autowired
	UserProfileService userProfileService;

	@Autowired
	MessageSource messageSource;

	@Autowired
	PersistentTokenBasedRememberMeServices persistentTokenBasedRememberMeServices;

	@Autowired
	AuthenticationTrustResolver authenticationTrustResolver;

	@Autowired
	ProductosService productosService;

	@Autowired
	CommonsMultipartResolver resolver;
	
	@Autowired
	CarritoService carritoService;
	
	@Autowired
	CategoriasService categoriasService;

	/**
	 * This method will list all existing users.
	 */
	@RequestMapping(value = {"/list" }, method = RequestMethod.GET)
	public String listUsers(ModelMap model) {

		List<User> users = userService.findAllUsers();
		model.addAttribute("users", users);
		model.addAttribute("loggedinuser", getPrincipal());
		return "userslist";
	}

	/**
	 * This method will provide the medium to add a new user.
	 */
	@RequestMapping(value = { "/newuser" }, method = RequestMethod.GET)
	public String newUser(ModelMap model) {
		User user = new User();
		model.addAttribute("user", user);
		model.addAttribute("edit", false);
		model.addAttribute("loggedinuser", getPrincipal());
		return "registration";
	}

	/**
	 * This method will be called on form submission, handling POST request for
	 * saving user in database. It also validates the user input
	 */
	@RequestMapping(value = { "/newuser" }, method = RequestMethod.POST)
	public String saveUser(@Valid User user, BindingResult result, ModelMap model) {

		if (result.hasErrors()) {
			return "registration";
		}

		/*
		 * Preferred way to achieve uniqueness of field [sso] should be implementing
		 * custom @Unique annotation and applying it on field [sso] of Model class
		 * [User].
		 * 
		 * Below mentioned peace of code [if block] is to demonstrate that you can fill
		 * custom errors outside the validation framework as well while still using
		 * internationalized messages.
		 * 
		 */
		if (!userService.isUserSSOUnique(user.getId(), user.getSsoId())) {
			FieldError ssoError = new FieldError("user", "ssoId", messageSource.getMessage("non.unique.ssoId",
					new String[] { user.getSsoId() }, Locale.getDefault()));
			result.addError(ssoError);
			return "registration";
		}

		userService.saveUser(user);

		model.addAttribute("success",
				"Usuario " + user.getFirstName() + " " + user.getLastName() + " registrado satisfactoriamente");
		model.addAttribute("loggedinuser", getPrincipal());
		// return "success";
		return "registrationsuccess";
	}

	/**
	 * This method will provide the medium to update an existing user.
	 */
	@RequestMapping(value = { "/edit-user-{ssoId}" }, method = RequestMethod.GET)
	public String editUser(@PathVariable String ssoId, ModelMap model) {
		User user = userService.findBySSO(ssoId);
		model.addAttribute("user", user);
		model.addAttribute("edit", true);
		model.addAttribute("loggedinuser", getPrincipal());
		return "registration";
	}

	/**
	 * This method will be called on form submission, handling POST request for
	 * updating user in database. It also validates the user input
	 */
	@RequestMapping(value = { "/edit-user-{ssoId}" }, method = RequestMethod.POST)
	public String updateUser(@Valid User user, BindingResult result, ModelMap model, @PathVariable String ssoId) {

		if (result.hasErrors()) {
			return "registration";
		}

		/*
		 * //Uncomment below 'if block' if you WANT TO ALLOW UPDATING SSO_ID in UI which
		 * is a unique key to a User. if(!userService.isUserSSOUnique(user.getId(),
		 * user.getSsoId())){ FieldError ssoError =new
		 * FieldError("user","ssoId",messageSource.getMessage("non.unique.ssoId", new
		 * String[]{user.getSsoId()}, Locale.getDefault())); result.addError(ssoError);
		 * return "registration"; }
		 */

		userService.updateUser(user);

		model.addAttribute("success",
				"Usuario " + user.getFirstName() + " " + user.getLastName() + " actualizado satisfactoriamente");
		model.addAttribute("loggedinuser", getPrincipal());
		return "registrationsuccess";
	}

	/**
	 * This method will delete an user by it's SSOID value.
	 */
	@RequestMapping(value = { "/delete-user-{ssoId}" }, method = RequestMethod.GET)
	public String deleteUser(@PathVariable String ssoId) {
		userService.deleteUserBySSO(ssoId);
		return "redirect:/list";
	}

	/**
	 * This method will provide UserProfile list to views
	 */
	@ModelAttribute("roles")
	public List<UserProfile> initializeProfiles() {
		return userProfileService.findAll();
	}

	/**
	 * This method handles Access-Denied redirect.
	 */
	@RequestMapping(value = "/Access_Denied", method = RequestMethod.GET)
	public String accessDeniedPage(ModelMap model) {
		model.addAttribute("loggedinuser", getPrincipal());
		return "accessDenied";
	}

	/**
	 * This method handles login GET requests. If users is already logged-in and
	 * tries to goto login page again, will be redirected to list page.
	 */
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginPage() {
		if (isCurrentAuthenticationAnonymous()) {
			return "login";
		} else {
			return "redirect:/list";
		}
	}

	/**
	 * This method handles logout requests. Toggle the handlers if you are
	 * RememberMe functionality is useless in your app.
	 */
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logoutPage(HttpServletRequest request, HttpServletResponse response) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null) {
			// new SecurityContextLogoutHandler().logout(request, response, auth);
			persistentTokenBasedRememberMeServices.logout(request, response, auth);
			SecurityContextHolder.getContext().setAuthentication(null);
		}
		return "redirect:/login?logout";
	}

	/**
	 * This method returns the principal[user-name] of logged-in user.
	 */
	private String getPrincipal() {
		String userName = null;
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

		if (principal instanceof UserDetails) {
			userName = ((UserDetails) principal).getUsername();
		} else {
			userName = principal.toString();
		}
		return userName;
	}

	/**
	 * This method returns true if users is already authenticated [logged-in], else
	 * false.
	 */
	private boolean isCurrentAuthenticationAnonymous() {
		final Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		return authenticationTrustResolver.isAnonymous(authentication);
	}

	

	@RequestMapping(value = "/insertarProductos", method = RequestMethod.GET)
	public String insertar(ModelMap model) {
		//Primero cargamos el jsp diciendo que vamos a obtener un producto
		Productos producto = new Productos();
		model.addAttribute("productos", producto);
		
		return "insertarProductos";
	}

	@RequestMapping(value = { "/insertarProductos" }, method = RequestMethod.POST)
	public String insertarProductos(@Valid Productos productos,
			BindingResult result, @RequestParam("filePrincipal") MultipartFile file, @RequestParam("fileUno") MultipartFile fileUno,
			@RequestParam("fileDos") MultipartFile fileDos,@RequestParam("fileTres") MultipartFile fileTres,
			@RequestParam("fileCuatro") MultipartFile fileCuatro, @RequestParam("fileCinco") MultipartFile fileCinco)
			throws IOException {
		

		//Obtenemos el maximo id para meterlo en la carpeta +1 
		int maximoId = productosService.maxIdProductos() + 1;
		
		String url = "C:\\Users\\gatyt\\Documents\\GitHub\\DiscoverUbeda\\src\\main\\webapp\\static\\imgProductos\\" + maximoId + "\\";
		
		//Recogemos todas las imagenes
		if (!file.isEmpty()) {
			try {
				//String url = "C:\\Users\\gatyt\\Documents\\GitHub\\DiscoverUbeda\\src\\main\\webapp\\static\\imgProductos\\" + maximoId + "\\";
				//String url = "http:\\188.166.174.201\\static\\imgProductos\\" + maximoId + "\\";

				byte[] bytes = file.getBytes();
				
				File url2 = new File(url);
				// Creamos el directorio para almacenar el archivo	
				if (!url2.exists())
					url2.mkdirs();
				File dirFile = new File(url + File.separator + file.getOriginalFilename());
				productos.setUrl("static/imgProductos/" + maximoId + "/" + file.getOriginalFilename());
				// Crear documento en la carpeta
				BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(dirFile));
				
				stream.write(bytes);
				stream.close();

				System.out.println( "Documento subido correctamente = " + file.getOriginalFilename() + " Ubicacion del Archivo = " + dirFile.getAbsolutePath());
			} catch (Exception e) {
				System.out.println( "Ocurrio un error al subir documento" + file.getOriginalFilename() + " => " + e.getMessage());
			}
		} else {
			System.out.println("Ocurrio un error al subir " + file.getOriginalFilename() + " documento vacio.");
		}

		
				
		if(!fileUno.isEmpty()) {
			try {
				//String url1 = "C:\\Users\\gatyt\\Documents\\GitHub\\DiscoverUbeda\\src\\main\\webapp\\static\\imgProductos\\" + maximoId + "\\";
				//String url1 = "http:\\188.166.174.201\\static\\imgProductos\\" + maximoId + "\\";
				byte[] bytesUno = fileUno.getBytes();
				File dirFileUno = new File(url + File.separator + fileUno.getOriginalFilename());
				productos.setUrl1("static/imgProductos/" + maximoId + "/"  + fileUno.getOriginalFilename());
				BufferedOutputStream stream1 = new BufferedOutputStream(new FileOutputStream(dirFileUno));
				stream1.write(bytesUno);
				stream1.close();
			}catch (Exception e) {
				System.out.println( "Ocurrio un error al subir documento" + fileUno.getOriginalFilename() + " => " + e.getMessage());
			}
		}
		
		if(!fileDos.isEmpty()) {
			try {
				//String url2 = "C:\\Users\\gatyt\\Documents\\GitHub\\DiscoverUbeda\\src\\main\\webapp\\static\\imgProductos\\" + maximoId + "\\";
				//String url2 = "http:\\188.166.174.201\\static\\imgProductos\\" + maximoId + "\\";
				byte[] bytesDos = fileDos.getBytes();
				File dirFileDos = new File(url + fileDos.getOriginalFilename());
				productos.setUrl2("static/imgProductos/" + maximoId + "/" + fileDos.getOriginalFilename());
				BufferedOutputStream stream2 = new BufferedOutputStream(new FileOutputStream(dirFileDos));
				stream2.write(bytesDos);
				stream2.close();
			}catch (Exception e) {
				System.out.println( "Ocurrio un error al subir documento" + fileDos.getOriginalFilename() + " => " + e.getMessage());
			}
		}
		
		if(!fileTres.isEmpty()) {
			try {
				//String url3 = "C:\\Users\\gatyt\\Documents\\GitHub\\DiscoverUbeda\\src\\main\\webapp\\static\\imgProductos\\" + maximoId + "\\";
				//String url3 = "http:\\188.166.174.201\\static\\imgProductos\\" + maximoId + "\\";
				byte[] bytesTres = fileTres.getBytes();
				File dirFileTres = new File(url+ fileTres.getOriginalFilename());
				productos.setUrl3("static/imgProductos/" + maximoId + "/" + fileTres.getOriginalFilename());
				BufferedOutputStream stream3 = new BufferedOutputStream(new FileOutputStream(dirFileTres));
				stream3.write(bytesTres);
				stream3.close();
			}catch (Exception e) {
				System.out.println( "Ocurrio un error al subir documento" + fileTres.getOriginalFilename() + " => " + e.getMessage());
			}
		}
		
		if(!fileCuatro.isEmpty()) {
			try {
				//String url4 = "C:\\Users\\gatyt\\Documents\\GitHub\\DiscoverUbeda\\src\\main\\webapp\\static\\imgProductos\\" + maximoId + "\\";
				//String url4 = "http:\\188.166.174.201\\static\\imgProductos\\" + maximoId + "\\";
				byte[] bytesCuatro = fileCuatro.getBytes();
				File dirFileCuatro = new File(url + fileCuatro.getOriginalFilename());
				productos.setUrl4("static/imgProductos/" + maximoId + "/" + fileCuatro.getOriginalFilename());
				BufferedOutputStream stream4 = new BufferedOutputStream(new FileOutputStream(dirFileCuatro));
				stream4.write(bytesCuatro);
				stream4.close();
			}catch (Exception e) {
				System.out.println( "Ocurrio un error al subir documento" + fileCuatro.getOriginalFilename() + " => " + e.getMessage());
			}
		}
		
		if(!fileCinco.isEmpty()) {
			try {
				//String url5 = "C:\\Users\\gatyt\\Documents\\GitHub\\DiscoverUbeda\\src\\main\\webapp\\static\\imgProductos\\" + maximoId + "\\";
				//String url5 = "http:\\188.166.174.201\\static\\imgProductos\\" + maximoId + "\\";
				byte[] bytesCinco = fileCinco.getBytes();
				File dirFileCinco = new File(url + fileCinco.getOriginalFilename());
				productos.setUrl5("static/imgProductos/" + maximoId + "/" + fileCinco.getOriginalFilename());
				BufferedOutputStream stream5 = new BufferedOutputStream(new FileOutputStream(dirFileCinco));
				stream5.write(bytesCinco);
				stream5.close();
			}catch (Exception e) {
				System.out.println( "Ocurrio un error al subir documento" + fileCinco.getOriginalFilename() + " => " + e.getMessage());
			}
		}
	
		//Insertamos el producto en la BBDD
		productosService.insertarProductos(productos);
		
		return "insertadoOK";
	}

	
	@RequestMapping(value = {"/", "/listarProductos" }, method = RequestMethod.GET)
	public String listProductos(ModelMap model) {

		//Buscamos todos los productos en la base de datos y los pasamos a la vista
		List<Productos> listadoProductos = productosService.listarProductos();
		model.addAttribute("listado", listadoProductos);
		return "listadoProductos";
	}
		
	@RequestMapping(value=  { "/listarCategorias-{descripcion}" }, method = RequestMethod.GET)
	public String listadoCategorias(@PathVariable String descripcion,ModelMap model) {
		
		//Buscamos el id de la categoria elegida
		int idCategoria = categoriasService.findByDescripcion(descripcion);
		//Sacamos los productos que tengan esa categoria
		List<Productos> listadoProductos = productosService.listarProductosCategorias(idCategoria);
		
		model.addAttribute("listado", listadoProductos);
				
		return "listadoProductos";
		
	}
	
	@RequestMapping(value=  { "/buscarProductos" }, method = RequestMethod.POST)
	public String buscarProductos(HttpServletRequest req, ModelMap model) {
		
		//Buscamos en la base de datos por el nombre del producto
		String nombreProducto = "%"+ req.getParameter("nombreProducto") +"%";
		List<Productos> listadoProductos = productosService.buscarProductosByNombre(nombreProducto);
		model.addAttribute("listado", listadoProductos);
		
		return "listadoProductos";
	}

	
	@RequestMapping(value=  { "/verProducto-{id}" }, method = RequestMethod.GET)
	public String verProducto(ModelMap model,@PathVariable int id) {
		
		//Recogemos el id del producto seleccionado y lo pasamos a la vista
		Productos listadoProductos = productosService.findById(id);
		model.addAttribute("listado", listadoProductos);
		
		return "verProducto";
	}
	
	@RequestMapping(value=  { "/comprarProducto-{idProductos}" }, method = RequestMethod.GET)
	public String comprarProducto(@PathVariable int idProductos, ModelMap model, HttpServletRequest req) {
		
		User user = new User();
		
		String username = getPrincipal();
		user = userService.findBySSO(username);
		
			
		System.out.println("id producto: "+idProductos);
		Productos productos  = productosService.findById(idProductos);
		
		int unidades = 1;
		Carrito carrito = new Carrito();
		carrito.setUser(user);
		carrito.setProductos(productos);
		carrito.setUnidades(unidades);
		carritoService.insertarCarrito(carrito);
		
		System.out.println("id user: "+user.getId());
		
		List<Carrito> listadoCarrito = carritoService.listarCarritoUser(user.getId());
		
		List<Productos> productosListar = new ArrayList<Productos>();
		
		double precio = 0;
		
		for (Carrito lista: listadoCarrito) {
			lista.getProductos();
			productosListar.add(lista.getProductos());
			precio = precio + lista.getProductos().getPrecio();
		}
		//model.addAttribute("listadoCarrito", listadoCarrito);
		model.addAttribute("productosListar", productosListar);
		model.addAttribute("loggedinuser", getPrincipal());
		model.addAttribute("precio", precio);
				
		return "listadoCarrito";
	}
	
	@RequestMapping(value=  { "/carrito" }, method = RequestMethod.GET)
	public String carrito(ModelMap model) {
		List<Productos> productosListar = new ArrayList<Productos>();
		User user = new User();
		String username = getPrincipal();
		user = userService.findBySSO(username);
		List<Carrito> listadoCarrito = carritoService.listarCarritoUser(user.getId());
		
		//calcular el precio total
		double precio = 0;
		
		for (Carrito lista: listadoCarrito) {
			lista.getProductos();
			productosListar.add(lista.getProductos());
			precio = precio + lista.getProductos().getPrecio();
		}
		
		model.addAttribute("productosListar", productosListar);
		model.addAttribute("precio", precio);
		return "listadoCarrito";
	}
	
	@RequestMapping(value=  { "/contacto" }, method = RequestMethod.GET)
	public String contacto() {
		
		return "contacto";
	}
	
	@RequestMapping(value=  { "/cookies" }, method = RequestMethod.GET)
	public String cookies() {
		
		return "cookies";
	}
	
	@RequestMapping(value=  { "/terminosServicios" }, method = RequestMethod.GET)
	public String terminosServicios() {
		
		return "terminosServicios";
	}
	
	@RequestMapping(value=  { "/politicaPrivacidad" }, method = RequestMethod.GET)
	public String politicaPrivacidad() {
		
		return "politicaPrivacidad";
	}
	
	@RequestMapping(value=  { "/construccion" }, method = RequestMethod.GET)
	public String construccion() {
		
		return "construccion";
	}
	
	
	
}