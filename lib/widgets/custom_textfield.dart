import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  final Function()? onTap;
  final TextEditingController controller;
  final String hintText;
  final bool isPass;
  final IconData icon;
  const CustomTextfield({
    super.key,
    required this.controller,
    required this.hintText,
    this.isPass = false,
     required this.icon,
     this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:25.0),
      child: TextField(
        controller: controller,
        obscureText: isPass,
        decoration: InputDecoration(
          suffixIcon: InkWell(
            onTap: onTap,
            child: Icon(icon)),
          hintText: hintText,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.tertiary
            )
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.primary
            )
          )
        ),
      ),
    );
  }
}
