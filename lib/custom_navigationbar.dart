import 'package:flutter/material.dart';

class CustomNavigatinBar extends StatelessWidget {
  const CustomNavigatinBar(
      {super.key, required this.pageNum, required this.onPageChange});

  final int pageNum;
  final void Function(int value) onPageChange;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: pageNum,
      onTap: (value) => onPageChange(value),
      landscapeLayout: BottomNavigationBarLandscapeLayout.linear,
      showSelectedLabels: true,
      showUnselectedLabels: false,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label: "Home",
          activeIcon: Icon(Icons.home),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_outlined),
          label: "Like",
          activeIcon: Icon(Icons.favorite),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart_outlined),
          label: "Cart",
          activeIcon: Icon(Icons.shopping_cart),
        ),

      ],
    );
  }
}
