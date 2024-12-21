class Product {
  final int id;
  final String name;
  final String imageUrl;
  final String category;
  final double price = 9.99;
  final String description =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ut purus eget nunc. Donec nec nunc nec nunc.';

  Product(
      {required this.id,
      required this.name,
      required this.imageUrl,
      required this.category});
}

final List<Product> products = [
  Product(
      id: 1,
      name: 'Apple',
      imageUrl:
          'https://images.pexels.com/photos/102104/pexels-photo-102104.jpeg',
      category: 'Fruits'),
  Product(
      id: 2,
      name: 'Banana',
      imageUrl:
          'https://images.pexels.com/photos/41123/pexels-photo-41123.jpeg',
      category: 'Fruits'),
  Product(
      id: 3,
      name: 'Orange',
      imageUrl: 'https://images.pexels.com/photos/8383/pexels-photo.jpg',
      category: 'Fruits'),
  Product(
      id: 4,
      name: 'Carrot',
      imageUrl:
          'https://images.pexels.com/photos/42059/pexels-photo-42059.jpeg',
      category: 'Vegetables'),
  Product(
      id: 5,
      name: 'Cucumber',
      imageUrl:
          'https://images.pexels.com/photos/108356/pexels-photo-108356.jpeg',
      category: 'Vegetables'),
  Product(
      id: 6,
      name: 'Tomato',
      imageUrl:
          'https://images.pexels.com/photos/1128660/pexels-photo-1128660.jpeg',
      category: 'Vegetables'),
  Product(
      id: 7,
      name: 'Beef',
      imageUrl:
          'https://images.pexels.com/photos/3577432/pexels-photo-3577432.jpeg',
      category: 'Meat'),
  Product(
      id: 8,
      name: 'Chicken',
      imageUrl:
          'https://images.pexels.com/photos/6187755/pexels-photo-6187755.jpeg',
      category: 'Meat'),
  Product(
      id: 9,
      name: 'Lamb',
      imageUrl:
          'https://images.pexels.com/photos/8862758/pexels-photo-8862758.jpeg',
      category: 'Meat'),
  Product(
      id: 10,
      name: 'Salmon',
      imageUrl:
          'https://images.pexels.com/photos/6294462/pexels-photo-6294462.jpeg',
      category: 'Fish'),
  Product(
      id: 11,
      name: 'Tuna',
      imageUrl:
          'https://images.pexels.com/photos/879454/pexels-photo-879454.jpeg',
      category: 'Fish'),
  Product(
      id: 12,
      name: 'Cod',
      imageUrl:
          'https://images.pexels.com/photos/305021/pexels-photo-305021.jpeg',
      category: 'Fish'),
  Product(
      id: 13,
      name: 'Milk',
      imageUrl:
          'https://images.pexels.com/photos/236338/pexels-photo-236338.jpeg',
      category: 'Dairy'),
  Product(
      id: 14,
      name: 'Cheese',
      imageUrl:
          'https://images.pexels.com/photos/266830/pexels-photo-266830.jpeg',
      category: 'Dairy'),
  Product(
      id: 15,
      name: 'Yogurt',
      imageUrl:
          'https://images.pexels.com/photos/405171/pexels-photo-405171.jpeg',
      category: 'Dairy'),
  Product(
      id: 16,
      name: 'Bread',
      imageUrl:
          'https://images.pexels.com/photos/209743/pexels-photo-209743.jpeg',
      category: 'Bakery'),
  Product(
      id: 17,
      name: 'Croissant',
      imageUrl:
          'https://images.pexels.com/photos/320278/pexels-photo-320278.jpeg',
      category: 'Bakery'),
  Product(
      id: 18,
      name: 'Donut',
      imageUrl:
          'https://images.pexels.com/photos/70497/pexels-photo-70497.jpeg',
      category: 'Bakery'),
  Product(
      id: 19,
      name: 'Chocolate',
      imageUrl:
          'https://images.pexels.com/photos/291528/pexels-photo-291528.jpeg',
      category: 'Sweets'),
  Product(
      id: 20,
      name: 'Candy',
      imageUrl:
          'https://images.pexels.com/photos/325526/pexels-photo-325526.jpeg',
      category: 'Sweets'),
  Product(
      id: 21,
      name: 'Ice Cream',
      imageUrl:
          'https://images.pexels.com/photos/108370/pexels-photo-108370.jpeg',
      category: 'Sweets'),
  Product(
      id: 22,
      name: 'Water',
      imageUrl:
          'https://images.pexels.com/photos/33260/spring-flowers-bottle-macro.jpg',
      category: 'Drinks'),
  Product(
      id: 23,
      name: 'Juice',
      imageUrl:
          'https://images.pexels.com/photos/1239302/pexels-photo-1239302.jpeg',
      category: 'Drinks'),
  Product(
      id: 24,
      name: 'Soda',
      imageUrl:
          'https://images.pexels.com/photos/377975/pexels-photo-377975.jpeg',
      category: 'Drinks'),
];