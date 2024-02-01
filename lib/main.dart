import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_ecommerce_app/models/shop.dart';
import 'package:simple_ecommerce_app/pages/cart_page.dart';
import 'package:simple_ecommerce_app/pages/intro_page.dart';
import 'package:simple_ecommerce_app/pages/shop_page.dart';
import 'package:simple_ecommerce_app/themes/light_mode.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (_) => Shop(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const IntroPage(),
      theme: lightMode,
      routes: {
        '/intro_page': (_) => const IntroPage(),
        '/shop_page': (_) => const ShopPage(),
        '/cart_page': (_) => const CartPage(),
      },
    );
  }
}
