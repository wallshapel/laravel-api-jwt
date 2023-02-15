<?php
    namespace App\Http\Controllers\Autenticacion;
    use App\Http\Controllers\Controller;
    use Illuminate\Http\Request;
    use Illuminate\Support\Facades\Auth;  // Necesario para la función attempt.
    use Illuminate\Validation\ValidationException;
    use Firebase\JWT\JWT;
    class LoginController extends Controller {
        public function index(Request $req) {
            $req->only('email', 'password');
            $credenciales = $this->validate($req, [  // La variable credenciales solo tendrá en cuenta los campos que se validen con validate().
                'email'     => 'required|string|email',
                'password'  => 'required|string'
            ]);
            if (Auth::attempt($credenciales)) {  // Verifica si el usuario y contraseña son correctos contra la DB. compara la contraseña encriptada automáticamente.
                $token = $this->generarToken(Auth::user()->name, $req->email, Auth::user()->rol_id); 
                return response()->json(['Token' => $token], 201);
            } else 
                return response()->json(['error' => __('auth.failed')], 400);    
        }
        private function generarToken($nombre, $email, $rol_id) {
            $llave = env('JWT_LLAVE');
            $tiempo = time();
            $payload = [
                'aud'   => env('APP_URL'),                
                'iat'   => $tiempo,
                'exp'   => $tiempo + 30,
                'data'  => [
                    'name'  => $nombre,
                    'email' => $email,
                    'rol_id'=> $rol_id
                ]
            ];
            $token = JWT::encode($payload, $llave, 'HS256');
            return $token;   
        }          
    }
?>