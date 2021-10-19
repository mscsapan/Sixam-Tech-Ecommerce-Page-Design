class AllRestaurantModel {
  final String logo;
  final String name;
  final String moto;
  final String type;
  AllRestaurantModel(
      {required this.logo,
      required this.name,
      required this.moto,
      required this.type});
}

final List<AllRestaurantModel> allRestaurants = [
  AllRestaurantModel(
      logo: 'assets/logos/macdoland.jpg',
      name: 'Mc Donald\'s',
      moto: 'American Cuisine',
      type: 'Fast Food'),
  AllRestaurantModel(
      logo: 'assets/logos/2.png',
      name: 'Starbuks',
      moto: 'American Cuisine',
      type: 'Fast Food'),
  AllRestaurantModel(
      logo: 'assets/logos/3.png',
      name: 'Dominos',
      moto: 'American Cuisine',
      type: 'Fast Food'),
  AllRestaurantModel(
      logo: 'assets/logos/3.png',
      name: 'Dominos',
      moto: 'American Cuisine',
      type: 'Fast Food'),
];

final List<String> newOnApp = [
  'https://cdn.pixabay.com/photo/2016/03/05/19/02/hamburger-1238246_1280.jpg',
  'https://cdn.pixabay.com/photo/2020/03/21/11/17/burger-4953465_1280.jpg',
  'https://cdn.pixabay.com/photo/2016/05/25/10/43/hamburger-1414423_1280.jpg',
  'https://cdn.pixabay.com/photo/2017/12/10/14/47/pizza-3010062_1280.jpg',
];
