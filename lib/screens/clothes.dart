import 'package:flutter/material.dart';
import 'package:onlineshop/constants/colors.dart';

class Clothes extends StatelessWidget {
  const Clothes({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      constraints: const BoxConstraints.expand(
        height: 137,
        width: 350,
      ),
      decoration: const BoxDecoration(
          // color: Colors.teal,
          ),
      child: GridView.count(
        scrollDirection: Axis.vertical,
        mainAxisSpacing: 18.0,
        crossAxisSpacing: 16.0,
        crossAxisCount: 2,
        children: List.generate(clothes.length, (index) {
          return Center(
            child: SeletClothe(clothe: clothes[index]),
          );
        }),
      ),
    ));
  }
}

class Clothe {
  const Clothe({
    required this.clothImage,
    required this.clothPrice,
  });
  final String clothImage;
  final String clothPrice;
}

List<Clothe> clothes = const [
  Clothe(clothImage: 'assets/images/image9.jpg', clothPrice: '234'),
  Clothe(clothImage: 'assets/images/image10.jpg', clothPrice: '234'),
  Clothe(clothImage: 'assets/images/image11.jpg', clothPrice: '234'),
  Clothe(clothImage: 'assets/images/image8.jpg', clothPrice: '234'),
];

class SeletClothe extends StatefulWidget {
  const SeletClothe({
    required this.clothe,
    super.key,
  });
  final Clothe clothe;

  @override
  State<SeletClothe> createState() => _SeletClotheState();
}

class _SeletClotheState extends State<SeletClothe> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(
        height: 200,
        width: 166,
      ),
      decoration: BoxDecoration(
          // gradient: Gradient.linear(from, to, colors),
          image: DecorationImage(
              image: AssetImage(widget.clothe.clothImage), fit: BoxFit.cover),
          // color: onShCard2,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          border: const Border.fromBorderSide(BorderSide(
            color: onShSterling,
            width: 1,
            style: BorderStyle.solid,
          ))),
    );
  }
}
