import 'package:flutter/material.dart';
import 'package:onlineshop/constants/colors.dart';

class HomePageCard extends StatelessWidget {
  const HomePageCard({super.key});
  final String discount = 'Discounts';
  final String explore = 'See More';
  final String rateOfDiscount = '-50%';

  @override
  Widget build(BuildContext context) {
    return Center(

        // TODO: decorate Container
        child: Container(
      // TODO: Add a stack of text
      padding: const EdgeInsets.all(16),
      // color: Colors.teal,
      constraints: const BoxConstraints.expand(
        height: 105,
        width: 355,
      ),
      decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/cardImage.jpg'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(Radius.circular(12.0))),

      child: Stack(children: [
        Text(
          discount,
          style: const TextStyle(
              color: onShWhite, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        Positioned(
          left: 0,
          bottom: 1,
          child: Container(
            // padding: EdgeInsets.all(8.5),
            alignment: Alignment.center,
            height: 40.1,
            width: 108,
            decoration: const BoxDecoration(
                color: onShSterling,
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                )),
            child: Text(
              explore,
              style: const TextStyle(
                  color: onShWhite, fontSize: 13, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Positioned(
          right: 0,
          top: 1,
          child: Container(
            // padding: EdgeInsets.all(8.5),
            alignment: Alignment.center,
            height: 33.0,
            width: 56.0,
            decoration: const BoxDecoration(
                color: onShBrown,
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                )),
            child: Text(
              rateOfDiscount,
              style: const TextStyle(
                  color: onShWhite, fontSize: 13, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ]),
    ));
  }
}
