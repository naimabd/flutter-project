import 'package:flutter/material.dart';
import 'package:project/widgets/product_item.dart';
import '../models/category.dart';
import '../models/product.dart';

class CategoryPage extends StatelessWidget {
  final Category category;

  const CategoryPage({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    final categoryProducts =
        products.where((product) => product.category == category.name).toList();

    return Scaffold(
      appBar: AppBar(title: Text(category.name)),
      body: SingleChildScrollView(
        child: Column(
          children: categoryProducts.map((product) {
            return ProductItem(product: product);
          }).toList(),
        ),
      ),
    );
  }
}