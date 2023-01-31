// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:onlineshop/screens/home.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:onlineshop/constants/colors.dart';
import 'package:onlineshop/screens/itemCard.dart';

class MyScaffold extends StatefulWidget {
  const MyScaffold({super.key});

  @override
  State<MyScaffold> createState() => _MyScaffoldState();
}

class _MyScaffoldState extends State<MyScaffold> {
  final int _pageIndex = 0;

  final items = const <Widget>[
    Icon(
      Icons.home,
      color: onShWhite,
    ),
    Icon(
      Icons.search,
      color: onShWhite,
    ),
    Icon(
      Icons.shopping_cart_checkout_sharp,
      color: onShWhite,
    ),
    Icon(
      Icons.favorite,
      color: onShWhite,
    ),
    Icon(
      Icons.account_circle,
      color: onShWhite,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
        // appBar: AppBar(),

        body: SafeArea(
            child: IndexedStack(
          alignment: AlignmentDirectional.topStart,
          index: _pageIndex,
          children: const [Home()],
        )),
        bottomNavigationBar: CurvedNavigationBar(
          height: 75,
          index: _pageIndex,
          items: items,
          color: onShSterling,
          backgroundColor: Colors.transparent,
        ),
      ),
    );
  }
}
