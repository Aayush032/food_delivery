import 'package:flutter/material.dart';
import 'package:food_delivery/model/cart_item.dart';
import 'package:food_delivery/model/restaurant_model.dart';
import 'package:food_delivery/widgets/cart_tile.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant,child){
        final userCart = restaurant.cart;
        return Scaffold(
            appBar: AppBar(
              backgroundColor: Theme.of(context).colorScheme.background,
              title: const Text("C A R T"),
              centerTitle: true,
            ),
            body: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: userCart.length,
                    itemBuilder: (context,index){
                      final cartItem = userCart[index];
                      return CartTile(cartItem: cartItem);
                    }) 
                ),
              ],
            ),
        );
      });
  }
}