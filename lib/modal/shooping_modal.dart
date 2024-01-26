class ShoppingModal {
  int price;
  String name;
  String? description;
  bool fav;
  String image;
  int number;

  ShoppingModal(
      {required this.image,
      required this.number,
      this.description,
      required this.price,
      required this.fav,
      required this.name});
}
