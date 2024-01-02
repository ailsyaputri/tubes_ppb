class PopularCategory {
  final String category;
  final String id;

  PopularCategory({this.category = '', this.id = ''});
}

class Product {
  final String title;
  final int price;
  final String icon;
  final int id;

  Product({this.title = '', this.price = 0, this.icon = '', this.id = 0});
}

final homePopularCategories = [
  // PopularCategory(category: 'All', id: '1'),
  // PopularCategory(category: 'Face', id: '2'),
  // PopularCategory(category: 'Eyes', id: '3'),
  // PopularCategory(category: 'Lips', id: '4'),
  // PopularCategory(category: 'Others', id: '5'),
];

final homePopularProducts = [
  Product(
    // title: 'NATURE REPUBLIC Daily Basic Palette',
    // price: 183000,
    // icon: 'assets/images/products/eyes/NATURE.png',
    // id: 3,
  ),
  
];