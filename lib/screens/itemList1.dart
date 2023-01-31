import 'package:flutter/material.dart';
import 'package:onlineshop/screens/itemCard.dart';

class ItemsList extends StatelessWidget {
  const ItemsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(
          height: 177,
          width: 355,
        ),
        decoration: const BoxDecoration(
            // color: Colors.teal,
            ),
        child: const ItemCard(),
      ),
    );
  }
}
