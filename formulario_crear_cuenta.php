<?php
/* Para incluir librerías de base de datos y utilidades */
include_once ('php/utilidades.php');
	
	include_once ('php/header.inc');
?>

			<section class="clear">

				<form action="php/registro.php" method="POST">
					<table>
						<tr>
							<td>Email</td>
							<td><input type="text" name="email"></td>
						</tr>
						<tr>
							<td>Contraseña</td>
							<td><input type="password"  name="contrasena"></td>
						</tr>
						<tr>
							<td>Fecha Nacimiento</td>
							<td><input type="date"  name="fec_nac"></td>
						</tr>
						<tr>
							<td>Nacionalidad</td>
							<td><input type="text" name="pais"></td>
						</tr>
						<tr>
							<td>Region</td>
							<td><input type="text" name="region"></td>
						</tr>
						<tr>
							<td>Ciudad</td>
							<td><input type="text" name="ciudad"></td>
						</tr>

						<?php if (isset ($_SESSION['rol']) == 'admin') { ?>
						<tr>
							<td>Rol</td>
							<td><select name="rol">
								<option value="admin">Administrador</option>
								<option value="cliente">Cliente</option>
								</select>
							</td>
						</tr>
						<?php } ?>
						<tr>
							<td><button type="submit" >Registrar</button></td>
						</tr>
						
					</table>
				</form>
				
			</section>
		</div>
</body>
</html>