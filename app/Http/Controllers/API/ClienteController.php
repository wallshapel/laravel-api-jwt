<?php
    namespace App\Http\Controllers\API;
    use App\Http\Controllers\Controller;
    use Illuminate\Http\Request;
    class ClienteController extends Controller {
        // public function __construct() {
        //     $this->middleware('jwt');  // Si este middleware devuelve algun error o excepción, entonces ningún método estará disponible.
        // }
        public function index() {
            return 'hola';
        }    
    }
?>