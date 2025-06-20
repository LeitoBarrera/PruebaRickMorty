<?php

use App\Http\Controllers\PersonajeController;

Route::get('/', [PersonajeController::class, 'index']);
Route::get('/guardar', [PersonajeController::class, 'guardar']);
Route::get('/editar/{id}', [PersonajeController::class, 'editar']);
Route::post('/actualizar/{id}', [PersonajeController::class, 'actualizar']);

