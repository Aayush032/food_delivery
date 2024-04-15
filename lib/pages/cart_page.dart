import 'package:flutter/material.dart';
import 'package:food_delivery/model/restaurant_model.dart';
import 'package:food_delivery/pages/checkout_page.dart';
import 'package:food_delivery/widgets/cart_tile.dart';
import 'package:food_delivery/widgets/custom_button.dart';
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
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right:8.0),
                  child: IconButton(
                    onPressed: (){
                      showDialog(
                        context: context,
                        builder: (context){
                            return AlertDialog(
                              title: const Text("Are you sure you want to clear the cart?"),
                              actions: [
                                TextButton(
                                  onPressed: (){
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text("Cancel", style: TextStyle(color: Colors.blueAccent, fontSize: 18),),
                                  ),
                                  TextButton(
                                  onPressed: (){
                                    Navigator.of(context).pop();
                                    restaurant.clearCart();
                                  },
                                  child: const Text("Clear", style: TextStyle(color: Colors.redAccent, fontSize: 18),),
                                  ),
                              ],
                            );
                        });
                    },
                   icon: const Icon(Icons.delete, size: 28,)),
                )
              ],
            ),
            body: Column(
              children: [
                userCart.isEmpty?
                const Expanded(child:Center(child: Text("Cart is empty...", style: TextStyle(fontSize: 20),)))
                :Expanded(
                  child: ListView.builder(
                    itemCount: userCart.length,
                    itemBuilder: (context,index){
                      final cartItem = userCart[index];
                      return CartTile(cartItem: cartItem);
                    }) 
                ),
                CustomButton(buttonName: "Go to checkout", onTap: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context){
                        return CheckOutPage();
                      })
                  );
                }),
                const SizedBox(height: 20,)
              ],
            ),
        );
      });
  }
}