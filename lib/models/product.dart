import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

const baseUrl = 'http://10.0.2.2/flutter-project/products.php?categoryId=';

class Product {
  final int id;
  final String name;
  final double price;
  final String description;
  final String imageUrl;
  final String category;

  Product(
      {required this.id,
      required this.name,
      required this.price,
      required this.description,
      required this.imageUrl,
      required this.category});
}

Future<List<Product>> fetchProducts(int categoryId) async {
  try {
    final List<Product> products = [];
    final response = await http.get(Uri.parse(baseUrl + categoryId.toString()));
    if (response.statusCode == 200) {
      final jsonResponse = convert.jsonDecode(response.body);
      for (var row in jsonResponse) {
        Product p = Product(
            id: int.parse(row['id']),
            name: row['name'],
            price: double.parse(row['price']),
            description: row['description'],
            imageUrl: row['imageUrl'],
            category: row['categoryName']);
        products.add(p);
      }
    }
    return products;
  } catch (e) {
    print('Error Fetch Products: $e');
    return [];
  }
}