class Food{
  final String name;
  final String description;
  final double price;
  final String imagePath;
  final FoodCategory category;
  final List<AddOns> toppings;

  Food({
    required this.name,
    required this.description,
    required this.price,
    required this.imagePath,
    required this.category,
    required this.toppings,
  }
  );
}
enum FoodCategory{
  iceCream,
  tubs,
  shakes,
  bubbleTea,
  coffee
}

class AddOns{
  final String name;
  final double price;
  AddOns({
    required this.name,
    required this.price,
  });
}

