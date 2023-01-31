import 'package:flutter/material.dart';
import 'package:onlineshop/constants/colors.dart';
import 'package:onlineshop/screens/clothes.dart';
import 'package:onlineshop/screens/exploreButtons.dart';
import 'package:onlineshop/screens/homePageCard.dart';
import 'package:onlineshop/screens/itemCard.dart';
import 'package:onlineshop/screens/itemList1.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // final double height = MediaQuery.of(context).size.height;
    // final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // First Row
          Container(
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.all(8.0),
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Discover',
                          style: TextStyle(
                              fontSize: 20,
                              color: onShBlack,
                              fontWeight: FontWeight.bold),
                          // textAlign: TextAlign.start,
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Find anything what you want!',
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Container(
                            decoration: const BoxDecoration(
                              border: Border.fromBorderSide(BorderSide(
                                width: 1.0,
                                style: BorderStyle.solid,
                                color: onShBlack,
                              )),
                              // color: onShBlack,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            ),
                            child: IconButton(
                                // alignment: Alignment.topCenter,
                                onPressed: () {},
                                icon: const Icon(Icons.search)))
                      ],
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Column(
                      children: [
                        Container(
                            decoration: const BoxDecoration(
                              border: Border.fromBorderSide(BorderSide(
                                width: 1.0,
                                style: BorderStyle.solid,
                                color: onShBlack,
                              )),
                              // color: onShBlack,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            ),
                            child: IconButton(
                                // alignment: Alignment.topCenter,
                                onPressed: () {},
                                icon: const Icon(
                                    Icons.notifications_active_outlined)))
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          // SizedBox(),
          const HomePageCard(),
          const ExploreButtons(),
          Container(
            margin: const EdgeInsets.only(top: 12),
            constraints: const BoxConstraints.expand(
              height: 40,
              width: 355,
            ),
            // color: Colors.teal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    Text(
                      'Flash Sale',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Clothing in:'),
                    const SizedBox(
                      width: 8,
                    ),
                    Row(
                      children: [
                        Row(
                          children: const [
                            Text(
                              '18',
                              // style: TextStyle(color: onShWhite),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Row(
                          children: const [
                            Text('25'),
                          ],
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Row(
                          children: const [
                            Text('16'),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          // const ItemCard(),
          const ItemsList(),
          Container(
            margin: const EdgeInsets.only(top: 12),
            constraints: const BoxConstraints.expand(
              height: 40,
              width: 355,
            ),
            // color: Colors.teal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    Text(
                      'Most Popular',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('See all'),
                    SizedBox(
                      width: 8,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Clothes(),
        ],
      ),
    );
  }
}
