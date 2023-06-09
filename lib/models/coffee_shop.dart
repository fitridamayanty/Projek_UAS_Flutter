import 'package:coffee_shop_app/models/coffee.dart';
import 'package:flutter/material.dart';

class CoffeeShop extends ChangeNotifier {
  // coffee for sale list // membuat daftar kopi yang di jual
  final List<Coffee> _shop = [
    // black coffee
    Coffee(
      name: 'Long Black',
      price: "4.10",
      imagePath: "lib/images/black.png",
    ),

    // latte
    Coffee(
      name: 'Latte',
      price: "4.20",
      imagePath: "lib/images/latte.png",
    ),

    // espresso
    Coffee(
      name: 'espresso',
      price: "3.50",
      imagePath: "lib/images/espresso.png",
    ),

    // iced coffee
    Coffee(
      name: 'Iced Coffee',
      price: "4.30",
      imagePath: "lib/images/iced_coffee.png",
    ),
  ];

  // user cart // Keranjang pengguna
  List<Coffee> _userCart = [];

  // get coffee list // dapatkan daftar kopi
  List<Coffee> get coffeeShop => _shop;

  // get user cart / untuk menampilan keranjang pengguna
  List<Coffee> get userCart => _userCart;

  // add item to cart // untuk menambahkan item ke keranjang
  void addItemToCart(Coffee coffee) {
    _userCart.add(coffee);
    notifyListeners();
  }

  // remove item from cart // untuk menghapus item dari keranjang
  void removeItemFromCart(Coffee coffee) {
    _userCart.remove(coffee);
    notifyListeners();
  }
}
