import 'package:flutter/material.dart';
import 'package:gsg_assignment6/model/product_model.dart';

import '../routes.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({super.key, required this.model});
  final ProductModel model;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.pushNamed(context, Routes.productsDetails, arguments: model);
      },
      leading: SizedBox(
        width: 70,
        height: 70,
        child: Image.network(
          model.image,
          errorBuilder: (context, error, stackTrace) =>
              Icon(Icons.broken_image, size: 40, color: Colors.grey),
        ),
      ),
      title: Text(
        model.title,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: Text('\$${model.price.toStringAsFixed(2)}', style: TextStyle(color: Colors.green),),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.star, color: Colors.amber, size: 16),
              const SizedBox(width: 4),
              Text(model.rating.toString()),
              const SizedBox(width: 4),
              Text('(${model.ratingCount})'),
            ],
          ),
        ],
      ),
    );
  }
}
