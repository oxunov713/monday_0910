import 'package:flutter/material.dart';

class CustomNavigatinBar extends StatelessWidget {
CustomNavigatinBar({super.key, required this.pageNum, required this.onPageChange});
final int pageNum;
final void Function(int value) onPageChange;
  @override
  Widget build(BuildContext context) {
    return  NavigationBar(
      selectedIndex: pageNum,
      onDestinationSelected: (value) => onPageChange(value),
      labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
      destinations: [
        NavigationDestination(
          icon: Icon(Icons.home_outlined),
          label: "Home",
          selectedIcon: Icon(Icons.home),
        ),
        NavigationDestination(
          icon: Icon(Icons.favorite_outlined),
          label: "Like",
          selectedIcon: Icon(Icons.favorite),
        ),
        NavigationDestination(
          icon: Icon(Icons.shopping_cart_outlined),
          label: "Cart",
          selectedIcon: Icon(Icons.shopping_cart),
        ),
      ],
    );
  }
}
