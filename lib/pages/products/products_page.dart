import 'package:flutter/material.dart';

import '../../models/product/product_dto.dart';
import '../../widgets/product/product_card.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({super.key});

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  final _products = <ProductDto>[];

  void _generateProducts() {
    final list = List<ProductDto>.generate(
      10,
      (i) => ProductDto(
        id: '$i',
        title: 'Product_$i',
        description: 'Description_$i',
        price: i.toDouble(),
      ),
    );
    _products.addAll(list);
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _generateProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: _products.length,
        itemBuilder: (_, int i) {
          return ProductCard(
            product: _products[i],
          );
        },
      ),
    );
  }
}
