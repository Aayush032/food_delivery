import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonName;
  final Function()? onTap;
  const CustomButton(
      {super.key, required this.buttonName, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:25.0),
      child: Material(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.circular(10),
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
          onTap: onTap,
          splashColor: const Color.fromARGB(255, 255, 239, 99),
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(15),
           // margin: const EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(
                // color: Theme.of(context).colorScheme.secondary,
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(10)),
            child: Center(
                child: Text(
              buttonName,
              style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                  ),
            )),
          ),
        ),
      ),
    );
  }
}
