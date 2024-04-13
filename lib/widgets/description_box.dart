import 'package:flutter/material.dart';

class DescriptionBox extends StatelessWidget {
  const DescriptionBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).colorScheme.tertiary
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text("Delivery charge", style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontSize: 16,
              ),),
              Text("Rs. 100", style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),)
            ],
          ),
            Column(
            children: [
              Text("Delivery time", style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontSize: 16,
              ),),
              Text("30 minutes", style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),)
            ],
          ),
        ],
      ),
    );
  }
}