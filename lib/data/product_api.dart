import 'package:bloc_sample/models/product.dart';
import 'package:http/http.dart' as http;

class ProductApi {
  static List<Product> products = List<Product>();

  static ProductApi _singleton = ProductApi._internal();

  factory ProductApi() {
    return _singleton;
  }

  ProductApi._internal(); //constructor

  static List<Product> getAll() {
    products.add(Product(1, "Acer Laptop", 6000));
    products.add(Product(2, "Asus Laptop", 3000));
    products.add(Product(3, "Hp Laptop", 7000));
    products.add(Product(4, "Lenovo Laptop", 6500));
    return products;
  }
}
