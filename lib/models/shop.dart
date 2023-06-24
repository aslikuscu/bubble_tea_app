import 'package:bubble_tea_app/models/drink.dart';
import 'package:flutter/material.dart';

class BubbleTeaShop extends ChangeNotifier {
  final List<Drink> _shop = [
    Drink(
        name: "pearl milk tea", price: "4.00", imagePath: "images/milktea.jpg")
  ];

  List<Drink> get shop => _shop;

  final List<Drink> _userCart = [];

  List<Drink> get cart => _userCart;

  void addToCart(Drink drink) {
    _userCart.add(drink);
    notifyListeners();
  }

  void removeFromCart(Drink drink) {
    _userCart.remove(drink);
    notifyListeners();
  }
}
