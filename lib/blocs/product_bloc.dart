import 'dart:async';

import 'package:bloc_sample/data/product_api.dart';
import 'package:bloc_sample/models/product.dart';

class ProductBloc {
  final productStreamController = StreamController.broadcast();

  Stream get getStream => productStreamController.stream;

  List<Product> getAll() {
    return ProductApi.getAll();
  }
}

final productBloc = ProductBloc();
