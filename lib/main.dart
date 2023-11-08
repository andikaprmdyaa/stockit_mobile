import 'package:flutter/material.dart';
import 'package:stockit_mobile/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: MyHomePage(
        items: [
          ShopItem("View Products", Icons.checklist, Colors.orange),
          ShopItem("Add Product", Icons.add_shopping_cart, Colors.brown),
          ShopItem("Logout", Icons.logout, Colors.yellow),
        ],
      ),
    );
  }
}
