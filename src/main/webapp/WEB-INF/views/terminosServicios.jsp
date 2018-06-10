<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Discover �beda, artesan�a, regalos, heraldica, complementos, recuerdos, souvenirs." />

<spring:url value="static/css/bootstrap.css" var="bootstrap" />
<link href="${bootstrap}" rel="stylesheet" />
<spring:url value="static/css/style.css" var="estiloCss" />
<link href="${estiloCss}" rel="stylesheet" />
<link href='http://fonts.googleapis.com/css?family=Lato:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>

<script type="text/javascript" src="static/js/hover_pack.js"></script>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

<style type="text/css">
p{
	text-align: justify;
	line-height: -5px;
}
</style>
</head>
<body>
<div class="header">
	<div class="header_top">
		<div class="container">
			<div class="logo">
				<a href="index.html"><img class="logo" src="static/images/logo.png" alt=""/></a>
			</div>
			<ul class="shopping_grid">
			      <li><a href="newuser">Crear cuenta</a></li>
			      <li><a href="login">Iniciar sesi�n</a></li>
			      <li><a href="carrito"><span class="m_1">Carrito compra</span>&nbsp;&nbsp;&nbsp;<img src="static/images/bag.png" alt=""/></a></li>
			      <div class="clearfix"> </div>
			</ul>
		    <div class="clearfix"> </div>
		</div>
	</div>
	<div class="h_menu4"><!-- start h_menu4 -->
		<div class="container">
				<a class="toggleMenu" href="#">Menu</a>
				<ul class="nav">
					<li><a href="listarProductos" data-hover="Home">Inicio</a></li>
					<li><a href="https://discover-ubeda-visitas-guiadas9.webnode.es/" data-hover="Visitas guiadas">Visitas guiadas</a></li>
					<li><a href="contacto" data-hover="Contactanos">Cont�ctanos</a></li>
					<li><a href="construccion" data-hover="Leyendas">Leyendas</a></li>
					<li><a href="construccion" data-hover="Gastronomia">Gastronom�a</a></li>
					<sec:authorize access="hasRole('ADMIN')">
						<li><a href="insertarProductos" data-hover="insertarProductos">Insertar productos</a></li>
					</sec:authorize>
					<sec:authorize access="hasRole('ADMIN') or hasRole('EMPLEADOS')">
						<li><a href="<c:url value="/logout" />">Logout</a></li>
					</sec:authorize>
					
				 </ul>
				 <script type="text/javascript" src="static/js/nav.js"></script>
	      </div><!-- end h_menu4 -->
     </div>
</div>

