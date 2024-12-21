class Category {
  final int id;
  final String name;
  final String imageUrl;

  Category({required this.id, required this.name, required this.imageUrl});
}

final List<Category> categories = [
  Category(
      id: 1,
      name: 'Fruits',
      imageUrl:
          'https://images.pexels.com/photos/1128678/pexels-photo-1128678.jpeg'),
  Category(
      id: 2,
      name: 'Vegetables',
      imageUrl:
          'https://images.pexels.com/photos/257816/pexels-photo-257816.jpeg'),
  Category(
      id: 3,
      name: 'Meat',
      imageUrl:
          'https://images.pexels.com/photos/65175/pexels-photo-65175.jpeg'),
  Category(
      id: 4,
      name: 'Fish',
      imageUrl:
          'https://images.pexels.com/photos/842142/pexels-photo-842142.jpeg'),
  Category(
      id: 5,
      name: 'Dairy',
      imageUrl:
          'https://images.pexels.com/photos/11826943/pexels-photo-11826943.jpeg'),
  Category(
      id: 6,
      name: 'Bakery',
      imageUrl:
          'https://images.pexels.com/photos/4828364/pexels-photo-4828364.jpeg'),
  Category(
      id: 7,
      name: 'Sweets',
      imageUrl:
          'https://images.pexels.com/photos/1126359/pexels-photo-1126359.jpeg'),
  Category(
      id: 8,
      name: 'Drinks',
      imageUrl:
          'https://images.pexels.com/photos/4051257/pexels-photo-4051257.jpeg'),
];