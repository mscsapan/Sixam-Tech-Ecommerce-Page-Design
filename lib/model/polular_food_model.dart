class PopularFood {
  final String image;
  final String title;
  final String subTitle;
  final int price;
  final int discountPrice;

  PopularFood(
      {required this.image,
      required this.title,
      required this.subTitle,
      required this.price,
      required this.discountPrice});
}

final List<PopularFood> popular = [
  PopularFood(
      image:
          'https://images.unsplash.com/photo-1598182198871-d3f4ab4fd181?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1170&q=80',
      subTitle: 'Mc Donald New York USA',
      title: 'Burger',
      price: 5,
      discountPrice: 10),
  /*PopularFood(
      image: 'https://images.unsplash.com/photo-1605478371310-a9f1e96b4ff4?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1170&q=80',
      title: 'Burger',
      subTitle: 'Mc Donald New York USA',
      price: 5,
      discountPrice: 10),*/
  PopularFood(
      image:
          'https://images.unsplash.com/photo-1590947132387-155cc02f3212?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1170&q=80',
      subTitle: 'Mc Donald New York USA',
      title: 'Pizza',
      price: 5,
      discountPrice: 10),
  PopularFood(
      image:
          'https://images.unsplash.com/photo-1563379926898-05f4575a45d8?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1170&q=80',
      subTitle: 'Mc Donald New York USA',
      title: 'Pasta',
      price: 5,
      discountPrice: 10),
  PopularFood(
      image:
          'https://images.unsplash.com/photo-1512621776951-a57141f2eefd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
      subTitle: 'Mc Donald New York USA',
      title: 'Salad',
      price: 5,
      discountPrice: 10),
];
