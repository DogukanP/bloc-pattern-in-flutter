import 'package:bloc_sample/models/cart.dart';

class CartApi {
  static List<Cart> cartItems = List<Cart>();

  static CartApi _singleton = CartApi._internal();

  factory CartApi() {
    return _singleton;
  }

  CartApi._internal();

  static void addToCart(Cart item) {
    cartItems.add(item);
  }

  static void removeFromCart(Cart item) {
    cartItems.remove(item);
  }

  static List<Cart> getCart() {
    return cartItems;
  }
}
