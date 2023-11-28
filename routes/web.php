<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\EmpleadoController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('empleado', function () {
    return view('welcome');
});

// Ruta para mostrar el formulario de creación
Route::get('/empleados/create', [EmpleadoController::class, 'create'])->name('empleado.create');

// Ruta para almacenar un nuevo empleado
Route::post('/empleado', [EmpleadoController::class, 'store'])->name('empleado.store');

// Ruta para listar los empleados
Route::get('/empleado', [EmpleadoController::class, 'index'])->name('empleado.index');

// Ruta para obtener las ciudades
Route::get('/obtener-ciudades/{paisId}', [EmpleadoController::class, 'obtenerCiudades']);

// Ruta para mostrar el formulario de edición
Route::get('/empleado/{empleado}/edit', [EmpleadoController::class, 'edit'])->name('empleado.edit');


// Ruta para actualizar el empleado después de la edición
Route::put('/empleado/{empleado}', [EmpleadoController::class, 'update'])->name('empleado.update');


// Ruta para eliminar un empleado
Route::delete('/empleado/{empleado}', [EmpleadoController::class, 'destroy'])->name('empleado.destroy');





