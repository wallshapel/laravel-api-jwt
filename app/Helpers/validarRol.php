<?php
    use Firebase\JWT\JWT;
    use Firebase\JWT\Key;
    use App\Models\Rol;
	function validarRol($roles, $cabezales): bool {  // Roles es un array de strings.
		if ($roles == null)
       		return false;
		$llave = env('JWT_LLAVE');
		$token = null;  
        preg_match('/Bearer\s(\S+)/', $cabezales, $coincidencias);  // Extrae el token de la cabecera. 
       	$token = $coincidencias[1];
       	$token = JWT::decode($token, new Key($llave, 'HS256'));
       	$modeloRol = new Rol();
       	$rol = $modeloRol->find($token->data->rol_id);
       	if ($rol == null || (!in_array($rol['nombre'], $roles)))  // Verifica si el rol del token coincide con el rol del usuario obtenido de la DB.
       		return false;
       	return true;
	}
?>