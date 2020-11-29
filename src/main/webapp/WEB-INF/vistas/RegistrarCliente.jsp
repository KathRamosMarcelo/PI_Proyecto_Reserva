<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<!DOCTYPE html>
<html lang="esS" >
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/bootstrapValidator.js"></script>

<link rel="stylesheet" href="css/form-elements.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/bootstrapValidator.css">

 
<title>Registro Cliente</title>
</head>   
<body>    


 <!-- Top content -->
        <div class="top-content">
            <div class="inner-bg">
                <div class="container">
					<!-- 
                    	Aplicando lenguaje de expresiones 
                    	requestScope : memoria request
                        sessionScope : memoria session
                    -->
									
                	<c:if test="${requestScope.mensaje != null}">
               		<div class="alert alert-danger fade in" id="success-alert">
				        <a href="#" class="close" data-dismiss="alert">&times;</a>
				        <strong>${requestScope.mensaje}</strong>
				    </div>
				    </c:if>
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 form-box">
                        	<div class="form-top">
                        		<div class="form-top-left">
                        			<h3>Registro al Portal Cliente</h3>
                            		<p>Ingrese sus Datos:</p>
                        		</div>
                            </div>
                            <div class="form-bottom">
			                    <form id="id_form"  action="login" method="post" class="login-form">
			                    	<div class="form-group">
			                    		<label class="sr-only" for="form-username">Nombres Completos</label>
			                        	<input type="text" name="login" placeholder="Nombres..." class="form-username form-control" id="form-username">
			                        </div>
			                        <div class="form-group">
			                        	<label class="sr-only" for="form-password">Apellido Completos</label>
			                        	<input type="text" name="password" placeholder="Apellidos..." class="form-password form-control" id="form-password">
			                        </div>
			                         <div class="form-group">
			                        	<label class="sr-only" for="form-password">DNI</label>
			                        	<input type="text" name="password" placeholder="DNI..." class="form-password form-control" id="form-password">
			                        </div>
			                         <div class="form-group">
			                         <label class="control-label" for="id_pais">Región</label>
			                         <select id="" name="Región" class='form-control'>
			                        	<option value=" ">[Seleccione Región]</option>
			                        	<option>Lima</option>
			                        	<option>Ancash</option>
			                        	<option>Arequipa</option>
			                        	<option>Ayacucho</option>
			                        	<option>Cajamarca</option>
			                        	<option>Callao</option>
			                        	<option>Huancavelica</option>
			                        	</select>
			                        	 </div>
			                        	 
			                        	 	<div class="form-group">
				<label class="control-label" for="id_provincia">Provincia</label>
				<select id="id_provincia" name="Provincia" class='form-control'>
					<option value=" ">[Seleccione Provincia]</option> 
			        <option value=" ">Lima</option>
			        <option value=" ">Barranca</option>
			        <option value=" ">Cañete</option>
			        <option value=" ">Huaura</option>
			        <option value=" ">Huaral</option>
			        
				</select>
		    </div>
			                        	 
			                        	 
			                        	 
			                        	 
			                        	 
			                        	 
			                         <div class="form-group">
			                        	<label class="sr-only" for="form-password">Celular</label>
			                        	<input type="text" name="password" placeholder="Celular..." class="form-password form-control" id="form-password">
			                        </div>
			                         <div class="form-group">
			                        	<label class="sr-only" for="form-password">Correo Electrónico</label>
			                        	<input type="text" name="password" placeholder="Correo Electrónico..." class="form-password form-control" id="form-password">
			                        </div> 
			                        <div class="form-group">
			                        	<label class="sr-only" for="form-password">Contraseña</label>
			                        	<input type="password" name="password" placeholder="Contraseña..." class="form-password form-control" id="form-password">
			                        </div>
			                       
			                        <button type="submit" class="btn">Ingresar</button>
			                    </form>
		                    </div>
                        </div>
                    </div>
                    
                </div>
            </div>
            
        </div>


     
<script type="text/javascript">
$("#success-alert").fadeTo(1000, 500).slideUp(500, function(){
    $("#success-alert").slideUp(500);
});
</script>


<script type="text/javascript">


$(document).ready(function() {
    $('#id_form').bootstrapValidator({
        message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
        	login: {
                validators: {
                    notEmpty: {
                        message: 'El usuario es un campo obligatorio'
                    }
                }
            },
            password: {
                validators: {
                    notEmpty: {
                        message: 'La contraseña es un campo obligatorio'
                    }
                }
            }
        }   
    });

    // Validate the form manually
    $('#validateBtn').click(function() {
        $('#id_form').bootstrapValidator('validate');
    });
});
</script>

</body>
</html>