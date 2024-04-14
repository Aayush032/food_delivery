import 'package:food_delivery/model/food_model.dart';

class CartItem{
  Food food;
  List<AddOns> selectedAddons;
  int quantity;
  CartItem({
    required this.food,
    required this.selectedAddons,
    this.quantity = 1
  });

  double get totalPrice{
    double addOnsPrice = selectedAddons.fold(0, (sum, addons) => sum + addons.price);
    return (food.price + addOnsPrice)*quantity;
  }
}