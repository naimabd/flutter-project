import 'package:flutter/material.dart';
import 'package:project/widgets/product_item.dart';
import '../models/category.dart';
import '../models/product.dart';

class CategoryPage extends StatefulWidget {
  final Category category;

  const CategoryPage({super.key, required this.category});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  Category get category => widget.category;
  List<Product> products = [];

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    final fetchedProducts = await fetchProducts(category.id);
    setState(() {
      products = fetchedProducts;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(category.name)),
      body: SingleChildScrollView(
        child: Column(
          children: products.map((product) {
            return ProductItem(product: product);
          }).toList(),
        ),
      ),
    );
  }
}