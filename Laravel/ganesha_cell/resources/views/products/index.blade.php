<h1>List Produk</h1>
<table>
    <thead>
        <tr>
            <th>Nama Barang</th>
            <th>Deskripsi</th>
            <th>Stok</th>
            <th>Harga</th>

        </tr>
    </thead>
    <tbody>
        @foreach ($products as $product)
        <tr>
            <td>{{$product->nama}}</td>
            <td>{{$product->deskripsi}}</td>
            <td>{{$product->stok}}</td>
            <td>{{$product->harga}}</td>
            <td>
                <a href="/products/{{$product->id}}/edit">Edit</a>
                <form action="/products/{{$product->id}}" method="post">
                @method('DELETE')
                @csrf
                <input type="submit" value="Hapus">
                </form>
            </td>
        </tr>
        @endforeach
     
    </tbody>
</table>
<a href="/products/create">Tambah</a>