import 'package:flutter/material.dart';
import 'package:food_delivery/model/food_model.dart';

class FoodTile extends StatelessWidget {
  final Food food;
  final void Function() onTap;
  const FoodTile({super.key, required this.food, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          food.name,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          food.description,
                          style: const TextStyle(fontSize: 15),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Rs. ${food.price}",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color:
                                  Theme.of(context).colorScheme.inversePrimary,
                              fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        food.imagePath,
                        height: 120,
                        width: 100,
                      )),
                ]),
          ),
        ),
        Divider(
          thickness: 1,
          indent: 10,
          endIndent: 10,
          color: Theme.of(context).colorScheme.tertiary,
        ),
      ],
    );
  }
}
