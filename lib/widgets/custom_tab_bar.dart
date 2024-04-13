import 'package:flutter/material.dart';
import 'package:food_delivery/model/food_model.dart';

class CustomTabBar extends StatelessWidget {
  final TabController tabController;
  const CustomTabBar({
    super.key,
    required this.tabController,
  });

  List<Tab> _buildCategoryTabs(){
    return FoodCategory.values.map((category) {
      return Tab(
       // text: category.toString().split('.').last.toUpperCase(),
        child: Text(category.toString().split('.').last.toUpperCase()),
        );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.zero,
      child: TabBar(
        tabAlignment: TabAlignment.start,
        isScrollable: true,
       padding: EdgeInsets.zero,
       labelPadding: const EdgeInsets.symmetric(horizontal: 12),
       labelColor: Theme.of(context).colorScheme.inversePrimary,
        unselectedLabelStyle: TextStyle(fontSize: 10, color: Theme.of(context).colorScheme.primary),
        labelStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        controller: tabController,
        tabs: _buildCategoryTabs(),
        ),
    );
  }
}
