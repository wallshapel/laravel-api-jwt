<?php
    namespace App\Models;
    use Illuminate\Database\Eloquent\Factories\HasFactory;
    use Illuminate\Database\Eloquent\Model;
    use Illuminate\Support\Facades\DB;  // Necesario para hacer consultas con SQL nativo.
    class Cliente extends Model {
        use HasFactory;
        protected $table = 'clientes'; // Podemos especificar el nombre exacto de la tabla asociada al modelo de esta forma.
        protected $fillable = 
            [
                'nombre',
                'apellido',
                'telefono',
                'email'
            ];
        public static function validacion($id = null, $email_viejo = null) {
            $reglas = 
                [
                    'nombre'    => 'required|string|max:75',
                    'apellido'  => 'required|string|max:75',
                    'telefono'  => 'required|string|max:8',
                    'email'     => 'required|string|max:85|email|unique:clientes'
                ];
            if ($id != null || $email_viejo != null) { 
                $email = DB::select('SELECT email FROM clientes WHERE clientes.id = ?', [$id]);
                if ($email[0]->email == $email_viejo) {
                    return [
                        'nombre'    => 'required|string|max:75',
                        'apellido'  => 'required|string|max:75',
                        'telefono'  => 'required|string|max:8',
                        'email'     => 'required|string|max:85|email'
                    ];    
                } else 
                    return $reglas;
            }
            return $reglas;
        }
    }
?>