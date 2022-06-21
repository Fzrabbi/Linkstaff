<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;

use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use App\Models\Person;
use App\Models\Page;

use Illuminate\Support\Facades\Hash;

class ApiController extends BaseController
{
    //use AuthorizesRequests, DispatchesJobs, ValidatesRequests;
    function index(Request $request)
    {
        $user= Person::where('email', $request->email)->first();
        //dd($request->pass);
            if (!$user || !Hash::check($request->password, $user->password)) {
                return response([
                    'message' => ['These credentials do not match our records.']
                ], 404);
            }
        
             $token = $user->createToken('my-app-token')->plainTextToken;
        
            $response = [
                'user' => $user,
                'token' => $token
            ];
        
             return response($response, 201);
    }
    function register(Request $r){

        $validated = $r->validate([
            'email'=> 'required|email'
        ]);
        
        $person= new Person;

        $person->first_name= $r->first_name;
        $person->last_name=$r->last_name;
        $person->email=$r->email;
        $person->password=Hash::make($r->password);
        $person->save();

        $response = [
                'message' => 'Registrations success...!'
            ];
        return response($response, 201);
    }
    function create_page(Request $request)
    {
        $page = new Page;
        $u_id= strval(auth()->user()->id);
        $page->page_name= $request->name;
        $page->creators_id= $u_id;
        $page->save();
        
        $response = [
                'message' => 'success'
            ];
        return response($response, 201);
    }
    function follow_person($personId){
        
        $follower= strval(auth()->user()->id);

        DB::table('person_follow')->insert([
            'person_id'   => $personId,
            'follower_id' => $follower
        ]);
        $response = [
                'message' => 'Follow success for Person ID- '.$personId
            ];
        return response($response, 201);
    }
    function follow_page($pageId){
        
        $follower= strval(auth()->user()->id);

        DB::table('page_follow')->insert([
            'page_id'   => $pageId,
            'follower_id' => $follower
        ]);
        $response = [
                'message' => 'Follow success for Page Id- '.$pageId
            ];
        return response($response, 201);
    }
    function attach_post(Request $request){
        
        $u_id= strval(auth()->user()->id);
        

        DB::table('posts')->insert([
            'content'   => $request->post_content,
            'person_id' => $u_id
        ]);
        $response = [
                'message' => 'Post Updated success for Person Id- '.$u_id
            ];
        return response($response, 201);
    }
    function attach_post_page(Request $request, $pageId){



        $u_id= strval(auth()->user()->id);

        $pages= Page::where('creators_id', $u_id)->Where('id',$pageId)->first();
        if (!$pages){
            return response([
                    'message' => ['The following Page is not Own by you.']
                ], 404);
        }

        
        DB::table('posts')->insert([
            'content'   => $request->post_content,
            'person_id' => $u_id,
            'page_id' => $pageId

        ]);
        $response = [
                'message' => 'Post Updated success for Person Id- '.$u_id
            ];
        return response($response, 201);
    }

    function feed(Request $request){
        $page_size=(int)strval($request->page_size);
        $page_no=(int)strval($request->page);
        // var_dump($page_size);
        // var_dump($page_no);
        // exit;
        $posts=DB::table('posts')->paginate($page_size, ['*'], 'page', $page_no);
        $response = [
                'Posts' => $posts
            ];
        
             return response($response, 201);
    }
}




// class UserController extends Controller
// {
//     // 

    
// }