import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/model/cart_item.dart';
import 'package:food_delivery/model/food_model.dart';
import 'package:intl/intl.dart';

class Restaurant extends ChangeNotifier {
  //menu for the food item
  final List<Food> _menu = [
    //bubbleTea
    //1st bubble tea
    Food(
      name: "Avocade Bubble Tea",
      description:
          "This is a very delicious bubble tea made up of fresh avocado to kick start your morning",
      price: 200,
      imagePath: "assets/images/bubbleTea/boba1.jpg",
      category: FoodCategory.bubbleTea,
      toppings: [
        AddOns(name: "Extra boba", price: 50),
        AddOns(name: "Extra avocado", price: 50),
      ],
    ),
    //2nd bubble tea
    Food(
      name: "Peach Bubble Tea",
      description:
          "This is a very delicious bubble tea made up of fresh peach to freshen up your mood",
      price: 200,
      imagePath: "assets/images/bubbleTea/boba2.jpg",
      category: FoodCategory.bubbleTea,
      toppings: [
        AddOns(name: "Extra boba", price: 50),
        AddOns(name: "Extra peach", price: 50),
      ],
    ),
    //3rd bubble tea
    Food(
      name: "Strawberry Bubble Tea",
      description:
          "This is a very delicious bubble tea made up of fresh strawberry to freshen up your mood",
      price: 200,
      imagePath: "assets/images/bubbleTea/boba3.jpg",
      category: FoodCategory.bubbleTea,
      toppings: [
        AddOns(name: "Extra boba", price: 50),
        AddOns(name: "Extra strawberry", price: 50),
      ],
    ),
    //4th bubble tea
    Food(
      name: "Mango Bubble Tea",
      description:
          "This is a very delicious bubble tea made up of fresh mango to freshen up your mood",
      price: 200,
      imagePath: "assets/images/bubbleTea/boba4.jpg",
      category: FoodCategory.bubbleTea,
      toppings: [
        AddOns(name: "Extra boba", price: 50),
        AddOns(name: "Extra mango", price: 50),
      ],
    ),

    //coffee
    //!st coffee
    Food(
      name: "Coffee Latte",
      description: "This is a very delicious coffee",
      price: 150,
      imagePath: "assets/images/coffee/coffee1.jpg",
      category: FoodCategory.coffee,
      toppings: [
        AddOns(name: "Custom art", price: 50),
      ],
    ),
    //2nd coffee
    Food(
      name: "Cappuccino",
      description: "This is a very delicious coffee",
      price: 200,
      imagePath: "assets/images/coffee/coffee2.jpg",
      category: FoodCategory.coffee,
      toppings: [
        AddOns(name: "Custom art", price: 50),
      ],
    ),
    //3rd coffee
    Food(
      name: "Caffe Mocha",
      description: "This is a very delicious coffee",
      price: 150,
      imagePath: "assets/images/coffee/coffee3.jpg",
      category: FoodCategory.coffee,
      toppings: [
        AddOns(name: "Custom art", price: 50),
      ],
    ),
    //4th coffee
    Food(
      name: "Espresso",
      description: "This is a very delicious coffee",
      price: 150,
      imagePath: "assets/images/coffee/coffee4.jpg",
      category: FoodCategory.coffee,
      toppings: [
        AddOns(name: "Custom art", price: 50),
      ],
    ),

    //ice-cream
    //1st ice-cream
    Food(
      name: "Chocolate",
      description: "This is a very delicious chocolate ice-cream",
      price: 150,
      imagePath: "assets/images/ice-cream/ice1.jpg",
      category: FoodCategory.iceCream,
      toppings: [
        AddOns(name: "Sprinkle", price: 50),
        AddOns(name: "Caramel", price: 50),
        AddOns(name: "Hot Fudge", price: 50),
      ],
    ),
    //2nd ice-cream
    Food(
      name: "Mint",
      description: "This is a very delicious mint ice-cream",
      price: 150,
      imagePath: "assets/images/ice-cream/ice2.jpg",
      category: FoodCategory.iceCream,
      toppings: [
        AddOns(name: "Sprinkle", price: 50),
        AddOns(name: "Caramel", price: 50),
        AddOns(name: "Hot Fudge", price: 50),
      ],
    ),
    //3rd ice-cream
    Food(
      name: "Strawberry",
      description: "This is a very delicious strawberry ice-cream",
      price: 150,
      imagePath: "assets/images/ice-cream/ice3.jpg",
      category: FoodCategory.iceCream,
      toppings: [
        AddOns(name: "Sprinkle", price: 50),
        AddOns(name: "Caramel", price: 50),
        AddOns(name: "Hot Fudge", price: 50),
      ],
    ),
    //4th ice-cream
    Food(
      name: "21st Love",
      description: "This is a very delicious ice-cream",
      price: 150,
      imagePath: "assets/images/ice-cream/ice4.jpg",
      category: FoodCategory.iceCream,
      toppings: [
        AddOns(name: "Sprinkle", price: 50),
        AddOns(name: "Caramel", price: 50),
        AddOns(name: "Hot Fudge", price: 50),
      ],
    ),

    //shakes
    //1st shakes
    Food(
      name: "Oreo shake",
      description: "This is a very delicious oreo shake",
      price: 180,
      imagePath: "assets/images/shakes/shake1.jpg",
      category: FoodCategory.shakes,
      toppings: [
        AddOns(name: "Oreo", price: 50),
        AddOns(name: "Kitkat", price: 50),
      ],
    ),
    //2nd shakes
    Food(
      name: "Strawberry shake",
      description: "This is a very delicious strawberry shake",
      price: 180,
      imagePath: "assets/images/shakes/shake2.jpg",
      category: FoodCategory.shakes,
      toppings: [
        AddOns(name: "strawberry", price: 50),
        AddOns(name: "Kitkat", price: 50),
      ],
    ),
    //3rd shakes
    Food(
      name: "Avocado shake",
      description: "This is a very delicious avocado shake",
      price: 180,
      imagePath: "assets/images/shakes/shake3.jpg",
      category: FoodCategory.shakes,
      toppings: [
        AddOns(name: "Avocado", price: 50),
        AddOns(name: "Kitkat", price: 50),
      ],
    ),
    //3rd shakes
    Food(
      name: "Chocolate shake",
      description: "This is a very delicious chocolate shake",
      price: 180,
      imagePath: "assets/images/shakes/shake4.jpg",
      category: FoodCategory.shakes,
      toppings: [
        AddOns(name: "Chocolate", price: 50),
        AddOns(name: "Kitkat", price: 50),
      ],
    ),

    //tubs
    //1st tub
    Food(
      name: "Chocolate",
      description: "This is a very delicious chocolate ice-cream",
      price: 400,
      imagePath: "assets/images/tubs/tub1.jpg",
      category: FoodCategory.tubs,
      toppings: [AddOns(name: "Cones", price: 50)],
    ),
    //2nd tub
    Food(
      name: "Vanilla",
      description: "This is a very delicious vanilla ice-cream",
      price: 400,
      imagePath: "assets/images/tubs/tub2.jpg",
      category: FoodCategory.tubs,
      toppings: [AddOns(name: "Cones", price: 50)],
    ),
    //3rd tub
    Food(
      name: "Cookies and Cream",
      description: "This is a very delicious ice-cream",
      price: 500,
      imagePath: "assets/images/tubs/tub3.jpg",
      category: FoodCategory.tubs,
      toppings: [AddOns(name: "Cones", price: 50)],
    ),
    //4th tub
    Food(
      name: "Red-velvet ",
      description: "This is a very delicious red-velvet ice-cream",
      price: 500,
      imagePath: "assets/images/tubs/tub4.jpg",
      category: FoodCategory.tubs,
      toppings: [AddOns(name: "Cones", price: 50)],
    ),
  ];

