<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\brandsController;

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

//Get brands  route /brands
Route::get('brands', [brandsController::class, 'getBrands']);

//Get models by brand route /brands/:id/models
Route::get('brands/{id}/models', [brandsController::class, 'getModels']);

//Post brands route /bands
Route::post('brands', [brandsController::class, 'postBrands']);

//Post model by brand route /brands/:id/models
Route::post('brands/{id}/models', [brandsController::class, 'postModels']);

//Put price by model route /models/:id
Route::put('models/{id}', [brandsController::class, 'putModels']);

//Get models by price  route /brands
Route::get('models', [brandsController::class, 'getByPrice']);