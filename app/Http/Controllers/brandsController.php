<?php

namespace App\Http\Controllers;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;

class brandsController extends Controller{
    
    public function __construct()
    {
        
    }

    // Get brands
    public function getBrands(){
        $allBrands = DB::table('brands as b')->select([DB::raw('max(id) as id'),'brand_name as nombre',DB::raw('max(average_price) as average_price')])->groupBy('brand_name')->get();
        return response()->json([
            'message' => 'Ok',
            'data' => $allBrands
        ], 200);
    }

    //Get models by brand
    public function getModels($id){
        $allBrands = DB::table('brands')->select(['id','name','average_price'])->where('brand_name',$id)->get();
        return response()->json([
            'message' => 'Ok',
            'data' => $allBrands
        ], 200);
    }

    // Post brands
    public function postBrands(Request $request){
        $data = $request->json()->all();
        $existBrand = DB::table('brands')->select(['brand_name'])->where('brand_name',$data['name'])->first();
        if(isset($existBrand->brand_name)){

            return response()->json([
                'message' => 'The brand '.$data['name'].' is already exists.',
                'data' => $data
            ], 400);
        }else{
            DB::insert('insert into brands(brand_name) values(?)',[$data['name']]);
            return response()->json([
                'message' => 'The brand '.$data['name'].' was created.',
                'data' => $data
            ], 200);
        }
        
    }

    // Post models
    public function postModels(Request $request, $id){
        $data = $request->json()->all();
        $existBrand = DB::table('brands')->select(['brand_name'])->where('brand_name',$id)->first();
        if(!isset($existBrand->brand_name)){

            return response()->json([
                'message' => 'The brand '.$data['name'].' does not exists.',
                'data' => $data
            ], 400);
        }else{
            $existModel = DB::table('brands')->select(['name'])->where('brand_name',$id)->where('name',$data['name'])->first();
            if(isset($existModel->name)){

                return response()->json([
                    'message' => 'The model '.$data['name'].' is already exists on the brand.',
                    'data' => $data
                ], 400);
            }else{
                DB::insert('insert into brands(name,average_price) values(?,?)',[$data['name'],$data['average_price']]);
                return response()->json([
                    'message' => 'The models '.$data['name'].' was created.',
                    'data' => $data
                ], 200);
            }
        }
        
    }

    // Put models
    public function putModels(Request $request, $id){
        $data = $request->json()->all();
        if($data['average_price'] < 100000){
            return response()->json([
                'message' => 'The price '.$data['average_price'].' is low. The average_price must be greater then 100,000.',
                'data' => $data
            ], 400);
        }else{
            DB::update('update brands set average_price=? where name=?',[$data['average_price'],$id]);
            return response()->json([
                'message' => 'The price of model '.$data['name'].' was changed.',
                'data' => $data
            ], 200);
        }
        
    }

    //Get models by price
    public function getByPrice(Request $request){
        $data = $request->all();
        if(isset($request['greater']) && isset($request['lower'])){
            if($request['greater'] > $request['lower']){
                return response()->json([
                    'message' => 'The greater price is greater than lower.',
                    'data' => $data
                ], 400);
            }else{
                $allBrands = DB::table('brands')->select(['id','name','average_price'])->where('average_price','>',$request['greater'])->where('average_price','<',$request['lower'])->get();
                return response()->json([
                    'message' => 'Ok',
                    'data' => $allBrands
                ], 200);
            } 
        }else{
            return response()->json([
                'message' => 'Greater or lower does not exists.',
                // 'data' => $data
            ], 400);
        }
    }

}