  // G E T T E R S
  List<Food> get menu => _menu;
  List<CartItem> get cart => _cartItem;

  //operations
  final List<CartItem> _cartItem = [];

  //To add the food items to the cart
  void addToCart(Food food, List<AddOns> selectedAddons) {
    //check if the food already exists
    CartItem? cartItem = _cartItem.firstWhereOrNull((item) {
      bool isSameFood = item.food == food;

      bool isSameAddOns =
          ListEquality().equals(item.selectedAddons, selectedAddons);

      return isSameFood && isSameAddOns;
    });

    //if food already exists
    if (cartItem != null) {
      cartItem.quantity++;
    }
    //if food is not in the cart
    else {
      _cartItem.add(CartItem(
        food: food,
        selectedAddons: selectedAddons,
      ));
    }
    notifyListeners();
  }

  //To remove the item from the cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cartItem.indexOf(cartItem);
    if (cartIndex != -1) {
      if (_cartItem[cartIndex].quantity > 1) {
        _cartItem[cartIndex].quantity--;
      } else {
        _cartItem.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  //get the total price in the cart
  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cartItem) {
      double itemTotal = cartItem.food.price;

      for (AddOns addOns in cartItem.selectedAddons) {
        itemTotal += addOns.price;
      }
      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

  //get the total number of item in the cart
  int getTotalItemCount() {
    int totalItemCount = 0;
    for (CartItem cartItem in _cartItem) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

  //to clear the cart
  void clearCart() {
    _cartItem.clear();
    notifyListeners();
  }

  //generate receipt
  String displayReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here's your receipt!");
    receipt.writeln();

    //format date
    String formattedDate =
        DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());
    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("---------------------------------------------------------------------");

    for(final cartItem in _cartItem){
      receipt.writeln(
        "${cartItem.quantity} X ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}");
        if(cartItem.selectedAddons.isNotEmpty){
          receipt.writeln("AddOns: ${_formatAddOns(cartItem.selectedAddons)}");
        }
        receipt.writeln();
    }
    receipt.writeln("---------------------------------------------------------------------");
    receipt.writeln();
    receipt.writeln("Total items: ${getTotalItemCount()}");
    receipt.writeln("Total price: ${_formatPrice(getTotalPrice())}");
    return receipt.toString();
  }

  //format price
  String _formatPrice(double price) {
    return "Rs. ${price.toStringAsFixed(2)}";
  }

  String _formatAddOns(List<AddOns> addOns) {
    return addOns
        .map((addOn) => "${addOn.name}(${_formatPrice(addOn.price)})")
        .join(",");
  }
}
