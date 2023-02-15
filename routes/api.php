<?php
    use Illuminate\Http\Request;
    use Illuminate\Support\Facades\Route;
    use App\Http\Controllers\Autenticacion\LoginController;
    use App\Http\Controllers\API\ClienteController;
    // Los nombres de rutas no funcionan en el modo API.
    Route::post('login', [LoginController::class, 'index']);
    Route::controller(ClienteController::class)->group(function () {
        Route::get('clientes', 'index');
        Route::get('cliente/{id?}', 'editar'); 
        Route::post('cliente', 'crear');
        Route::put('cliente/{id?}', 'actualizar');
        Route::delete('cliente/{id?}', 'eliminar');    
    });    
?>