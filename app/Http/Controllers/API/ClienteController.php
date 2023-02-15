<?php
    namespace App\Http\Controllers\API;
    use App\Http\Controllers\Controller;
    use Illuminate\Http\Request;
    use App\Models\Cliente;
    use Illuminate\Support\Facades\Validator;
    class ClienteController extends Controller {
        public function __construct() {
            $this->middleware('jwt');  // Si este middleware devuelve algun error o excepción, entonces ningún método estará disponible.
        }
        public function index(Request $req) {
            try {
                if (!validarRol(['Administrador'], $req->header('AUTHORIZATION')))
                    return response()->json('acceso denegado', 403);
                $clientes = Cliente::get();
                return $clientes;    
            } catch (Exception $e) {
                return response->json($e, 500);
            }            
        }
        public function editar(Request $req, $id = null) {
            try {
                if (!validarRol(['Administrador'], $req->header('AUTHORIZATION')))
                    return response()->json('acceso denegado', 403);
                if ($id == null) 
                    return response()->json('id no válido', 400);
                $cliente = Cliente::find($id);
                if ($cliente == null)  
                    return response()->json('no se ha encontrado un cliente con el id = '. $id, 404);
                return $cliente;
            } catch (Exception $e) {
                return response->json($e, 500);
            }
        }
        public function crear(Request $req) {
            try {
                if (!validarRol(['Administrador'], $req->header('AUTHORIZATION')))
                    return response()->json('acceso denegado', 403);             
                $validador = Validator::make($req->all(), Cliente::validacion());        
                if ($validador->fails())
                    return response()->json($validador->errors(), 422);
                $cliente            = new Cliente;
                $cliente->nombre    = $req->nombre;
                $cliente->apellido  = $req->apellido;
                $cliente->telefono  = $req->telefono;
                $cliente->email     = $req->email;
                $cliente->save();
                return response()->json(['mensaje' => 'cliente creado', 'datos' => $cliente], 201);
            } catch (Exception $e) {
                return response->json($e, 500);
            }
        }        
        public function actualizar(Request $req, $id = null) {
            try {
                if (!validarRol(['Administrador'], $req->header('AUTHORIZATION')))
                    return response()->json('acceso denegado', 403);
                if ($id == null) 
                    return response()->json('id no válido', 400);
                $validador = Validator::make($req->all(), Cliente::validacion($id, $req->email));
                if ($validador->fails())
                    return response()->json($validador->errors(), 422);
                $clienteVerificado = Cliente::find($id);
                if ($clienteVerificado == null)  
                    return response()->json('no se ha encontrado un cliente con el id = '. $id, 404);
                $clienteVerificado->nombre    = $req->nombre;
                $clienteVerificado->apellido  = $req->apellido;
                $clienteVerificado->telefono  = $req->telefono;
                $clienteVerificado->email     = $req->email;
                $clienteVerificado->save();
                return response()->json(['mensaje' => 'cliente actualizado', 'datos' => $clienteVerificado], 200);
            } catch (Exception $e) {
                return response->json($e, 500);
            }
        }
        public function eliminar(Request $req, $id = null) {
            try {
                if (!validarRol(['Administrador'], $req->header('AUTHORIZATION')))
                    return response()->json('acceso denegado', 403);
                if ($id == null) 
                    return response()->json('id no válido', 400);
                $cliente = Cliente::find($id);
                if ($cliente == null)  
                    return response()->json('no se ha encontrado un cliente con el id = '. $id, 404);
                if ($cliente->delete($id))  
                    return response()->json(['mensaje' => 'cliente eliminado', 'datos' => $cliente], 200);
                else
                    return response()->json('no se pudo eliminar el registro', 404);
            } catch (Exception $e) {
                return response->json($e, 500);
            }
        }
    }
?>