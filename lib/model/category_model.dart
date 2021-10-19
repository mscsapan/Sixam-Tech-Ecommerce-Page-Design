class CategoryModel {
  final String image;
  final String name;
  CategoryModel({required this.image, required this.name});
}

final List<CategoryModel> category = [
  CategoryModel(image: 'assets/images/all.png', name: 'All'),
  CategoryModel(image: 'assets/images/soft_drink.png', name: 'Drink'),
  CategoryModel(image: 'assets/images/coffee2.png', name: 'Coffee'),
  CategoryModel(image: 'assets/images/beer.png', name: 'Beer'),
  CategoryModel(image: 'assets/images/turkey.png', name: 'Chicken'),
  CategoryModel(image: 'assets/images/burger.png', name: 'Burger'),
  CategoryModel(image: 'assets/images/cupcake.png', name: 'Cup Cake'),
  CategoryModel(image: 'assets/images/cheeseburger.png', name: 'Cheese Burger'),
  CategoryModel(image: 'assets/images/pizza.png', name: 'Pizza'),
  CategoryModel(image: 'assets/images/coffee-cup.png', name: 'Coffee Cup'),
];
