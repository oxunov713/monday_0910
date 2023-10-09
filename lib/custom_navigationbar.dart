import 'package:flutter/material.dart';

class CustomNavigatinBar extends StatelessWidget {
  const CustomNavigatinBar(
      {super.key, required this.pageNum, required this.onPageChange});

  final int pageNum;
  final void Function(int value) onPageChange;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 10,
      clipBehavior: Clip.antiAlias,
      surfaceTintColor: Colors.transparent,
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.home),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.favorite_outlined),
                ),
              ],
            ),
          ),
          FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
