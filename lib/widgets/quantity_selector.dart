import 'package:flutter/material.dart';
import 'package:food_delivery/model/food_model.dart';

class QuantitySelector extends StatelessWidget {
  final int quantity;
  final Food food;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;
  const QuantitySelector({
    super.key,
    required this.quantity,
    required this.food,
    required this.onIncrement,
    required this.onDecrement,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.background,
          borderRadius: BorderRadius.circular(20)),
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          //increment button
          InkWell(
            onTap: onDecrement,
            child: const Icon(
              Icons.remove,
              
            ),
          ),
          //quantity
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:8,),
            child: Center(
              child: Text(
                quantity.toString(),
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
          //decrement button
          InkWell(
            onTap: onIncrement,
            child: const Icon(
              Icons.add,
            ),
          ),
        ],
      ),
    );
  }
}
