import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:onlineshop/screens/myClock.dart';
// import 'package:onlineshop/constants/colors.dart';
// import 'package:onlineshop/screens/home.dart';
// import 'package:onlineshop/screens/myScaffold.dart';

void main() {
  runApp(const OnlineShop());
}

class OnlineShop extends StatelessWidget {
  const OnlineShop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return const MaterialApp(
        // theme: ThemeData.light(),
        // themeMode: ThemeMode.dark,
        // This is main

        debugShowCheckedModeBanner: false,
        home: MyClock()
        // MyScaffold()
        );
  }
}
