import 'package:flutter/material.dart';
import 'package:food_delivery/model/cart_item.dart';
import 'package:food_delivery/model/restaurant_model.dart';
import 'package:food_delivery/widgets/quantity_selector.dart';
import 'package:provider/provider.dart';

class CartTile extends StatelessWidget {
  final CartItem cartItem;
  const CartTile({super.key, required this.cartItem});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context,restaurant,child){
        return Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            borderRadius: BorderRadius.circular(8),
            // border: Border.all(
            //   color: Theme.of(context).colorScheme.inversePrimary
            // )
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
                      Text(cartItem.food.name, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                      Text("Rs. ${cartItem.food.price}", style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),),
                         //Quantity selector
                  QuantitySelector(
                    quantity: cartItem.quantity,
                    food: cartItem.food,
                     onIncrement: (){
                      restaurant.addToCart(cartItem.food, cartItem.selectedAddons);
                     }, 
                     onDecrement:(){
                      restaurant.removeFromCart(cartItem);
                     } 
                     ),
                    ],
                  ),
                ],
              ),
              //Addons
              SizedBox(
                height: cartItem.selectedAddons.isEmpty ? 0: 60,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: cartItem.selectedAddons.map(
                    (addons) => Padding(
                      padding: const EdgeInsets.only(right:8.0),
                      child: FilterChip(
                        backgroundColor: Theme.of(context).colorScheme.secondary,
                        label: Row(
                          children: [
                            Text(addons.name),
                            Text(" (Rs. ${addons.price})")
                          ],
                        ),
                         onSelected: (value){}),
                    )
                    ).toList(),
                ),
              ),
            ],
          ),
        );
    });
  }
}