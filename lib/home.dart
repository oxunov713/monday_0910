import 'package:flutter/material.dart';
import 'package:monday_0910/custom_navigationbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageNum = 0;

  final PageController pageController = PageController();

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: PageView(
          controller: pageController,
          physics: BouncingScrollPhysics(),
          //page tugasa animatsiyaga oxshab oynedi
          //physics:NeverScrollableScrollPhysics(),//yonga otmedi surgan bn
          onPageChanged: (value) {
            setState(() {
              pageNum = value;
            });
          },
          children: [
            ColoredBox(color: Colors.green),
            ColoredBox(color: Colors.red),
            ColoredBox(color: Colors.blue),
          ],
        ),
        bottomNavigationBar: CustomNavigatinBar(
          onPageChange: (value) {
            setState(() {
              pageNum = value;
             // pageController.jumpToPage(value);
              pageController.animateToPage(value,
                  duration: Duration(milliseconds: 300),
                  curve: Curves.linear);
            });
          },
          pageNum: pageNum,
        ),
        floatingActionButton: FloatingActionButton.large(
          onPressed: () {},
          child: Icon(Icons.ac_unit, color: Colors.lime),
        ),
      ),
    );
  }
}
