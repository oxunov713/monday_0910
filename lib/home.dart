import 'package:flutter/material.dart';
import 'package:monday_0910/custom_navigationbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageNum = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          bottomNavigationBar: CustomNavigatinBar(
        onPageChange: (value) {
          setState(() {
            pageNum = value;
          });
        },
        pageNum: pageNum,
      )),
    );
  }
}
