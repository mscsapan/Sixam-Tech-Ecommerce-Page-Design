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
