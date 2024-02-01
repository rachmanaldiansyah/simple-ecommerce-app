import 'package:flutter/material.dart';
import 'package:simple_ecommerce_app/models/product.dart';

class Shop extends ChangeNotifier {
  // products for sale
  final List<Product> _shop = [
    // product 1
    Product(
      name: "Product 1",
      price: 99.99,
      description: "Item description...",
      imagePath: "assets/glasses.jpg",
    ),
    // product 2
    Product(
      name: "Product 2",
      price: 99.99,
      description: "Item description...",
      imagePath: "assets/digital-watch.jpg",
    ),
    // product 3
    Product(
      name: "Product 3",
      price: 99.99,
      description: "Item description...",
      imagePath: "assets/manly-watch.jpg",
    ),
    // product 4
    Product(
      name: "Product 4",
      price: 99.99,
      description: "Item description...",
      imagePath: "assets/women-watch.jpg",
    ),
  ];

  // use cart
  final List<Product> _cart = [];

  // get product
  List<Product> get shop => _shop;

  // get user cart
  List<Product> get cart => _cart;

  // add item to cart
  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }

  // remove item from cart
  void removeFromCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }
}
