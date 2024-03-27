import 'package:flutter/material.dart';
import 'package:food_delivery/pages/login_page.dart';
import 'package:food_delivery/pages/settings_page.dart';
import 'package:food_delivery/widgets/custom_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(40), bottomRight: Radius.circular(40))),
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(
            flex: 1,
          ),
          const Icon(
            Icons.person_pin,
            size: 60,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Divider(
              thickness: 1,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTile(
            icon: Icons.home,
            title: "H O M E",
            onPressed: () => Navigator.of(context).pop(),
          ),
          CustomTile(
            icon: Icons.settings,
            title: "S E T T I N G S",
            onPressed: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const SettingPage()));
            },
          ),
          const Spacer(
            flex: 4,
          ),
          CustomTile(
            icon: Icons.logout,
            title: "L O G O U T",
            onPressed: () {
              Navigator.of(context).pop();
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => LoginPage()));
            },
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
