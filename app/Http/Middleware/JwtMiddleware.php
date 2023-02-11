<?php
    namespace App\Http\Middleware;
    use Closure;
    use Exception;
    use Illuminate\Http\Request;
    use Firebase\JWT\JWT;
    use Firebase\JWT\Key;
    use Firebase\JWT\ExpiredException;
    class JwtMiddleware {
        /**
         * Handle an incoming request.
         *
         * @param  \Illuminate\Http\Request  $request
         * @param  \Closure(\Illuminate\Http\Request): (\Illuminate\Http\Response|\Illuminate\Http\RedirectResponse)  $next
         * @return \Illuminate\Http\Response|\Illuminate\Http\RedirectResponse
         */
        public function handle(Request $req, Closure $next) {
            $cabeza = $req->header('Authorization');
            $token = null;             
            if (!empty($cabeza)) { // Extraemos el token de la cabecera.
                if (preg_match('/Bearer\s(\S+)/', $cabeza, $coincidencias)) 
                    $token = $coincidencias[1];
            }
            if (is_null($token) || empty($token))
                return response()->json(['error' => 'token requerido', 401]);
            try {
                $llave = env('JWT_LLAVE');                          
                $decodificado = JWT::decode($token, new Key($llave, 'HS256'));
                //return response()->json($decodificado); die(); 
                return $next($req);
            } catch(ExpiredException $e) {
                return response()->json(['error' => 'token expirado', 401]);
            } catch(Exception $e) {
                return response()->json(['error' => 'Ha ocurrido un error en el servidor', 401]);
            }
        }
    }
?>
