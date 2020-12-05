import 'dart:async';

import 'package:bloc_sample/data/cart_api.dart';
import 'package:bloc_sample/models/cart.dart';

class CartBloc {
  final cartStreamController = StreamController.broadcast();
  //final as same as CONST
  //stream future dan farklı olarak data oluştuktan sonra durmaz ve tekrar data oluşturup devam eder(sürekli olan şeylerde kullanılır)

  Stream get getStream => cartStreamController.stream;

  void addToCart(Cart item) {
    CartApi.addToCart(item);
    cartStreamController.sink
        .add(CartApi.getCart()); //getcard ı kullananları tekrar build et
  }

  void removeFromCart(Cart item) {
    CartApi.removeFromCart(item);
    cartStreamController.sink.add(CartApi.getCart());
  }

  List<Cart> getCart() {
    return CartApi.getCart();
  }
}

final cartBloc = CartBloc();
