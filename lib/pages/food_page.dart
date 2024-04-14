import 'package:flutter/material.dart';
import 'package:food_delivery/model/food_model.dart';
import 'package:food_delivery/model/restaurant_model.dart';
import 'package:food_delivery/widgets/custom_button.dart';
import 'package:provider/provider.dart';

class FoodPage extends StatefulWidget {
  final Food food;
  final Map<AddOns, bool> selectedAddons = {};
  FoodPage({super.key, required this.food}) {
    //initialize addons
    for (AddOns addOns in food.toppings) {
      selectedAddons[addOns] = false;
    }
  }

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  //method to add to cart
  void addToCart(Food food, Map<AddOns, bool> selectedAddons){
    Navigator.of(context).pop();
    List<AddOns> currentlySelectedAddOns = [];
    for(AddOns addOns in widget.food.toppings){
      if(widget.selectedAddons[addOns] == true){
        currentlySelectedAddOns.add(addOns);
      }
    }
    context.read<Restaurant>().addToCart(food, currentlySelectedAddOns);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        title:
            Text(widget.food.category.toString().split(".")[1].toUpperCase()),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                widget.food.imagePath,
                height: 300,
                fit: BoxFit.fill,
                width: double.infinity,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.food.name,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                  ),
                  Text(
                    "Rs.${widget.food.price}",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontSize: 18),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    widget.food.description,
                    style: const TextStyle(fontSize: 18),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Divider(
                    thickness: 1,
                    indent: 10,
                    endIndent: 10,
                    color: Theme.of(context).colorScheme.tertiary,
                  ),
                  const Text(
                    "Available Add-Ons",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color:
                                Theme.of(context).colorScheme.inversePrimary)),
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: widget.food.toppings.length,
                        itemBuilder: (context, index) {
                          AddOns addOns = widget.food.toppings[index];
                          return CheckboxListTile(
                              title: Text(addOns.name),
                              subtitle: Text("Rs. ${addOns.price}"),
                              value: widget.selectedAddons[addOns],
                              onChanged: (bool? value) {
                                setState(() {
                                  widget.selectedAddons[addOns] = value!;
                                });
                              });
                        }),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomButton(
                    buttonName: "Add to cart",
                    onTap: () {
                      addToCart(widget.food, widget.selectedAddons);
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
