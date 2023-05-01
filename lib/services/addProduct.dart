import 'dart:convert';

import 'package:mystore/helper/Api.dart';
import 'package:mystore/models/ratingModel.dart';
import 'package:http/http.dart' as http;

import '../models/ProductModel.dart';

class AddProduct {
  Future<ProductModel> addProduct(
      {String? title,
      String? price,
      String? desc,
      String? image,
      String? category}) async {
    Map<String, dynamic> data =
        await Api().post(url: 'https://fakestoreapi.com/products', body: {
      'title': title,
      'price': price,
      'description': desc,
      'image': image,
      'category': category
    });
    return ProductModel.fromJson(data);
  }
}
