<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Product;
use App\Models\Image;
use Auth;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        $products=Product::where('user_id', "=", Auth::user()->id)->get();
        return view('admin.products.index', compact('products'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view('admin.products.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate(request(), [
            'name' => 'required|unique:products,name',
            'price' => 'required|numeric',
            'description' => 'required',
        ]);


        //funsi store
        $product = new Product();
        $product->user_id = Auth::user()->id;
        $product->name = $request->post('name');
        $product->price = $request->post('price');
        $product->description = strip_tags($request->post('description'));
        $product->save();

         if ($request->hasFile('images')) {
            foreach ($request->file('images') as $file) {
                $image = new Image();
                $image->image_title = $product->name;
                $image->image_src = $file->getClientOriginalName();
                $image->image_desc = $product->description;
                $product->images()->save($image);
                $file->move(public_path().'/images', $image->image_src);
            }
        }



        return redirect('admin/products')->with('success', 'Produk berhasil di simpan');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //fungsi show sesuai id yang di pilih
        $products = Product::find($id);
        return view('admin.products.show',compact('products'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //fungsi edit untuk mengambil data ecommerce sesuai id yang dipilih
        $products=Product::find($id);
        return view('admin.products.edit',compact('products'));

    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //fungsi update berdasarkan id
       $this->validate(request(), [
            'name' => 'required',
            'price' => 'required|numeric',
            'description' => 'required',
        ]);

        //fungsi update
        $product = Product::find($id);
        $product->name = $request->get('name');
        $product->price = $request->get('price');
        $product->description = $request->get('description');
        $product->save();

        return redirect('admin/products')->with('success', 'Produk berhasil di update');


    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //fungsi delete berdasarkan id
        $product = Product::find($id);
        $product->delete();

        return redirect('admin/products')->with('success', 'Produk berhasil di hapus');
    }
}
