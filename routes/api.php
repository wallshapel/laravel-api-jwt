<?php
    use Illuminate\Http\Request;
    use Illuminate\Support\Facades\Route;
    use App\Http\Controllers\Autenticacion\LoginController;
    use App\Http\Controllers\API\ClienteController;
    Route::post('login', [LoginController::class, 'index']);
    Route::get('clientes', [ClienteController::class, 'index']);
    Route::get('cliente/{id?}', [ClienteController::class, 'editar']);
?>