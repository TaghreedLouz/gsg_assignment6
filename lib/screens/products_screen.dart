import 'dart:convert';
import 'dart:developer';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:gsg_assignment6/widgets/product_widget.dart';
import 'package:http/http.dart';

import '../model/product_model.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {

  List<ProductModel> products = [];

  @override
  void initState() {
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: products.isEmpty
          ? Center(child: CircularProgressIndicator()) // loading
          : ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                return ProductWidget(model: products[index]);
              },
            ),
    );
  }

  fetchData() async {
    var response = await get(Uri.parse("https://fakestoreapi.com/products"));
    print(response.body); // json(string)
    // log(response.body);
    var data = jsonDecode(response.body); // decoding json
    //[{}] -> List[models]
    for (Map map in data) {
      ProductModel model = ProductModel.fromJson(map);
      setState(() {
        products.add(model);
      });
    }
  }
}

//dart async, await, Future, Stream, then, catchError, onError, try, catch task
complexOperation() async {
  // Future (uncompleted completed with data completed with error)

  Future<String> resultFuture = Future.delayed(Duration(seconds: 2), () {
    Random().nextBool() ? throw Exception() : null;

    return 'Ahmed';
  }); // Future.delayed

  String resultText = await resultFuture;
  print(resultFuture);

  resultFuture
      .then((value) {
        print('then $value');
      })
      .onError((e, s) {
        print('onError $e');
      });
}
