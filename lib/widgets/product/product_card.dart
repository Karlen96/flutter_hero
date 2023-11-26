import 'package:flutter/material.dart';

import '../../models/product/product_dto.dart';
import '../../pages/product_details/product_details_page.dart';

class ProductCard extends StatelessWidget {
  final ProductDto product;

  const ProductCard({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    void onTap() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => ProductDetailsPage(
            product: product,
          ),
        ),
      );
    }

    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Hero(
            tag: product.id,
            child: const Icon(
              Icons.image,
              size: 120,
            ),
          ),
          Text(product.title),
          const SizedBox(height: 6),
          Text(product.description),
        ],
      ),
    );
  }
}
