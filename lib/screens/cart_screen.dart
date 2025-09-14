import 'dart:developer';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(onPressed: () {
            fetchData();
          }, child: Text("Fetch Data"))),
    );
  }
}
fetchData() async {
  var response = await get(Uri.parse("https://fakestoreapi.com/products"));
  print(response.body);
 // log(response.body);
}

complexOperation() async {

// Future (uncompleted completed with data completed with error)

  Future<String> resultFuture = Future.delayed (Duration(seconds: 2), () {

    Random().nextBool() ? throw Exception() : null;

    return 'Ahmed';

  }); // Future.delayed

  String resultText = await resultFuture;
  print(resultFuture);

  resultFuture.then((value) {

    print('then $value');

  }).onError((e,s){

    print('onError $e');

  });

}