<div class="container">
	<h2 class="tituloH2">Condiciones de uso</h2>
	  <p>Te rogamos que leas detenidamente las presentes condiciones antes de utilizar los Servicios de Discover �beda. Al utilizar los Servicios de Discover �beda, aceptas quedar vinculado por las presentes condiciones. Ofrecemos una amplia gama de Servicios de Discover �beda y en ocasiones pueden aplicarse condiciones adicionales. Adem�s, cada vez que utilices cualquier Servicio de Discover �beda, (por ejemplo: aplicaciones de Discover �beda para dispositivos m�viles), estar�s igualmente sujeto a los t�rminos y condiciones generales y a las condiciones particulares aplicables a dichos Servicios de Discover �beda (las "Condiciones Generales de los Servicios"). Las Condiciones Generales de los Servicios prevalecer�n sobre las presentes Condiciones de Uso en caso de discrepancia entre ambas.</p>
	  <h3>1. Comunicaciones electr�nicas</h3>
	  <p>Cada vez que utilices un Servicio de Discover �beda o nos env�es un correo electr�nico, un mensaje de texto (SMS) o cualquier otra comunicaci�n desde tu ordenador o dispositivo m�vil, estar� comunic�ndose electr�nicamente con nosotros. Nosotros nos pondremos en contacto contigo electr�nicamente por distintos medios, como por ejemplo mediante correo electr�nico, mensajes de texto (SMS), notificaciones dentro de aplicaciones, o publicando mensajes o comunicaciones por correo electr�nico en el sitio web o a trav�s de cualquier otro Servicio de Discover �beda, como por ejemplo nuestro Servicio de mensajer�a. A efectos del presente contrato, aceptas que todos los contratos, avisos y otras notificaciones y comunicaciones que te enviemos por medios electr�nicos satisfacen cualquier requisito de forma escrita, salvo que cualquier legislaci�n aplicable con car�cter imperativo exigiera una forma distinta de comunicaci�n.<p>
	  <h3>2.  Recomendaciones y personalizaci�n</h3>
	<p>Como parte del Servicio de Discover �beda, te recomendaremos funcionalidades, productos y servicios, incluyendo anuncios de terceros, que podr�an ser de tu inter�s, identificar tus preferencias y personalizar tu experiencia</p>
	<h3>3. Derechos de autor, derechos de propiedad intelectual y derechos sobre bases de datos</h3>
	<p>Todo contenido alojado o puesto a disposici�n en cualquiera de los Servicios de Discover �beda, como por ejemplo texto, gr�ficos, logotipos, iconos de botones, im�genes, clips de audio, descargas digitales, y recopilaciones de datos son propiedad de Discover �beda o de sus proveedores de contenido y est� protegido por las leyes de Espa�a as� como por la legislaci�n internacional sobre derechos de propiedad intelectual, derechos de autor y derechos sobre bases de datos. El conjunto de todo el contenido albergado o puesto a disposici�n a trav�s de cualquier Servicio de Discover �beda es propiedad exclusiva de Discover �beda, y est� protegido por las leyes de Espa�a e internacionales sobre derechos de propiedad intelectual y derechos sobre bases de datos.</p>
	<p>No est� permitida la extracci�n sistem�tica ni la reutilizaci�n de parte alguna del contenido de ninguno de los Servicios de Discover �beda sin nuestro expreso consentimiento por escrito. En particular, no se permite el uso de herramientas o robots de b�squeda y extracci�n de datos para la extracci�n (ya sea en una o varias ocasiones) de partes sustanciales de los Servicios de Discover �beda para su reutilizaci�n sin nuestro expreso consentimiento por escrito. Tampoco le est� permitido al usuario crear ni publicar sus propias bases de datos cuando �stas contengan partes sustanciales de cualquiera de los Servicios de Discover �beda (por ejemplo, nuestras listas de productos y listas de precios) sin nuestro expreso consentimiento por escrito.</p>
	<h3>4. Marcas registradas</h3>
	<p>De forma adicional, los gr�ficos, logotipos, encabezados de p�gina, iconos de bot�n, scripts y nombres de servicio que aparecen incluidos o est�n disponibles a trav�s de los Servicios de Discover �beda son marcas registradas o representan la imagen comercial de Discover �beda. No podr�n utilizarse las marcas registradas ni la imagen comercial de Discover �beda en relaci�n con ning�n producto o servicio que no pertenezca a Discover �beda, ni en ninguna forma que fuera susceptible de causar confusi�n entre los usuarios o que pueda menospreciar o desacreditar a Discover �beda. El resto de marcas registradas que no son propiedad de Discover �beda y que aparecen incluidos o est�n disponibles a trav�s de los Servicios de Discover �beda pertenecen a sus respectivos propietarios, quienes podr�n o no estar afiliados o relacionados de cualquier modo con Discover �beda, o patrocinados por Discover �beda.</p>
	<h3>5. Patentes</h3>
	<p>Diversas patentes pertenecientes a Discover �beda son aplicables a los Servicios de Discover �beda as� como a las funciones y servicios accesibles a trav�s de los mismos. Por otro lado, diferentes partes de los Servicios de Discover �beda operan en virtud de distintas licencias de una o varias patentes. <p>
	<h3>6. Licencia y acceso</h3>
	<p>Sujeto a tu cumplimiento de estas Condiciones de Uso y las Condiciones Generales de los Servicios aplicables as� como al pago del precio aplicable, en su caso, Discover �beda o sus proveedores de contenidos te conceden una licencia limitada no exclusiva, no transferible y no sublicenciable, de acceso y utilizaci�n, a los Servicios de Discover �beda para fines personales no comerciales. Dicha licencia no incluye derecho alguno de reventa ni de uso comercial de los Servicios de Discover �beda ni de sus contenidos, ni derecho alguno a compilar ni utilizar lista alguna de productos, descripciones o precios. Tampoco incluye el derecho a realizar ning�n uso derivado de los Servicios de Discover �beda ni de sus contenidos, ni a descargar o copiar informaci�n de cuenta alguna para el beneficio de otra empresa, ni el uso de herramientas o robots de b�squeda y extracci�n de datos o similar</p>.
	<p>Discover �beda y sus licenciantes, proveedores, editores, titulares de derechos u otros proveedores de contenidos se reservan cualquier derecho que no est� expresamente comprendido en estas Condiciones de Uso o en las Condiciones Generales de los Servicios. </p>
	<p>No est� permitida la reproducci�n, duplicaci�n, copia, venta, reventa o explotaci�n de ning�n tipo de los Servicios de Discover �beda ni de parte alguna de los mismos con fines comerciales, en cada caso sin nuestro previo consentimiento por escrito. </p>
	<p>Tampoco est� permitido utilizar t�cnicas de framing para introducir cualquier marca comercial, logotipo u otra informaci�n protegida por derechos de autor (incluyendo im�genes, texto, dise�os de p�gina o formatos) de Discover �beda sin el correspondiente consentimiento previo por escrito. No est� permitido el uso de metaetiquetas (meta tags) ni de ning�n otro "texto oculto" que utilice los nombres o marcas registradas de Discover �beda sin nuestro consentimiento previo y por escrito. </p>
	<p>Te rogamos que hagas un uso correcto de los Servicios de Discover �beda. S�lo te est� permitido utilizar los Servicios de Discover �beda de forma l�cita. Cualquier incumplimiento por tu parte de estas Condiciones de Uso o de las Condiciones Generales de los Servicios supondr� la anulaci�n del permiso o la licencia concedidos por Discover �beda. </p>
	<h3>7. Tu Cuenta</h3>
	<p>Para utilizar algunos de los Servicios de Discover �beda, es posible que necesites estar registrado con tu cuenta de Discover �beda y que cuentes con un m�todo de pago v�lido asociado a dicha cuenta. </p>
	<p>Cuando utilizas los Servicios de Discover �beda eres responsable de mantener la confidencialidad de los datos de tu cuenta y tu contrase�a, as� como de restringir el acceso a tu ordenador y a tus dispositivos. En la medida en que as� lo permita la legislaci�n aplicable, aceptas asumir la responsabilidad que proceda por todas las actividades realizadas desde tu cuenta o utilizando tu contrase�a. Deber�s tomar todas las medidas necesarias a efectos de asegurar y salvaguardar la confidencialidad de tu contrase�a, y deber�s informarnos inmediatamente en caso de que tenga motivos para creer que tu contrase�a ha sido puesta en conocimiento de un tercero, o si �sta ha sido utilizada de manera no autorizada o es susceptible de serlo. Es tu responsabilidad comprobar que los datos que nos facilita son correctos y completos, quedando asimismo obligado a informarnos inmediatamente cuando tenga lugar cualquier variaci�n en la informaci�n que nos has facilitado. </p>
	<p>No podr�s utilizar ning�n Servicio de Discover �beda: (i) en forma alguna que cause, o pueda causar, da�o o perjuicio alguno a cualquiera de los Servicios de Discover �beda o la interrupci�n del acceso a los mismos; o (ii) para cualquier fin fraudulento, ni a efectos de la comisi�n de delito alguno u otra actividad il�cita de ning�n otro tipo; o (iii) para generar cualquier tipo de molestia, inconveniente o ansiedad en un tercero. </p>
	<p>Nos reservamos el derecho a denegar el acceso al servicio, a cancelar cualesquiera cuentas y a eliminar o modificar cualquier contenido en caso de que el usuario incumpliera la legislaci�n aplicable, las presentes Condiciones de Uso o cualesquiera otros t�rminos y condiciones o pol�ticas aplicables. </p>
	<h3>9. Reclamaciones sobre Propiedad Intelectual</h3>
	<p>Discover �beda respeta la propiedad intelectual de terceros. Si consideras que tus derechos de propiedad intelectual han podido ser infringidos, cont�ctanos. </p>
	<h3>10. Condiciones Generales sobre el Software de Discover �beda</h3>
	<p>Todo software, incluidas las actualizaciones, mejoras y cualquier otra documentaci�n relacionada con dicho software, que ponemos a tu disposici�n en cualquier momento en relaci�n con los Servicios de Discover �beda (el "Software de Discover �beda") est� sujeto, adem�s de a las presentes Condiciones de Uso y Venta</p>
	<h3>1. Nuestra responsabilidad</h3>
	<p>Realizaremos nuestros mejores esfuerzos para asegurar la disponibilidad, sin interrupciones, de los Servicios de Discover �beda, as� como la ausencia de errores en cualquier transmisi�n de informaci�n que pudiera tener lugar. No obstante, y debido a la naturaleza misma de Internet, no es posible garantizar tales extremos. Asimismo, tu acceso a los Servicios de Discover �beda pudiera ocasionalmente verse suspendido o restringido a efectos de la realizaci�n de trabajos de reparaci�n o mantenimiento, o la introducci�n de nuevos productos o servicios. Procuraremos limitar la frecuencia y duraci�n de tales suspensiones o restricciones. </p>
	<p>Discover �beda no ser� responsable de (i) cualesquiera p�rdidas que no fueran atribuibles a incumplimiento alguno por su parte, (ii) p�rdidas empresariales (incluyendo lucro cesante, de ingresos, de contratos, de ahorros previstos, de datos, p�rdida del fondo de comercio o gastos innecesarios incurridos), ni de (iii) cualesquiera p�rdidas indirectas o de car�cter consecuencial que no fueran razonablemente previsibles por ambas partes en el momento en que el usuario hubiera comenzado a utilizar los Servicios de Discover �beda. Tampoco seremos responsable de ninguna demora o falta de cumplimiento de nuestras obligaciones derivadas de las presentes condiciones si dicha demora o falta de cumplimiento fuera atribuible a circunstancias ajenas a nuestro control razonable. Esta disposici�n no afecta al derecho del cliente a recibir el producto o la prestaci�n del correspondiente servicio en un plazo razonable, o a recibir el oportuno reembolso para el caso de que no pudi�ramos suministrarle tales productos o servicios en un plazo razonable por cualquier causa ajena a nuestro control razonable. </p>
	<p>La legislaci�n de algunos pa�ses pudiera no permitir alguno o la totalidad de los l�mites de responsabilidad previstos anteriormente. En caso de que dicha legislaci�n te fuera de aplicaci�n, alguno o la totalidad de dichos l�mites pudiera no ser aplicable. Asimismo dicha legislaci�n pudiera conferirle derechos adicionales a los aqu� previstos. </p>
	<p>Nada de lo dispuesto en las presentes condiciones limita o excluye nuestra responsabilidad en caso de falsedad, ni en supuestos de fallecimiento o da�os personales atribuibles a nuestra negligencia o dolo. </p>
	<h3>12. Modificaci�n del Servicio o Variaci�n de las Condiciones</h3>
	<p>Nos reservamos el derecho a realizar cambios en los Servicios de Discover �beda, en nuestras pol�ticas y en nuestros t�rminos y condiciones, incluyendo las presentes Condiciones de Uso y las Condiciones Generales de los Servicios, en cualquier momento. Quedar�s sujeto a los t�rminos y condiciones, pol�ticas, Condiciones de Uso y Condiciones Generales de los Servicios vigentes a la fecha en que utilice los Servicios de Discover �beda. Si alguna de las presentes Condiciones de Uso o de las Condiciones Generales de los Servicios fuera declarada inv�lida, nula o por cualquier causa ineficaz, dicha condici�n se entender� excluida sin que dicha declaraci�n pueda afectar a la validez ni a la exigibilidad del resto de condiciones. </p>
	<h3>13. Renuncia</h3>
	<p>En caso de incumplimiento por tu parte de las presentes Condiciones de Uso, y aun cuando pudi�ramos optar por no ejercitar cualesquiera derechos a nuestro alcance en dicho momento, podremos hacer uso de tales derechos y acciones en cualquier otra ocasi�n en la que pudieras incumplir nuevamente las presentes Condiciones de Uso. </p>
	<h3>14. Menores de edad</h3>
	<p>No vendemos productos a menores de edad. Los productos para ni�os que vendemos deben ser comprados por adultos. Los menores de 18 a�os s�lo podr�n utilizar los Servicios de Discover �beda bajo la supervisi�n de un padre o un tutor.</p>
  	<h3>15. Condiciones de Uso adicionales del Software de Discover �beda </h3>
	<p>Uso del software de Discover �beda. Podr�s utilizar el Software de Discover �beda �nica y exclusivamente para utilizar y disfrutar de los Servicios de Discover �beda que te facilita Discover �beda, seg�n permiten las Condiciones de Uso, estas Condiciones de Uso de Software y las Condiciones Generales de los Servicios. No podr�s separar ninguno de los componentes individuales del Software de Discover �beda para usarlos en tus propios programas o compilar cualquier parte de ello junto con tus programas, ni transferirlo para su uso junto con otro servicio, ni podr�s vender, alquilar, arrendar, prestar, distribuir ni otorgar sublicencias ni ceder de cualquier otro modo ning�n derecho del Software de Discover �beda, ya sea en parte o en su totalidad. No puedes utilizar el Software de Discover �beda para un uso ilegal. Podremos anular la prestaci�n del Software de Discover �beda y denegarte el derecho de uso del Software de Discover �beda en cualquier momento. En caso de incumplimiento de estas Condiciones de Uso de Software, las Condiciones de Uso de Discover �beda y otras Condiciones Generales de los Servicios, tus derechos de uso del Software Discover �beda cesar�n sin notificaci�n previa. Existen condiciones adicionales contenidas o distribuidas junto con el Software de Discover �beda, seg�n se especifican en la documentaci�n relacionada que son aplicables al Software de Discover �beda (o software incorporado al Software de Discover �beda) y que prevalecer�n en el uso de dicho software en caso de conflicto con las presentes Condiciones de Uso de Software. Todo el software utilizado por los Servicios de Discover �beda es propiedad de Discover �beda o sus proveedores de contenido software y est� protegido por las leyes de Luxemburgo e internacionales sobre derechos de propiedad intelectual e industrial.</p>
	<p>Utilizaci�n de servicios de terceros. Cuando utilices el Software de Discover �beda, puedes tambi�n estar utilizando uno o varios servicios de terceros, como pueden ser los servicios de datos de un soporte o proveedor de plataformas m�viles por utilizaci�n de las redes inal�mbricas. El uso de dichos servicios prestados por terceros puede estar sujeto a pol�ticas adicionales, condiciones de uso y tasas aplicables. </p>
	<p>Prohibici�n de realizar actos de ingenier�a inversa. No te est� permitido, ni tampoco incentivar, ayudar o autorizar a cualquier otra persona, a, copiar, realizar actos de ingenier�a inversa, descompilar ni desensamblar, o de cualquier otra forma manipular, el Software de Discover �beda, ya sea en parte o en su totalidad, ni crear obras derivadas desde o sobre el Software de Discover �beda. </p>
	<p>Actualizaciones autom�ticas. A fin de mantener tu Software de Discover �beda actualizado, puede que te ofrezcamos, sin previa notificaci�n al efecto, actualizaciones ocasionales autom�ticas o manuales. </p>
  	
  	<h2 class="tituloH2">Condiciones de venta</h2>
  	
	<p>Te rogamos que leas detenidamente las presentes condiciones antes de cursar su pedido a Discover �beda EU Sarl. Al cursar tu pedido a Discover �beda EU Sarl, aceptas quedar vinculado por las presentes condiciones</p>
  	
  	<h3>1. Nuestro contrato</h3>
	<p>Cuando realices su pedido, te enviaremos un mensaje confirmando la recepci�n de tu pedido. Si estuvieras utilizando ciertos Servicios de Discover �beda (e.g., aplicaciones m�viles de Discover �beda), la confirmaci�n de tu pedido podr�a publicarse en el Servicio de mensajer�a del sitio web. Asimismo te informaremos sobre el env�o de sus productos. Podr�s no obstante modificar tu pedido antes de que el pedido entre en el proceso de env�o.</p>
  	<p>�nicamente vendemos productos en cantidades correspondientes a las necesidades t�picas de un hogar medio. Esto se aplica tanto al n�mero de productos solicitados en un mismo pedido como al supuesto en el que el cliente opta por cursar varios pedidos del mismo producto y dichos pedidos individuales comprenden las cantidades t�picas necesarias para cubrir las necesidades de un hogar medio.</p>

	<h2>2. Derecho de desistimiento de 14 d�as, excepciones al derecho de desistimiento, garant�a de devoluci�n voluntaria y garant�a legal de conformidad</h2>

	<h3>DERECHO LEGAL</h3>
	<p>A menos que aplique alguna de las excepciones que se describen a continuaci�n, podr�s desistir de tu pedido sin motivo alguno dentro de los 14 d�as naturales desde el d�a en que t� o un tercero que hayas indicado (distinto del transportista)s recibas los art�culos comprados (o desde el �ltimo art�culo, componente o pieza en caso de entrega de un bien compuesto por m�ltiples componentes o piezas), o desde el d�a de la conclusi�n del contrato en el caso de servicios o entrega de contenido digital no prestado en soporte material (es decir, no contenidos en soportes como CD o DVD.</p>
	
	<p>Discover �beda.es no asume el la titularidad del producto devuelto hasta la recepci�n del mismo en la direcci�n de devoluci�n. Discover �beda.es se reserva el derecho, a su discreci�n, a reembolsar el importe del producto sin exigir su devoluci�n. En tal caso, la titularidad del producto cuyo precio hubiera sido reembolsado no pasar� a Discover �beda.es.</p>
	
	<h2>EFECTOS DEL DESISTIMIENTO</h2>
	<p>Discover �beda te reembolsar� el precio del producto y los gastos ordinarios de env�o correspondientes a la opci�n de env�o m�s barata que ofrezcamos, no m�s tarde de los 14 d�as siguientes al d�a en que recibamos la comunicaci�n antes indicada. Discover �beda utilizar� los mismos medios de pago que hubieras empleado para la transacci�n inicial, a menos que expresamente se acuerde otro medio. En cualquier caso, no soportar�s ninguna tasa que pudiera derivarse de dicho reembolso. Podremos retener el reembolso hasta que hayamos recibido los art�culos devueltos por ti o hasta que nos aportes prueba de haber devuelto los art�culos, en funci�n de lo que se produzca primero.</p>
	<p>Ten en cuenta que deber� devolver los art�culos siguiendo las instrucciones disponibles en nuestro Centro de Devoluciones dentro de los 14 d�as siguientes al d�a en que nos comunicaste tu desistimiento. Deber�s soportar los costes directos de la devoluci�n de dichos art�culos; y ser�s responsable de la disminuci�n del valor de los bienes devueltos debido a la manipulaci�n de los art�culos (excepto cuando esa manipulaci�n fuera necesaria para averiguar la naturaleza, caracter�sticas y funcionamiento de los art�culos).</p>
	<h2>EXCEPCIONES AL DERECHO DE DESISTIMIENTO</h2>
	<p>El derecho de desistimiento no aplica a la entrega de:</p>
	
	<p>Productos que no permitan su devoluci�n debido a razones higi�nicas o de protecci�n de la salud, si los has desprecintado tras su entrega (por ejemplo productos cosm�ticos), o que estuvieran, tras su entrega, inseparablemente mezclados con otros productos. </p>
	<p>Productos que puedan deteriorarse o caducar con rapidez (por ejemplo alimentos o productos perecederos o sometidos a fecha de caducidad). </p>
	<p>Grabaciones sonoras o de video precintadas o software sellado, si los hubieras desprecintado tras su entrega. </p>
	<p>Bienes realizados seg�n tus especificaciones o claramente personalizados;
	<p>Un servicio, si Discover �beda ya lo hubiera prestado en su totalidad y, al solicitar dicho servicio, hubieras aceptado el inicio de la prestaci�n del servicio y la imposibilidad de desistir del mismo una vez iniciada la prestaci�n. </p>
	<p>Contenido digital (incluyendo apps, software digital e-books, MP3, etc.) que no hubiera sido entregado en un soporte material (es decir, no contenidos en soportes como CD o DVD) si hubieras consentido la ejecuci�n en el momento de la entrega y sin que resulte posible tu desistimiento desde dicho momento</p>
	<p>Prensa diaria, publicaciones peri�dicas o revistas con la excepci�n de contratos de suscripci�n y bebidas alcoh�licas cuyo precio haya sido acordado en el momento en que realizaste el pedido y que no puedan ser entregadas antes de 30 d�as, y cuyo valor real dependa de fluctuaciones en el mercado que no podamos controlar. </p>
	
	<h3>NUESTRA GARANT�A DE DEVOLUCI�N VOLUNTARIA</h3>
	<p>Sin perjuicio de sus derechos legales, Discover �beda te proporciona la siguiente garant�a de devoluci�n voluntaria. </p>
	<p>Los productos vendidos por Discover �beda EU SARL pueden ser devueltos dentro de los 30 d�as naturales desde la recepci�n de los mismos, a menos que alguna de las excepciones sean aplicables, y siempre que est�n en la misma condici�n en la que fueron recibidos. Para m�s informaci�n haz clic aqu�. Los productos deber�n ser devueltos a trav�s de nuestro Centro de Devoluciones online. </p>
	<p>Si devuelves los productos de acuerdo con esta garant�a de devoluci�n voluntaria, te devolveremos el precio del producto abonado, pero no los costes de env�o de tu compra inicial. Tendr�s que correr con el riesgo de transporte y los costes de devoluci�n. Los costes originales de env�o y devoluci�n solo ser�n reembolsados en las devoluciones de ropa o calzado comprado en nuestras webs. Esta garant�a de devoluci�n no afecta a tus derechos legales y, por tanto, no afecta a tu derecho de desistimiento anteriormente descrito. </p>
	<h3>GARANT�A LEGAL DE CONFORMIDAD</h3>
	<p>Adem�s de tus derechos legales y la garant�a de 30 d�as de devoluci�n voluntaria, los clientes en la Uni�n Europea (excepto Reino Unido) tendr�n una garant�a post-venta, de dos a�os desde la fecha de entrega del producto, para la reparaci�n o reemplazo de productos comprados en Discover �beda si fueran defectuosos o disconformes con lo anunciado. Puedes solicitar el reembolso o la rebaja del precio del producto cuando no hubiera tenido lugar la reparaci�n o remplazo del producto en un tiempo razonable o sin mayores inconvenientes para ti. </p>
	<p>En caso de productos de segunda mano, el periodo de garant�a podr� ser menor pero siempre igual o superior a un a�o. </p>
	<h3>3. Precios y disponibilidad</h3>
	<p>Todos los precios incluyen los impuestos legalmente aplicables (el IVA). </p>
	<p>Incluimos en el sitio web informaci�n sobre la disponibilidad de los productos que vendemos, detall�ndolo en la p�gina de informaci�n de cada uno de los productos. No nos es posible ofrecer informaci�n m�s precisa sobre la disponibilidad de un producto, m�s all� de la que mostramos en la p�gina de informaci�n del producto o en otros apartados del sitio web. Cuando procesemos tu pedido, te informaremos lo antes posible por correo electr�nico o publicando un mensaje en el Servicio de mensajer�a del sitio web si cualquiera de los productos incluidos en tu pedido no se encontrara disponible. En tal caso, no te cobraremos importe alguno por dicho producto. </p>
	<p>Ten en cuenta que en algunos casos, no nos es posible confirmar una fecha de entrega concreta cuando realiza su pedido. En estos supuestos, te facilitaremos nuestra mejor estimaci�n, normalmente indicando un rango de d�as. Adem�s, podr�s consultar el estado de tu pedido en cualquier momento a trav�s del apartado Mi Cuenta del sitio web o contactando con nuestro Servicio de Atenci�n al cliente. En todo caso, la entrega ser� realizada dentro del plazo m�ximo de 30 d�as a partir de la realizaci�n de tu pedido, salvo que se acuerde otra cosa. </p>
	<h3>4. Informaci�n del producto</h3>
	<p>A menos que se indique expresamente lo contrario, Discover �beda no es el fabricante de los productos vendidos en el sitio web. Si bien nos esforzamos para que la informaci�n que aparece en nuestro sitio web sea correcta, en ocasiones el embalaje y los materiales de los productos pueden contener informaci�n adicional o distinta de la que aparece en nuestro sitio web. Los componentes tambi�n pueden cambiar. Te recomendamos que no te detenga a leer solamente la informaci�n disponible en nuestro sitio web si no que, antes de su utilizaci�n, leas tambi�n detenidamente el etiquetado, las advertencias e instrucciones que acompa�en al producto. </p>
	<h3>5. Informaci�n Aduanera</h3>
	<p>Cuando realiza un pedido de productos en Discover �beda.es para su entrega en un pa�s no perteneciente a la Uni�n Europea, podr�a quedar obligado a abonar derechos e impuestos de importaci�n, los cuales te ser�n cobrados en el momento en el que el paquete llegue a su destino. Cualquier importe adicional debido al despacho aduanero correr� de tu cuenta. Discover �beda.es no tiene control alguno sobre tales importes. Las pol�ticas aduaneras var�an significativamente de un pa�s a otro por lo que, para mayor informaci�n, te rogamos consultes con la oficina aduanera correspondiente. Recuerda, adem�s, que cuando realizas un pedido a Discover �beda.es formalmente la ley te considera como importador, y deber�s por ello cumplir todas las leyes y reglamentos aplicables en el pa�s en el que recibes el producto. Tu privacidad es una cuesti�n de gran importancia para nosotros. Queremos que nuestros clientes internacionales sean conscientes de que los env�os internacionales est�n sujetos a inspecci�n y apertura por parte de las autoridades aduaneras. </p>
	<h3>7. Nuestra responsabilidad</h3>
	<p>Ni Discover �beda.es ni las sociedades de su grupo ser�n responsable de (i) cualesquiera p�rdidas que no fueran atribuibles a incumplimiento alguno por su parte, (ii) p�rdidas empresariales (incluyendo lucro cesante, de ingresos, de contratos, de ahorros previstos, de datos, p�rdida del fondo de comercio o gastos innecesarios incurridos), o de (iii) cualesquiera p�rdidas indirectas o de car�cter consecuencial que no fueran razonablemente previsibles por ambas partes en el momento en que se formaliz� el contrato de compraventa de los productos entre ambas partes. </p>
	<p>La legislaci�n de algunos pa�ses pudiera no permitir alguno o la totalidad de los l�mites de responsabilidad previstos anteriormente. En caso de que dicha legislaci�n te fuera de aplicaci�n, alguno o la totalidad de dichos l�mites pudieran no ser aplicables. Asimismo dicha legislaci�n pudiera conferirte derechos adicionales a los aqu� previstos. </p>
	<p>Nada de lo dispuesto en las presentes condiciones limita o excluye nuestra responsabilidad en caso de falsedad, ni por fallecimiento o da�os personales atribuibles a nuestra negligencia o dolo. </p>
	<p>Asimismo Discover �beda.es no ser� responsable de ninguna demora o incumplimiento de sus obligaciones derivadas de las presentes condiciones si dicha demora o incumplimiento fuera atribuible a circunstancias ajenas a nuestro control razonable. Esta disposici�n no afecta a su derecho a recibir el producto en un plazo razonable. Si la demora tuviera lugar con car�cter anterior a la remisi�n del producto, Discover �beda.es no te cobrar� importe alguno por dicho producto hasta que el mismo te fuera remitido, en cuyo caso podr�s cancelar el pedido en cualquier momento previo a dicha expedici�n. </p>
	<h3>8. Modificaci�n de las condiciones de venta</h3>
	<p>Nos reservamos el derecho a realizar cambios a nuestro sitio web, a nuestras pol�ticas y a nuestros t�rminos y condiciones, incluyendo a las presentes Condiciones de Venta, en cualquier momento. Quedar�s sujeto a los t�rminos y condiciones, pol�ticas y Condiciones de Venta en vigor en el momento en que realice su pedido, a menos que, por ley o por requerimiento de las autoridades p�blicas, se deba efectuar un cambio a dichos t�rminos y condiciones, pol�ticas o a las presentes Condiciones de Venta (en cuyo caso, tales cambios podr�an resultar aplicables a cualesquiera pedidos que hubiera realizado anteriormente). Si alguna de las presentes condiciones fuera declarada inv�lida, nula o por cualquier causa ineficaz, dicha condici�n se entender� excluida sin que dicha declaraci�n pueda afectar a la validez ni a la exigibilidad del resto de condiciones. </p>
	<h3>9. Renuncia</h3>
	<p>En caso de incumplimiento por su parte de las presentes Condiciones de Venta, y a�n cuando Discover �beda.es pudiera no ejercitar cualesquiera derechos a su alcance en dicho momento, Discover �beda.es podr� hacer uso de tales derechos y acciones en cualquier otra ocasi�n en la que pudieras incumplir las presentes Condiciones de Venta. </p>
	<h3>10. Menores de edad</h3>
	<p>No vendemos productos a menores de edad. Los productos para ni�os que vendemos deben ser comprados por adultos. Los menores de 18 a�os s�lo podr�n utilizar Discover �beda.es bajo la supervisi�n de un padre o un tutor. </p>



	
		



</div>

<div class="footer_bg">
</div>
<div class="footer">
	<div class="container">
		<div class="col-md-3 f_grid1">
			<h3>Sobre nosotros:</h3>
<!-- 			<a href="#"><img src="static/images/logo.png" alt=""/></a> -->
			<p>Una bonita tienda donde podr�s llevarte recuerdos fabulosos de �beda y regalos para toda la familia.</p>
			<p>Tambi�n ofrecemos visitas guiadas.</p>
		</div>
		<div class="col-md-3 f_grid1 f_grid2">
			<h3>S�guenos</h3>
			<ul class="social">
				<li><a href="https://b-m.facebook.com/DISCOVERUBEDA/"> <i class="fb"> </i><p class="m_3">Facebook</p><div class="clearfix"> </div></a></li>
			    <li><a href="https://twitter.com/discover_ubeda"><i class="tw"> </i><p class="m_3">Twittter</p><div class="clearfix"> </div></a></li>
				<li><a href="https://www.instagram.com/discoverubeda/"><i class="instagram"> </i><p class="m_3">Instagram</p><div class="clearfix"> </div></a></li>
			</ul>
		</div>
		<div class="col-md-3 f_grid1 f_grid3">
			<h3>Cont�ctanos</h3>
			<ul class="list">
				<li><p>+34 666666666</p></li>
				<li><p>C/Real n�40 �beda</p></li>
				<li><p><a href="mailto:ntj00003@red.ujaen.es">ntj00003@red.ujaen.es</a></p></li>
			</ul>
		</div>
		<div class="col-md-3 f_grid3">
			<h3>Encu�ntranos:</h3>
				<iframe src="https://www.google.com/maps/embed?pb=!4v1526501579937!6m8!1m7!1s7L2qBH17IAgQCapOS69vLw!2m2!1d38.00957030656649!2d-3.369143237755362!3f241.76736424386468!4f-8.796376115979271!5f0.7820865974627469" width="200" height="150" frameborder="0" style="border:0" allowfullscreen></iframe>
			</div>
		<div class="clearfix"> </div>
		
	</div>
</div>
<div class="footer_bottom">
       	<div class="container">
       		<div class="cssmenu">
				<ul>
					<li><a href="politicaPrivacidad ">Pol�tica de privacidad</a></li> .
					<li><a href="terminosServicios ">T�rminos del servicio</a></li> .
					<li><a href="cookies ">Pol�tica de Cookies</a></li>
				</ul>
			</div>
			<div class="copy">
			    <p>&copy;  2018 Plantilla realizada por <a href="#" target="_blank">Discover �beda</a></p>
		    </div>
		    <div class="clearfix"> </div>
       	</div>
</div>
</body>
</html>

