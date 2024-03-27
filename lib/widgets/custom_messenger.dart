import 'package:flutter/material.dart';

showSnackbar(String content, BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      padding: const EdgeInsets.all(16),
      content: Text(
        content,
        style: TextStyle(
            fontSize: 20,
            color: content == "success"
                ? const Color.fromARGB(255, 51, 120, 86)
                : const Color.fromARGB(255, 167, 54, 54),
             fontWeight: FontWeight.bold   
                ),
      ),
      backgroundColor: Theme.of(context).colorScheme.tertiary,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30))),
    ),
  );
}
