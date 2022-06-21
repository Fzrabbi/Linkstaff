<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ApiController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// });

Route::group(['middleware' => 'auth:sanctum'], function(){
    //All secure URL's
		Route::post("page/create",[ApiController::class,'create_page']);

		Route::post("follow/person/{personId}",[ApiController::class,'follow_person']);

		Route::post("follow/page/{pageId}",[ApiController::class,'follow_page']);

		Route::post("person/attach-post",[ApiController::class,'attach_post']);
		
		Route::post("page/{pageId}/attach-post",[ApiController::class,'attach_post_page']);

		Route::post("person/feed",[ApiController::class,'feed']);




    });
Route::post("auth/login",[ApiController::class,'index']);
Route::post("auth/register",[ApiController::class,'register']);
