import 'package:flutter/material.dart';
import 'package:food_delivery/model/restaurant_model.dart';
import 'package:food_delivery/pages/home_page.dart';
import 'package:food_delivery/widgets/custom_button.dart';
import 'package:food_delivery/widgets/custom_messenger.dart';
import 'package:provider/provider.dart';

class CheckOutPage extends StatelessWidget {
  const CheckOutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Checkout"),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.background,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 30,),
            const Text("Confirm your order!", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            const SizedBox(height: 30,),
            Container(
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  width: 3,
                  color: Theme.of(context).colorScheme.tertiary
                )
              ),
              child: Consumer<Restaurant>(builder: (context, restaurant, child){
                  return Text(restaurant.displayReceipt());
              }),
            ),
            const SizedBox(height: 30,),
            CustomButton(buttonName: "Confirm Order!", onTap: (){
              showDialog(context: context, builder: (context){
                return AlertDialog(
                  title: const Text("Thank you for the order! Your order will be arriving soon!!!"),
                  actions: [
                    TextButton(onPressed: (){
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context)=> HomePage())
                      );
                    },
                     child: const Text("OK", style: TextStyle(fontSize: 18, color: Colors.blueAccent),))
                  ],
                );
              }
              );
            })
          ],
        ),
      ),
    );
  }
}