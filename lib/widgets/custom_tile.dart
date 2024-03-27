import 'package:flutter/material.dart';

class CustomTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final Function()? onPressed;
  const CustomTile({
    super.key,
    required this.icon,
    required this.title,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:10.0, vertical: 12),
      child: ListTile(
        leading: Icon(icon, size: 32, color: Theme.of(context).colorScheme.inversePrimary,),
        title: Text(title, style: TextStyle(fontSize: 20, color: Theme.of(context).colorScheme.inversePrimary),),
        onTap: onPressed,
      ),
    );
  }
}
