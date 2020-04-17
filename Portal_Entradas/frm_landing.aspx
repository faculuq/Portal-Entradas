<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="frm_landing.aspx.vb" Inherits="Portal_Entradas.frm_landing" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Portal Entradas</title>
	
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
	
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Contacto/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Contacto/fonts/Lato">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Contacto/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Contacto/vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Contacto/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Contacto/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Contacto/vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Contacto/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Contacto/css/util.css">
	<link rel="stylesheet" type="text/css" href="Contacto/css/main.css">
<!--===============================================================================================-->
</head>
<body>
  <div class="container-contact100">
		<div class="wrap-contact100">
			<form class="contact100-form validate-form" runat="server">
				<span class="contact100-form-title">
					Envianos un mensaje.
				</span>

				<!-- <label class="label-input100" for="first-name">Tell us your name *</label> -->
				<div class="wrap-input100 rs1-wrap-input100 validate-input" data-validate="Completá con tu nombre.">
					<%--<input id="txtNombre" runat="server" class="input100" type="text" name="first-name" placeholder="Nombre *">--%>
                    <asp:TextBox id="txtNombre" runat="server" class="input100" type="text" name="first-name" placeholder="Nombre *"></asp:TextBox>
					<span class="focus-input100"></span>
				</div>
				<div class="wrap-input100 rs2-wrap-input100 validate-input" data-validate="Completá con tu apellido.">
					<%--<input id="txtApellido" runat="server" class="input100" type="text" name="last-name" placeholder="Apellido *">--%>
                    <asp:TextBox id="txtApellido" runat="server" class="input100" type="text" name="last-name" placeholder="Apellido *"></asp:TextBox>
					<span class="focus-input100"></span>
				</div>

				<!-- <label class="label-input100" for="email">Enter your email *</label> -->
				<div class="wrap-input100 validate-input" data-validate = "Ingresá un email válido.">
					<%--<input id="txtEmail" runat="server" class="input100" type="text" name="email" placeholder="Email * ejemplo@email.com">--%>
                    <asp:TextBox id="txtEmail" runat="server" class="input100" type="text" name="email" placeholder="Email * ejemplo@email.com"></asp:TextBox>
					<span class="focus-input100"></span>
				</div>

				<!-- <label class="label-input100" for="phone">Enter phone number</label> -->
				<div class="wrap-input100 validate-input" data-validate = "Completá con tu teléfono.">
					<%--<input id="txtTelefono" runat="server" class="input100" type="text" name="phone" placeholder="Teléfono ej: (011) 5555-1111">--%>
                    <asp:TextBox id="txtTelefono" runat="server" class="input100" type="text" name="phone" placeholder="Teléfono ej: (011) 5555-1111"></asp:TextBox>
					<span class="focus-input100"></span>
				</div>

				<!-- <label class="label-input100" for="message">Message *</label> -->
				<div class="wrap-input100 validate-input" data-validate = "Escribí tu mensaje.">
					<textarea id="txtMensaje" runat="server" class="input100" name="message" placeholder="Escribinos un mensaje *"></textarea>
					<span class="focus-input100"></span>
				</div>

				<div class="container-contact100-form-btn" runat="server">
                    
					<button class="contact100-form-btn" id="btnEnviar" runat="server">
						<asp:Button ID="btn_enviar" class="contact100-form-btn" runat="server"  Text="Enviar" />
					</button>
				</div>
			</form>

			<div class="contact100-more flex-col-c-m" style="background-image: url('img/bg-01.jpg');">
				
				
				<div class="flex-w size1 p-b-47">
				<div class="flex-col size2" style="padding: 20px;">
					<a id="volver_inicio" href="index.html"><img src="img/logo3.png" style="width: 110px; height: 45px;""></a>
				</div>
			</div>
				
				<div class="flex-w size1 p-b-47">
					<!-- <div class="txt1 p-r-25">
						<span class="lnr lnr-map-marker"></span>
					</div> -->

					

					<div class="flex-col size2" style="padding: 20px;">
						<span class="txt1 p-b-20">
							Portal Entradas es una herramienta de software que permite planificar,
							administrar y controlar todas las estapas en el ciclo de vida de un evento.
						</span>

						<!-- <span class="txt2">
							Mada Center 8th floor, 379 Hudson St, New York, NY 10018 US
						</span> -->
					</div>
				</div>

				<!-- <div class="dis-flex size1 p-b-47">
					<div class="txt1 p-r-25">
						<span class="lnr lnr-phone-handset"></span>
					</div>

					<div class="flex-col size2">
						<span class="txt1 p-b-20">
							Lets Talk
						</span>

						<span class="txt3">
							+1 800 1236879
						</span>
					</div>
				</div> -->

				<!-- <div class="dis-flex size1 p-b-47">
					<div class="txt1 p-r-25">
						<span class="lnr lnr-envelope"></span>
					</div>

					<div class="flex-col size2">
						<span class="txt1 p-b-20">
							General Support
						</span>

						<span class="txt3">
							contact@example.com
						</span>
					</div>
				</div> -->
				<div class="dis-flex size1 p-b-47">
					<a id="contactos" href="https://www.facebook.com/goodappsoftware/"><img src="img/facebook.png" style="width: 32px; height: 32px;""></a>
					<a id="contactos" href="https://www.instagram.com/goodapps_ok/"><img src="img/instagram.png" style="width: 32px; height: 32px;"></a>
					<a id="contactos" href="https://api.whatsapp.com/send?phone=+543573435380&text=Hola, me interesaria conocer más!"><img src="img/whatsapp.png" style="width: 32px; height: 32px;"></a>

				</div>
			</div>
		</div>
	</div>



	<div id="dropDownSelect1"></div>

<!--===============================================================================================-->
	<script src="Contacto/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="Contacto/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="Contacto/vendor/bootstrap/js/popper.js"></script>
	<script src="Contacto/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="Contacto/vendor/select2/select2.min.js"></script>
	<script>
		$(".selection-2").select2({
			minimumResultsForSearch: 20,
			dropdownParent: $('#dropDownSelect1')
		});
	</script>
<!--===============================================================================================-->
	<script src="Contacto/vendor/daterangepicker/moment.min.js"></script>
	<script src="Contacto/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="Contacto/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="Contacto/js/main.js"></script>
	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
	<script>
	  window.dataLayer = window.dataLayer || [];
	  function gtag(){dataLayer.push(arguments);}
	  gtag('js', new Date());

	  gtag('config', 'UA-23581568-13');
	</script>
</body>
</html>
