<?php
    namespace App\Http\Controllers\API;
    use App\Http\Controllers\Controller;
    use Illuminate\Http\Request;
    use App\Models\Cliente;
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
                return response->json('ha ocurrido un error en el servidor', 500);
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
                return response->json('ha ocurrido un error en el servidor', 500);
            }
        }
        // public function crear() {
        //     try {
        //         if (!validarRol(['Administrador'], $req->header('AUTHORIZATION')))
        //             return response()->json('acceso denegado', 403);
        //         $cliente = $this->request->getJSON();
        //         if ($this->model->insert($cliente))
        //             return $this->respondCreated($cliente);
        //         else
        //             return $this->failValidationError($this->model->validation->listErrors());
        //     } catch (\Exception $e) {
        //         return response->json('ha ocurrido un error en el servidor', 500);
        //     }
        // }        
        // public function actualizar($id = null) {
        //     try {
        //         if (!validarRol(['Administrador'], $req->header('AUTHORIZATION')))
        //             return response()->json('acceso denegado', 403);
        //         if ($id == null) 
        //             return $this->failValidationError('Id no válido.');
        //         $clienteVerificado = $this->model->find($id);
        //         if ($clienteVerificado == null)  
        //             return $this->failNotFound('No se ha encontrado un cliente con el Id = '. $id);
        //         $cliente = $this->request->getJSON();  // Obtenemos los nuevos datos del cliente.
        //         if ($this->model->update($id, $cliente)) { // Actualizamos los datos del cliente y preguntamos si todo ha ido ok. 
        //             $cliente->id = $id;
        //             return $this->respondUpdated($cliente);
        //         } else
        //             return $this->failValidationError($this->model->validation->listErrors());
        //         return $this->respond($cliente);
        //     } catch (\Exception $e) {
        //         return response->json('ha ocurrido un error en el servidor', 500);
        //     }
        // }
        // public function eliminar($id = null) {
        //     try {
        //         if (!validarRol(['Administrador'], $req->header('AUTHORIZATION')))
        //             return response()->json('acceso denegado', 403);
        //         if ($id == null) 
        //             return $this->failValidationError('Id no válido.');
        //         $cliente = $this->model->find($id);
        //         if ($cliente == null)  
        //             return $this->failNotFound('No se ha encontrado un cliente con el Id = '. $id);
        //         if ($this->model->delete($id))  
        //             return $this->respondDeleted($cliente);
        //         else
        //             return $this->failServerError('No se pudo eliminar el registro.');
        //     } catch (\Exception $e) {
        //         return response->json('ha ocurrido un error en el servidor', 500);
        //     }
        // }
    }
?>