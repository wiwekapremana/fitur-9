<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;

class ProductApiController extends Controller
{
   public function index()
   {
       $products = Product::all();
       return response()->json(['messege' => 'succes','data' => $products]);
   }

   public function show($id) 
    {
        $product = Product::find($id);
        return response()->json(['messege' => 'succes','data' => $product]);
    }
    
   public function store(Request $request) 
    {
        $products = Product::create($request->all());
        return response()->json(['messege' => 'succes','data' => $products]);
    }
    
}
