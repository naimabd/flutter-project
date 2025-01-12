import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

const baseUrl = 'http://10.0.2.2/flutter-project/categories.php';

class Category {
  final int id;
  final String name;
  final String imageUrl;

  Category({required this.id, required this.name, required this.imageUrl});
}

Future<List<Category>> fetchCategories() async {
  try {
    final List<Category> categories = [];
    final response = await http.get(Uri.parse(baseUrl));
    if (response.statusCode == 200) {
      final jsonResponse = convert.jsonDecode(response.body);
      for (var row in jsonResponse) {
        Category c = Category(
            id: int.parse(row['id']),
            name: row['name'],
            imageUrl: row['imageUrl']);
        categories.add(c);
      }
    }
    return categories;
  } catch (e) {
    print('Error Fetch Categories: $e');
    return [];
  }
}