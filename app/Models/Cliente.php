<?php
    namespace App\Models;
    use Illuminate\Database\Eloquent\Factories\HasFactory;
    use Illuminate\Database\Eloquent\Model;
    class Cliente extends Model {
        use HasFactory;
        protected $table = 'clientes'; // Podemos especificar el nombre exacto de la tabla asociada al modelo de esta forma.
    }
?>