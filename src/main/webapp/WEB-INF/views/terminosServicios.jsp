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
<meta name="keywords" content="Discover Úbeda, artesanía, regalos, heraldica, complementos, recuerdos, souvenirs." />

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
			      <li><a href="login">Iniciar sesión</a></li>
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
					<li><a href="contacto" data-hover="Contactanos">Contáctanos</a></li>
					<li><a href="construccion" data-hover="Leyendas">Leyendas</a></li>
					<li><a href="construccion" data-hover="Gastronomia">Gastronomía</a></li>
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
	  <p>Te rogamos que leas detenidamente las presentes condiciones antes de utilizar los Servicios de Discover Úbeda. Al utilizar los Servicios de Discover Úbeda, aceptas quedar vinculado por las presentes condiciones. Ofrecemos una amplia gama de Servicios de Discover Úbeda y en ocasiones pueden aplicarse condiciones adicionales. Además, cada vez que utilices cualquier Servicio de Discover Úbeda, (por ejemplo: aplicaciones de Discover Úbeda para dispositivos móviles), estarás igualmente sujeto a los términos y condiciones generales y a las condiciones particulares aplicables a dichos Servicios de Discover Úbeda (las "Condiciones Generales de los Servicios"). Las Condiciones Generales de los Servicios prevalecerán sobre las presentes Condiciones de Uso en caso de discrepancia entre ambas.</p>
	  <h3>1. Comunicaciones electrónicas</h3>
	  <p>Cada vez que utilices un Servicio de Discover Úbeda o nos envíes un correo electrónico, un mensaje de texto (SMS) o cualquier otra comunicación desde tu ordenador o dispositivo móvil, estará comunicándose electrónicamente con nosotros. Nosotros nos pondremos en contacto contigo electrónicamente por distintos medios, como por ejemplo mediante correo electrónico, mensajes de texto (SMS), notificaciones dentro de aplicaciones, o publicando mensajes o comunicaciones por correo electrónico en el sitio web o a través de cualquier otro Servicio de Discover Úbeda, como por ejemplo nuestro Servicio de mensajería. A efectos del presente contrato, aceptas que todos los contratos, avisos y otras notificaciones y comunicaciones que te enviemos por medios electrónicos satisfacen cualquier requisito de forma escrita, salvo que cualquier legislación aplicable con carácter imperativo exigiera una forma distinta de comunicación.<p>
	  <h3>2.  Recomendaciones y personalización</h3>
	<p>Como parte del Servicio de Discover Úbeda, te recomendaremos funcionalidades, productos y servicios, incluyendo anuncios de terceros, que podrían ser de tu interés, identificar tus preferencias y personalizar tu experiencia</p>
	<h3>3. Derechos de autor, derechos de propiedad intelectual y derechos sobre bases de datos</h3>
	<p>Todo contenido alojado o puesto a disposición en cualquiera de los Servicios de Discover Úbeda, como por ejemplo texto, gráficos, logotipos, iconos de botones, imágenes, clips de audio, descargas digitales, y recopilaciones de datos son propiedad de Discover Úbeda o de sus proveedores de contenido y está protegido por las leyes de España así como por la legislación internacional sobre derechos de propiedad intelectual, derechos de autor y derechos sobre bases de datos. El conjunto de todo el contenido albergado o puesto a disposición a través de cualquier Servicio de Discover Úbeda es propiedad exclusiva de Discover Úbeda, y está protegido por las leyes de España e internacionales sobre derechos de propiedad intelectual y derechos sobre bases de datos.</p>
	<p>No está permitida la extracción sistemática ni la reutilización de parte alguna del contenido de ninguno de los Servicios de Discover Úbeda sin nuestro expreso consentimiento por escrito. En particular, no se permite el uso de herramientas o robots de búsqueda y extracción de datos para la extracción (ya sea en una o varias ocasiones) de partes sustanciales de los Servicios de Discover Úbeda para su reutilización sin nuestro expreso consentimiento por escrito. Tampoco le está permitido al usuario crear ni publicar sus propias bases de datos cuando éstas contengan partes sustanciales de cualquiera de los Servicios de Discover Úbeda (por ejemplo, nuestras listas de productos y listas de precios) sin nuestro expreso consentimiento por escrito.</p>
	<h3>4. Marcas registradas</h3>
	<p>De forma adicional, los gráficos, logotipos, encabezados de página, iconos de botón, scripts y nombres de servicio que aparecen incluidos o están disponibles a través de los Servicios de Discover Úbeda son marcas registradas o representan la imagen comercial de Discover Úbeda. No podrán utilizarse las marcas registradas ni la imagen comercial de Discover Úbeda en relación con ningún producto o servicio que no pertenezca a Discover Úbeda, ni en ninguna forma que fuera susceptible de causar confusión entre los usuarios o que pueda menospreciar o desacreditar a Discover Úbeda. El resto de marcas registradas que no son propiedad de Discover Úbeda y que aparecen incluidos o están disponibles a través de los Servicios de Discover Úbeda pertenecen a sus respectivos propietarios, quienes podrán o no estar afiliados o relacionados de cualquier modo con Discover Úbeda, o patrocinados por Discover Úbeda.</p>
	<h3>5. Patentes</h3>
	<p>Diversas patentes pertenecientes a Discover Úbeda son aplicables a los Servicios de Discover Úbeda así como a las funciones y servicios accesibles a través de los mismos. Por otro lado, diferentes partes de los Servicios de Discover Úbeda operan en virtud de distintas licencias de una o varias patentes. <p>
	<h3>6. Licencia y acceso</h3>
	<p>Sujeto a tu cumplimiento de estas Condiciones de Uso y las Condiciones Generales de los Servicios aplicables así como al pago del precio aplicable, en su caso, Discover Úbeda o sus proveedores de contenidos te conceden una licencia limitada no exclusiva, no transferible y no sublicenciable, de acceso y utilización, a los Servicios de Discover Úbeda para fines personales no comerciales. Dicha licencia no incluye derecho alguno de reventa ni de uso comercial de los Servicios de Discover Úbeda ni de sus contenidos, ni derecho alguno a compilar ni utilizar lista alguna de productos, descripciones o precios. Tampoco incluye el derecho a realizar ningún uso derivado de los Servicios de Discover Úbeda ni de sus contenidos, ni a descargar o copiar información de cuenta alguna para el beneficio de otra empresa, ni el uso de herramientas o robots de búsqueda y extracción de datos o similar</p>.
	<p>Discover Úbeda y sus licenciantes, proveedores, editores, titulares de derechos u otros proveedores de contenidos se reservan cualquier derecho que no esté expresamente comprendido en estas Condiciones de Uso o en las Condiciones Generales de los Servicios. </p>
	<p>No está permitida la reproducción, duplicación, copia, venta, reventa o explotación de ningún tipo de los Servicios de Discover Úbeda ni de parte alguna de los mismos con fines comerciales, en cada caso sin nuestro previo consentimiento por escrito. </p>
	<p>Tampoco está permitido utilizar técnicas de framing para introducir cualquier marca comercial, logotipo u otra información protegida por derechos de autor (incluyendo imágenes, texto, diseños de página o formatos) de Discover Úbeda sin el correspondiente consentimiento previo por escrito. No está permitido el uso de metaetiquetas (meta tags) ni de ningún otro "texto oculto" que utilice los nombres o marcas registradas de Discover Úbeda sin nuestro consentimiento previo y por escrito. </p>
	<p>Te rogamos que hagas un uso correcto de los Servicios de Discover Úbeda. Sólo te está permitido utilizar los Servicios de Discover Úbeda de forma lícita. Cualquier incumplimiento por tu parte de estas Condiciones de Uso o de las Condiciones Generales de los Servicios supondrá la anulación del permiso o la licencia concedidos por Discover Úbeda. </p>
	<h3>7. Tu Cuenta</h3>
	<p>Para utilizar algunos de los Servicios de Discover Úbeda, es posible que necesites estar registrado con tu cuenta de Discover Úbeda y que cuentes con un método de pago válido asociado a dicha cuenta. </p>
	<p>Cuando utilizas los Servicios de Discover Úbeda eres responsable de mantener la confidencialidad de los datos de tu cuenta y tu contraseña, así como de restringir el acceso a tu ordenador y a tus dispositivos. En la medida en que así lo permita la legislación aplicable, aceptas asumir la responsabilidad que proceda por todas las actividades realizadas desde tu cuenta o utilizando tu contraseña. Deberás tomar todas las medidas necesarias a efectos de asegurar y salvaguardar la confidencialidad de tu contraseña, y deberás informarnos inmediatamente en caso de que tenga motivos para creer que tu contraseña ha sido puesta en conocimiento de un tercero, o si ésta ha sido utilizada de manera no autorizada o es susceptible de serlo. Es tu responsabilidad comprobar que los datos que nos facilita son correctos y completos, quedando asimismo obligado a informarnos inmediatamente cuando tenga lugar cualquier variación en la información que nos has facilitado. </p>
	<p>No podrás utilizar ningún Servicio de Discover Úbeda: (i) en forma alguna que cause, o pueda causar, daño o perjuicio alguno a cualquiera de los Servicios de Discover Úbeda o la interrupción del acceso a los mismos; o (ii) para cualquier fin fraudulento, ni a efectos de la comisión de delito alguno u otra actividad ilícita de ningún otro tipo; o (iii) para generar cualquier tipo de molestia, inconveniente o ansiedad en un tercero. </p>
	<p>Nos reservamos el derecho a denegar el acceso al servicio, a cancelar cualesquiera cuentas y a eliminar o modificar cualquier contenido en caso de que el usuario incumpliera la legislación aplicable, las presentes Condiciones de Uso o cualesquiera otros términos y condiciones o políticas aplicables. </p>
	<h3>9. Reclamaciones sobre Propiedad Intelectual</h3>
	<p>Discover Úbeda respeta la propiedad intelectual de terceros. Si consideras que tus derechos de propiedad intelectual han podido ser infringidos, contáctanos. </p>
	<h3>10. Condiciones Generales sobre el Software de Discover Úbeda</h3>
	<p>Todo software, incluidas las actualizaciones, mejoras y cualquier otra documentación relacionada con dicho software, que ponemos a tu disposición en cualquier momento en relación con los Servicios de Discover Úbeda (el "Software de Discover Úbeda") está sujeto, además de a las presentes Condiciones de Uso y Venta</p>
	<h3>1. Nuestra responsabilidad</h3>
	<p>Realizaremos nuestros mejores esfuerzos para asegurar la disponibilidad, sin interrupciones, de los Servicios de Discover Úbeda, así como la ausencia de errores en cualquier transmisión de información que pudiera tener lugar. No obstante, y debido a la naturaleza misma de Internet, no es posible garantizar tales extremos. Asimismo, tu acceso a los Servicios de Discover Úbeda pudiera ocasionalmente verse suspendido o restringido a efectos de la realización de trabajos de reparación o mantenimiento, o la introducción de nuevos productos o servicios. Procuraremos limitar la frecuencia y duración de tales suspensiones o restricciones. </p>
	<p>Discover Úbeda no será responsable de (i) cualesquiera pérdidas que no fueran atribuibles a incumplimiento alguno por su parte, (ii) pérdidas empresariales (incluyendo lucro cesante, de ingresos, de contratos, de ahorros previstos, de datos, pérdida del fondo de comercio o gastos innecesarios incurridos), ni de (iii) cualesquiera pérdidas indirectas o de carácter consecuencial que no fueran razonablemente previsibles por ambas partes en el momento en que el usuario hubiera comenzado a utilizar los Servicios de Discover Úbeda. Tampoco seremos responsable de ninguna demora o falta de cumplimiento de nuestras obligaciones derivadas de las presentes condiciones si dicha demora o falta de cumplimiento fuera atribuible a circunstancias ajenas a nuestro control razonable. Esta disposición no afecta al derecho del cliente a recibir el producto o la prestación del correspondiente servicio en un plazo razonable, o a recibir el oportuno reembolso para el caso de que no pudiéramos suministrarle tales productos o servicios en un plazo razonable por cualquier causa ajena a nuestro control razonable. </p>
	<p>La legislación de algunos países pudiera no permitir alguno o la totalidad de los límites de responsabilidad previstos anteriormente. En caso de que dicha legislación te fuera de aplicación, alguno o la totalidad de dichos límites pudiera no ser aplicable. Asimismo dicha legislación pudiera conferirle derechos adicionales a los aquí previstos. </p>
	<p>Nada de lo dispuesto en las presentes condiciones limita o excluye nuestra responsabilidad en caso de falsedad, ni en supuestos de fallecimiento o daños personales atribuibles a nuestra negligencia o dolo. </p>
	<h3>12. Modificación del Servicio o Variación de las Condiciones</h3>
	<p>Nos reservamos el derecho a realizar cambios en los Servicios de Discover Úbeda, en nuestras políticas y en nuestros términos y condiciones, incluyendo las presentes Condiciones de Uso y las Condiciones Generales de los Servicios, en cualquier momento. Quedarás sujeto a los términos y condiciones, políticas, Condiciones de Uso y Condiciones Generales de los Servicios vigentes a la fecha en que utilice los Servicios de Discover Úbeda. Si alguna de las presentes Condiciones de Uso o de las Condiciones Generales de los Servicios fuera declarada inválida, nula o por cualquier causa ineficaz, dicha condición se entenderá excluida sin que dicha declaración pueda afectar a la validez ni a la exigibilidad del resto de condiciones. </p>
	<h3>13. Renuncia</h3>
	<p>En caso de incumplimiento por tu parte de las presentes Condiciones de Uso, y aun cuando pudiéramos optar por no ejercitar cualesquiera derechos a nuestro alcance en dicho momento, podremos hacer uso de tales derechos y acciones en cualquier otra ocasión en la que pudieras incumplir nuevamente las presentes Condiciones de Uso. </p>
	<h3>14. Menores de edad</h3>
	<p>No vendemos productos a menores de edad. Los productos para niños que vendemos deben ser comprados por adultos. Los menores de 18 años sólo podrán utilizar los Servicios de Discover Úbeda bajo la supervisión de un padre o un tutor.</p>
  	<h3>15. Condiciones de Uso adicionales del Software de Discover Úbeda </h3>
	<p>Uso del software de Discover Úbeda. Podrás utilizar el Software de Discover Úbeda única y exclusivamente para utilizar y disfrutar de los Servicios de Discover Úbeda que te facilita Discover Úbeda, según permiten las Condiciones de Uso, estas Condiciones de Uso de Software y las Condiciones Generales de los Servicios. No podrás separar ninguno de los componentes individuales del Software de Discover Úbeda para usarlos en tus propios programas o compilar cualquier parte de ello junto con tus programas, ni transferirlo para su uso junto con otro servicio, ni podrás vender, alquilar, arrendar, prestar, distribuir ni otorgar sublicencias ni ceder de cualquier otro modo ningún derecho del Software de Discover Úbeda, ya sea en parte o en su totalidad. No puedes utilizar el Software de Discover Úbeda para un uso ilegal. Podremos anular la prestación del Software de Discover Úbeda y denegarte el derecho de uso del Software de Discover Úbeda en cualquier momento. En caso de incumplimiento de estas Condiciones de Uso de Software, las Condiciones de Uso de Discover Úbeda y otras Condiciones Generales de los Servicios, tus derechos de uso del Software Discover Úbeda cesarán sin notificación previa. Existen condiciones adicionales contenidas o distribuidas junto con el Software de Discover Úbeda, según se especifican en la documentación relacionada que son aplicables al Software de Discover Úbeda (o software incorporado al Software de Discover Úbeda) y que prevalecerán en el uso de dicho software en caso de conflicto con las presentes Condiciones de Uso de Software. Todo el software utilizado por los Servicios de Discover Úbeda es propiedad de Discover Úbeda o sus proveedores de contenido software y está protegido por las leyes de Luxemburgo e internacionales sobre derechos de propiedad intelectual e industrial.</p>
	<p>Utilización de servicios de terceros. Cuando utilices el Software de Discover Úbeda, puedes también estar utilizando uno o varios servicios de terceros, como pueden ser los servicios de datos de un soporte o proveedor de plataformas móviles por utilización de las redes inalámbricas. El uso de dichos servicios prestados por terceros puede estar sujeto a políticas adicionales, condiciones de uso y tasas aplicables. </p>
	<p>Prohibición de realizar actos de ingeniería inversa. No te está permitido, ni tampoco incentivar, ayudar o autorizar a cualquier otra persona, a, copiar, realizar actos de ingeniería inversa, descompilar ni desensamblar, o de cualquier otra forma manipular, el Software de Discover Úbeda, ya sea en parte o en su totalidad, ni crear obras derivadas desde o sobre el Software de Discover Úbeda. </p>
	<p>Actualizaciones automáticas. A fin de mantener tu Software de Discover Úbeda actualizado, puede que te ofrezcamos, sin previa notificación al efecto, actualizaciones ocasionales automáticas o manuales. </p>
  	
  	<h2 class="tituloH2">Condiciones de venta</h2>
  	
	<p>Te rogamos que leas detenidamente las presentes condiciones antes de cursar su pedido a Discover Úbeda EU Sarl. Al cursar tu pedido a Discover Úbeda EU Sarl, aceptas quedar vinculado por las presentes condiciones</p>
  	
  	<h3>1. Nuestro contrato</h3>
	<p>Cuando realices su pedido, te enviaremos un mensaje confirmando la recepción de tu pedido. Si estuvieras utilizando ciertos Servicios de Discover Úbeda (e.g., aplicaciones móviles de Discover Úbeda), la confirmación de tu pedido podría publicarse en el Servicio de mensajería del sitio web. Asimismo te informaremos sobre el envío de sus productos. Podrás no obstante modificar tu pedido antes de que el pedido entre en el proceso de envío.</p>
  	<p>Únicamente vendemos productos en cantidades correspondientes a las necesidades típicas de un hogar medio. Esto se aplica tanto al número de productos solicitados en un mismo pedido como al supuesto en el que el cliente opta por cursar varios pedidos del mismo producto y dichos pedidos individuales comprenden las cantidades típicas necesarias para cubrir las necesidades de un hogar medio.</p>

	<h2>2. Derecho de desistimiento de 14 días, excepciones al derecho de desistimiento, garantía de devolución voluntaria y garantía legal de conformidad</h2>

	<h3>DERECHO LEGAL</h3>
	<p>A menos que aplique alguna de las excepciones que se describen a continuación, podrás desistir de tu pedido sin motivo alguno dentro de los 14 días naturales desde el día en que tú o un tercero que hayas indicado (distinto del transportista)s recibas los artículos comprados (o desde el último artículo, componente o pieza en caso de entrega de un bien compuesto por múltiples componentes o piezas), o desde el día de la conclusión del contrato en el caso de servicios o entrega de contenido digital no prestado en soporte material (es decir, no contenidos en soportes como CD o DVD.</p>
	
	<p>Discover Úbeda.es no asume el la titularidad del producto devuelto hasta la recepción del mismo en la dirección de devolución. Discover Úbeda.es se reserva el derecho, a su discreción, a reembolsar el importe del producto sin exigir su devolución. En tal caso, la titularidad del producto cuyo precio hubiera sido reembolsado no pasará a Discover Úbeda.es.</p>
	
	<h2>EFECTOS DEL DESISTIMIENTO</h2>
	<p>Discover Úbeda te reembolsará el precio del producto y los gastos ordinarios de envío correspondientes a la opción de envío más barata que ofrezcamos, no más tarde de los 14 días siguientes al día en que recibamos la comunicación antes indicada. Discover Úbeda utilizará los mismos medios de pago que hubieras empleado para la transacción inicial, a menos que expresamente se acuerde otro medio. En cualquier caso, no soportarás ninguna tasa que pudiera derivarse de dicho reembolso. Podremos retener el reembolso hasta que hayamos recibido los artículos devueltos por ti o hasta que nos aportes prueba de haber devuelto los artículos, en función de lo que se produzca primero.</p>
	<p>Ten en cuenta que deberá devolver los artículos siguiendo las instrucciones disponibles en nuestro Centro de Devoluciones dentro de los 14 días siguientes al día en que nos comunicaste tu desistimiento. Deberás soportar los costes directos de la devolución de dichos artículos; y serás responsable de la disminución del valor de los bienes devueltos debido a la manipulación de los artículos (excepto cuando esa manipulación fuera necesaria para averiguar la naturaleza, características y funcionamiento de los artículos).</p>
	<h2>EXCEPCIONES AL DERECHO DE DESISTIMIENTO</h2>
	<p>El derecho de desistimiento no aplica a la entrega de:</p>
	
	<p>Productos que no permitan su devolución debido a razones higiénicas o de protección de la salud, si los has desprecintado tras su entrega (por ejemplo productos cosméticos), o que estuvieran, tras su entrega, inseparablemente mezclados con otros productos. </p>
	<p>Productos que puedan deteriorarse o caducar con rapidez (por ejemplo alimentos o productos perecederos o sometidos a fecha de caducidad). </p>
	<p>Grabaciones sonoras o de video precintadas o software sellado, si los hubieras desprecintado tras su entrega. </p>
	<p>Bienes realizados según tus especificaciones o claramente personalizados;
	<p>Un servicio, si Discover Úbeda ya lo hubiera prestado en su totalidad y, al solicitar dicho servicio, hubieras aceptado el inicio de la prestación del servicio y la imposibilidad de desistir del mismo una vez iniciada la prestación. </p>
	<p>Contenido digital (incluyendo apps, software digital e-books, MP3, etc.) que no hubiera sido entregado en un soporte material (es decir, no contenidos en soportes como CD o DVD) si hubieras consentido la ejecución en el momento de la entrega y sin que resulte posible tu desistimiento desde dicho momento</p>
	<p>Prensa diaria, publicaciones periódicas o revistas con la excepción de contratos de suscripción y bebidas alcohólicas cuyo precio haya sido acordado en el momento en que realizaste el pedido y que no puedan ser entregadas antes de 30 días, y cuyo valor real dependa de fluctuaciones en el mercado que no podamos controlar. </p>
	
	<h3>NUESTRA GARANTÍA DE DEVOLUCIÓN VOLUNTARIA</h3>
	<p>Sin perjuicio de sus derechos legales, Discover Úbeda te proporciona la siguiente garantía de devolución voluntaria. </p>
	<p>Los productos vendidos por Discover Úbeda EU SARL pueden ser devueltos dentro de los 30 días naturales desde la recepción de los mismos, a menos que alguna de las excepciones sean aplicables, y siempre que estén en la misma condición en la que fueron recibidos. Para más información haz clic aquí. Los productos deberán ser devueltos a través de nuestro Centro de Devoluciones online. </p>
	<p>Si devuelves los productos de acuerdo con esta garantía de devolución voluntaria, te devolveremos el precio del producto abonado, pero no los costes de envío de tu compra inicial. Tendrás que correr con el riesgo de transporte y los costes de devolución. Los costes originales de envío y devolución solo serán reembolsados en las devoluciones de ropa o calzado comprado en nuestras webs. Esta garantía de devolución no afecta a tus derechos legales y, por tanto, no afecta a tu derecho de desistimiento anteriormente descrito. </p>
	<h3>GARANTÍA LEGAL DE CONFORMIDAD</h3>
	<p>Además de tus derechos legales y la garantía de 30 días de devolución voluntaria, los clientes en la Unión Europea (excepto Reino Unido) tendrán una garantía post-venta, de dos años desde la fecha de entrega del producto, para la reparación o reemplazo de productos comprados en Discover Úbeda si fueran defectuosos o disconformes con lo anunciado. Puedes solicitar el reembolso o la rebaja del precio del producto cuando no hubiera tenido lugar la reparación o remplazo del producto en un tiempo razonable o sin mayores inconvenientes para ti. </p>
	<p>En caso de productos de segunda mano, el periodo de garantía podrá ser menor pero siempre igual o superior a un año. </p>
	<h3>3. Precios y disponibilidad</h3>
	<p>Todos los precios incluyen los impuestos legalmente aplicables (el IVA). </p>
	<p>Incluimos en el sitio web información sobre la disponibilidad de los productos que vendemos, detallándolo en la página de información de cada uno de los productos. No nos es posible ofrecer información más precisa sobre la disponibilidad de un producto, más allá de la que mostramos en la página de información del producto o en otros apartados del sitio web. Cuando procesemos tu pedido, te informaremos lo antes posible por correo electrónico o publicando un mensaje en el Servicio de mensajería del sitio web si cualquiera de los productos incluidos en tu pedido no se encontrara disponible. En tal caso, no te cobraremos importe alguno por dicho producto. </p>
	<p>Ten en cuenta que en algunos casos, no nos es posible confirmar una fecha de entrega concreta cuando realiza su pedido. En estos supuestos, te facilitaremos nuestra mejor estimación, normalmente indicando un rango de días. Además, podrás consultar el estado de tu pedido en cualquier momento a través del apartado Mi Cuenta del sitio web o contactando con nuestro Servicio de Atención al cliente. En todo caso, la entrega será realizada dentro del plazo máximo de 30 días a partir de la realización de tu pedido, salvo que se acuerde otra cosa. </p>
	<h3>4. Información del producto</h3>
	<p>A menos que se indique expresamente lo contrario, Discover Úbeda no es el fabricante de los productos vendidos en el sitio web. Si bien nos esforzamos para que la información que aparece en nuestro sitio web sea correcta, en ocasiones el embalaje y los materiales de los productos pueden contener información adicional o distinta de la que aparece en nuestro sitio web. Los componentes también pueden cambiar. Te recomendamos que no te detenga a leer solamente la información disponible en nuestro sitio web si no que, antes de su utilización, leas también detenidamente el etiquetado, las advertencias e instrucciones que acompañen al producto. </p>
	<h3>5. Información Aduanera</h3>
	<p>Cuando realiza un pedido de productos en Discover Úbeda.es para su entrega en un país no perteneciente a la Unión Europea, podría quedar obligado a abonar derechos e impuestos de importación, los cuales te serán cobrados en el momento en el que el paquete llegue a su destino. Cualquier importe adicional debido al despacho aduanero correrá de tu cuenta. Discover Úbeda.es no tiene control alguno sobre tales importes. Las políticas aduaneras varían significativamente de un país a otro por lo que, para mayor información, te rogamos consultes con la oficina aduanera correspondiente. Recuerda, además, que cuando realizas un pedido a Discover Úbeda.es formalmente la ley te considera como importador, y deberás por ello cumplir todas las leyes y reglamentos aplicables en el país en el que recibes el producto. Tu privacidad es una cuestión de gran importancia para nosotros. Queremos que nuestros clientes internacionales sean conscientes de que los envíos internacionales están sujetos a inspección y apertura por parte de las autoridades aduaneras. </p>
	<h3>7. Nuestra responsabilidad</h3>
	<p>Ni Discover Úbeda.es ni las sociedades de su grupo serán responsable de (i) cualesquiera pérdidas que no fueran atribuibles a incumplimiento alguno por su parte, (ii) pérdidas empresariales (incluyendo lucro cesante, de ingresos, de contratos, de ahorros previstos, de datos, pérdida del fondo de comercio o gastos innecesarios incurridos), o de (iii) cualesquiera pérdidas indirectas o de carácter consecuencial que no fueran razonablemente previsibles por ambas partes en el momento en que se formalizó el contrato de compraventa de los productos entre ambas partes. </p>
	<p>La legislación de algunos países pudiera no permitir alguno o la totalidad de los límites de responsabilidad previstos anteriormente. En caso de que dicha legislación te fuera de aplicación, alguno o la totalidad de dichos límites pudieran no ser aplicables. Asimismo dicha legislación pudiera conferirte derechos adicionales a los aquí previstos. </p>
	<p>Nada de lo dispuesto en las presentes condiciones limita o excluye nuestra responsabilidad en caso de falsedad, ni por fallecimiento o daños personales atribuibles a nuestra negligencia o dolo. </p>
	<p>Asimismo Discover Úbeda.es no será responsable de ninguna demora o incumplimiento de sus obligaciones derivadas de las presentes condiciones si dicha demora o incumplimiento fuera atribuible a circunstancias ajenas a nuestro control razonable. Esta disposición no afecta a su derecho a recibir el producto en un plazo razonable. Si la demora tuviera lugar con carácter anterior a la remisión del producto, Discover Úbeda.es no te cobrará importe alguno por dicho producto hasta que el mismo te fuera remitido, en cuyo caso podrás cancelar el pedido en cualquier momento previo a dicha expedición. </p>
	<h3>8. Modificación de las condiciones de venta</h3>
	<p>Nos reservamos el derecho a realizar cambios a nuestro sitio web, a nuestras políticas y a nuestros términos y condiciones, incluyendo a las presentes Condiciones de Venta, en cualquier momento. Quedarás sujeto a los términos y condiciones, políticas y Condiciones de Venta en vigor en el momento en que realice su pedido, a menos que, por ley o por requerimiento de las autoridades públicas, se deba efectuar un cambio a dichos términos y condiciones, políticas o a las presentes Condiciones de Venta (en cuyo caso, tales cambios podrían resultar aplicables a cualesquiera pedidos que hubiera realizado anteriormente). Si alguna de las presentes condiciones fuera declarada inválida, nula o por cualquier causa ineficaz, dicha condición se entenderá excluida sin que dicha declaración pueda afectar a la validez ni a la exigibilidad del resto de condiciones. </p>
	<h3>9. Renuncia</h3>
	<p>En caso de incumplimiento por su parte de las presentes Condiciones de Venta, y aún cuando Discover Úbeda.es pudiera no ejercitar cualesquiera derechos a su alcance en dicho momento, Discover Úbeda.es podrá hacer uso de tales derechos y acciones en cualquier otra ocasión en la que pudieras incumplir las presentes Condiciones de Venta. </p>
	<h3>10. Menores de edad</h3>
	<p>No vendemos productos a menores de edad. Los productos para niños que vendemos deben ser comprados por adultos. Los menores de 18 años sólo podrán utilizar Discover Úbeda.es bajo la supervisión de un padre o un tutor. </p>



	
		



</div>

<div class="footer_bg">
</div>
<div class="footer">
	<div class="container">
		<div class="col-md-3 f_grid1">
			<h3>Sobre nosotros:</h3>
<!-- 			<a href="#"><img src="static/images/logo.png" alt=""/></a> -->
			<p>Una bonita tienda donde podrás llevarte recuerdos fabulosos de Úbeda y regalos para toda la familia.</p>
			<p>También ofrecemos visitas guiadas.</p>
		</div>
		<div class="col-md-3 f_grid1 f_grid2">
			<h3>Síguenos</h3>
			<ul class="social">
				<li><a href="https://b-m.facebook.com/DISCOVERUBEDA/"> <i class="fb"> </i><p class="m_3">Facebook</p><div class="clearfix"> </div></a></li>
			    <li><a href="https://twitter.com/discover_ubeda"><i class="tw"> </i><p class="m_3">Twittter</p><div class="clearfix"> </div></a></li>
				<li><a href="https://www.instagram.com/discoverubeda/"><i class="instagram"> </i><p class="m_3">Instagram</p><div class="clearfix"> </div></a></li>
			</ul>
		</div>
		<div class="col-md-3 f_grid1 f_grid3">
			<h3>Contáctanos</h3>
			<ul class="list">
				<li><p>+34 666666666</p></li>
				<li><p>C/Real nº40 Úbeda</p></li>
				<li><p><a href="mailto:ntj00003@red.ujaen.es">ntj00003@red.ujaen.es</a></p></li>
			</ul>
		</div>
		<div class="col-md-3 f_grid3">
			<h3>Encuéntranos:</h3>
				<iframe src="https://www.google.com/maps/embed?pb=!4v1526501579937!6m8!1m7!1s7L2qBH17IAgQCapOS69vLw!2m2!1d38.00957030656649!2d-3.369143237755362!3f241.76736424386468!4f-8.796376115979271!5f0.7820865974627469" width="200" height="150" frameborder="0" style="border:0" allowfullscreen></iframe>
			</div>
		<div class="clearfix"> </div>
		
	</div>
</div>
<div class="footer_bottom">
       	<div class="container">
       		<div class="cssmenu">
				<ul>
					<li><a href="politicaPrivacidad ">Política de privacidad</a></li> .
					<li><a href="terminosServicios ">Términos del servicio</a></li> .
					<li><a href="cookies ">Política de Cookies</a></li>
				</ul>
			</div>
			<div class="copy">
			    <p>&copy;  2018 Plantilla realizada por <a href="#" target="_blank">Discover Úbeda</a></p>
		    </div>
		    <div class="clearfix"> </div>
       	</div>
</div>
</body>
</html>

