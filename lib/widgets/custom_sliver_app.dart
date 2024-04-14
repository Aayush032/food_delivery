import 'package:flutter/material.dart';
import 'package:food_delivery/pages/cart_page.dart';

class CustomSliverAppBar extends StatelessWidget {
  final Widget child;
  final Widget title;
  const CustomSliverAppBar({
    super.key,
    required this.child,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Theme.of(context).colorScheme.background,
      foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      expandedHeight: 340,
     collapsedHeight: 120,
     actions: [
      IconButton(onPressed: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const CartPage()));
      }, icon: const Icon(Icons.shopping_cart_outlined))
     ],
      floating: false,
      pinned: true,
      centerTitle: true,
      title: const Text("Icy Iconic", style: TextStyle(fontWeight: FontWeight.bold),),
      flexibleSpace: FlexibleSpaceBar(
        background: child,
        title: title,
       titlePadding: EdgeInsets.zero,
      ),
    );
  }
}
