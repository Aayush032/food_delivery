import 'package:flutter/material.dart';
import 'package:food_delivery/model/food_model.dart';
import 'package:food_delivery/model/restaurant_model.dart';
import 'package:food_delivery/pages/food_page.dart';
import 'package:food_delivery/widgets/custom_drawer.dart';
import 'package:food_delivery/widgets/custom_sliver_app.dart';
import 'package:food_delivery/widgets/custom_tab_bar.dart';
import 'package:food_delivery/widgets/description_box.dart';
import 'package:food_delivery/widgets/food_tile.dart';
import 'package:food_delivery/widgets/my_location.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController =
        TabController(length: FoodCategory.values.length, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }

  //to filter food menu according to category
  List<Food> _filterFoodByCategory(FoodCategory category, List<Food> fullMenu) {
    return fullMenu.where((food) => food.category == category).toList();
  }

  //return list of foods in the category
  List<Widget> getFoodInThisCategory(List<Food> fullMenu) {
    return FoodCategory.values.map((category) {
      List<Food> categoryMenu = _filterFoodByCategory(category, fullMenu);
      return ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: categoryMenu.length,
          itemBuilder: (context, index) {
            final food = categoryMenu[index];
            return FoodTile(
              food: food,
               onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => FoodPage(food: food))
                );
               },);
          });
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxisScrolled) => [
                CustomSliverAppBar(
                  title: CustomTabBar(tabController: tabController),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Divider(
                        color: Theme.of(context).colorScheme.secondary,
                        indent: 25,
                        endIndent: 25,
                      ),
                      const MyLocation(),
                      const DescriptionBox(),
                    ],
                  ),
                )
              ],
          body: Consumer<Restaurant>(
            builder: (context, restaurant, child) => TabBarView(
              controller: tabController,
              children: getFoodInThisCategory(restaurant.menu),
            ),
          )),
    );
  }
}
