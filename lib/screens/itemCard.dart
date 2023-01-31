import 'package:flutter/material.dart';
import 'package:onlineshop/constants/colors.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        scrollDirection: Axis.horizontal,
        // padding: const EdgeInsets.all(1.0),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Card(
                child: ItemCard1(
                    itemImage: 'assets/images/image1.jpg',
                    itemDescription: 'Rekano Shop',
                    itemPrice: '348'),
              ),
              Card(
                child: ItemCard1(
                    itemImage: 'assets/images/image2.jpg',
                    itemDescription: 'Rekano Shop',
                    itemPrice: '348'),
              ),
              Card(
                child: ItemCard1(
                    itemImage: 'assets/images/image5.jpg',
                    itemDescription: 'Rekano Shop',
                    itemPrice: '348'),
              ),
              Card(
                child: ItemCard1(
                    itemImage: 'assets/images/image6.jpg',
                    itemDescription: 'Rekano Shop',
                    itemPrice: '348'),
              ),
              Card(
                child: ItemCard1(
                    itemImage: 'assets/images/image7.jpg',
                    itemDescription: 'Rekano Shop',
                    itemPrice: '348'),
              ),
            ],
          )
        ],
      ),
    );
  }
}

// Creating a model to my Card1
@immutable
// ignore: must_be_immutable
class ItemCard1 extends StatefulWidget {
  // This field of properities
  final String itemImage;
  final String itemDescription;
  final String itemPrice;

  ItemCard1(
      {Key? key,
      required this.itemImage,
      required this.itemDescription,
      required this.itemPrice})
      : super(key: key);

  @override
  State<ItemCard1> createState() => _ItemCard1State();
}

class _ItemCard1State extends State<ItemCard1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // Decorate container
      constraints: const BoxConstraints.expand(
        height: 177,
        width: 130,
      ),
      decoration: BoxDecoration(
          // gradient: Gradient.linear(from, to, colors),
          image: DecorationImage(
              image: AssetImage(widget.itemImage), fit: BoxFit.cover),
          // color: onShCard2,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          border: const Border.fromBorderSide(BorderSide(
            color: onShSterling,
            width: 1,
            style: BorderStyle.solid,
          ))),
      child: Row(
        children: [
          Column(
            children: const [
              // Container(
              //   constraints: const BoxConstraints.expand(
              //     height: 90,
              //     width: 100,
              //   ),
              //   decoration: BoxDecoration(
              //       image: DecorationImage(
              //           image: AssetImage(widget.itemImage),
              //           fit: BoxFit.cover)),
              // child: ClipRRect(
              //   child: Image(
              //     image: AssetImage(widget.itemImage),
              //     fit: BoxFit.cover,
              //   ),
              // ),
              //),
              // SizedBox(
              //   height: 16,
              // )
              // SizedBox(
              //   height: 100,
              //   width: MediaQuery.of(context).size.width,
              //   child: CircleAvatar(
              //     backgroundColor: Colors.white,
              //     radius: 100,
              //     child: Image(
              //       image: AssetImage(widget.itemImage),
              //       fit: BoxFit.cover,
              //     ),
              //   ),
              // )
            ],
          )
        ],
      ),
    );
  }
}
