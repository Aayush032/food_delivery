import 'package:flutter/material.dart';
import 'package:food_delivery/model/cart_item.dart';
import 'package:food_delivery/model/restaurant_model.dart';
import 'package:provider/provider.dart';

class CartTile extends StatelessWidget {
  final CartItem cartItem;
  const CartTile({super.key, required this.cartItem});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context,restaurant,child){
        return Container(
          margin: const EdgeInsets.all(12),
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          decoration: BoxDecoration(
            border: Border.all(
              color: Theme.of(context).colorScheme.inversePrimary
            )
          ),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //food image
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(cartItem.food.imagePath, height: 100, width: 100, fit: BoxFit.fill,),),
                    const SizedBox(width: 20,),
                  //name and price
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(cartItem.food.name),
                      Text("Rs. ${cartItem.food.price}"),
                    ],
                  )
                ],
              )
            ],
          ),
        );
    });
  }
}