import 'package:flutter/material.dart';
import 'package:onlineshop/constants/colors.dart';

class ExploreButtons extends StatelessWidget {
  const ExploreButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      alignment: Alignment.bottomCenter,
      margin: const EdgeInsets.only(top: 18.0),
      // color: Colors.teal,
      constraints: const BoxConstraints.expand(
        height: 50,
        width: 355,
      ),
      decoration: const BoxDecoration(
          // color: onShSterling,
          borderRadius: BorderRadius.all(Radius.circular(30))),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Card(
            child: OutlinedButton(
              onPressed: () {},
              // style: OutlinedButton.styleFrom(
              //     side: const BorderSide(width: 1.0, style: BorderStyle.solid)),
              child: const Text(
                'Shoes',
                style: TextStyle(color: onShBlack),
              ),
            ),
          ),
          Card(
            child: OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(),
              child: const Text(
                'Clothes',
                style: TextStyle(color: onShBlack),
              ),
            ),
          ),
          Card(
            child: OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(

                  // shape: OutlinedBorder()
                  ),
              child: const Text(
                'Fashion',
                style: TextStyle(color: onShBlack),
              ),
            ),
          ),
          Card(
            child: OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(

                  // shape: OutlinedBorder()
                  ),
              child: const Text(
                'Beauty',
                style: TextStyle(color: onShBlack),
              ),
            ),
          ),
          Card(
            child: OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(

                  // shape: OutlinedBorder()
                  ),
              child: const Text(
                'Women',
                style: TextStyle(color: onShBlack),
              ),
            ),
          ),
          Card(
            child: OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(

                  // shape: OutlinedBorder()
                  ),
              child: const Text(
                'Men',
                style: TextStyle(color: onShBlack),
              ),
            ),
          ),
          Card(
            child: OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(

                  // shape: OutlinedBorder()
                  ),
              child: const Text(
                'Kids',
                style: TextStyle(color: onShBlack),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}


  //  child: Wrap(
  //         alignment: WrapAlignment.spaceBetween,
  //         // spacing: 12,
  //         children: const [
  //           Chip(
  //             label: Text('Shoes'),
  //           ),
  //           Chip(
  //             label: Text('Clothes'),
  //           ),
  //           Chip(
  //             label: Text('Fashion'),
  //           ),
  //           Chip(
  //             label: Text('Beauty'),
  //           ),
  //         ],
  //       ),