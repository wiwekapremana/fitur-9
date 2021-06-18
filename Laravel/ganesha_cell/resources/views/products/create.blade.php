<h1>TAMBAH DATA</h1>

<form action="/products" method="post">
    @csrf
    Nama : <input type="text" name="nama"><br>
    Deskripsi : <input type="text" name="deskripsi"><br>
    Harga : <input type="number" name="harga"><br>
    Stok : <input type="number" name="stok"><br>
    gambar : <input type="text" name="gambar_url"><br>

    <input type="submit" value="Save">
</form>