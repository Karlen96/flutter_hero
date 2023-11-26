import 'package:flutter/material.dart';

import '../../models/product/product_dto.dart';

class ProductDetailsPage extends StatelessWidget {
  final ProductDto product;

  const ProductDetailsPage({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.title),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Hero(
              tag: product.id,
              child: const Icon(
                Icons.image,
                size: 150.0,
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    product.description,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
