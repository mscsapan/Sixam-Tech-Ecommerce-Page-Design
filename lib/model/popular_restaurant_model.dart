class PopularRestaurant {
  final String image;
  final String name;
  final String address;
  final int review;

  PopularRestaurant(
      {required this.image,
      required this.name,
      required this.address,
      required this.review});
}

final List<PopularRestaurant> restaurant = [
  PopularRestaurant(
      image:
          'https://lh5.googleusercontent.com/p/AF1QipNpafi8ysM_8vVftkpEUhmdNHUA_evM4t647MVE=w1080-k-no',
      name: 'Hungry Puppets',
      address: '76A Eighth Avenue,New York,USA',
      review: 2),
  PopularRestaurant(
      image:
          'https://paisebachaoindia.com/wp-content/uploads/2015/10/img372.png',
      name: 'McDonald’s',
      address: '76A Eighth Avenue,New York,USA',
      review: 2),
  PopularRestaurant(
      image:
          'https://paisebachaoindia.com/wp-content/uploads/2015/10/img372.png',
      name: 'McDonald’s',
      address: '76A Eighth Avenue,New York,USA',
      review: 2),
  PopularRestaurant(
      image:
          'https://paisebachaoindia.com/wp-content/uploads/2015/10/img372.png',
      name: 'McDonald’s',
      address: '76A Eighth Avenue,New York,USA',
      review: 2),
];
