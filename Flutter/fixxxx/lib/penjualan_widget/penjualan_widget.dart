import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:fixxxx/sales_report_widget/sales_report_widget.dart';
import 'package:fixxxx/values/values.dart';
import 'package:flutter/material.dart';

class PenjualanWidget extends StatelessWidget {
  void onButtonPressed(BuildContext context) => Navigator.push(
      context, MaterialPageRoute(builder: (context) => SalesReportWidget()));
  const PenjualanWidget({
    Key key,
  }) : super(key: key);

  final String url = 'http://192.168.100.14/api/products';

  Future getProducts() async {
    var response = await http.get(Uri.parse(url));
    print(jsonDecode(response.body));
    return jsonDecode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Penjualan Produk'),
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[Colors.lightBlue, Colors.blue])),
          ),
        ),
        body: FutureBuilder(
            future: getProducts(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                  itemCount: snapshot.data['data'].length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 180,
                      child: Card(
                        elevation: 5,
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              height: 190,
                              width: 160,
                              child: Image.network(
                                  snapshot.data['data'][index]['gambar_url']),
                            ),
                            Expanded(
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          snapshot.data['data'][index]['nama'],
                                          style: TextStyle(
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold),
                                        )),
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                          snapshot.data['data'][index]
                                              ['deskripsi'],
                                          style: TextStyle(
                                              fontSize: 13.0,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        'Tersisa ' +
                                            snapshot.data['data'][index]['stok']
                                                .toString(),
                                        style: TextStyle(
                                            fontSize: 13.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('-'),
                                        Text(
                                            'Rp.' +
                                                snapshot.data['data'][index]
                                                        ['harga']
                                                    .toString(),
                                            style: TextStyle(
                                                fontSize: 15.0,
                                                fontWeight: FontWeight.bold)),
                                      ],
                                    ),
                                  ]),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                );
              } else {
                return Text("GAGAL");
              }
            }));
  }
}
