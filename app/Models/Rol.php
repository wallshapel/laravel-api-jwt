<?php
    namespace App\Models;
    use Illuminate\Database\Eloquent\Factories\HasFactory;
    use Illuminate\Database\Eloquent\Model;
    class Rol extends Model {
        use HasFactory;
        protected $table = 'roles'; // Podemos especificar el nombre exacto de la tabla asociada al modelo de esta forma.
    }
?>