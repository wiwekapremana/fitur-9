<h1>EDIT DATA</h1>

<form action="/products/{{$product->id}}" method="POST">
    @method('PUT')
    @csrf
    Nama : <input type="text" name="nama" value="{{$product->nama}}"><br>
    Deskripsi : <input type="text" name="deskripsi" value="{{$product->deskripsi}}"><br>
    Harga : <input type="number" name="harga" value="{{$product->harga}}"><br>
    Stok : <input type="number" name="stok" value="{{$product->stok}}"><br>
    gambar : <input type="text" name="gambar_url" value="{{$product->gambar_url}}"><br>

    <input type="submit" value="Save">
</form>