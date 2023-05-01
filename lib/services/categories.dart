import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:mystore/helper/Api.dart';
import 'package:mystore/models/ratingModel.dart';

import '../models/ProductModel.dart';

class Categories {
  Future<List<ProductModel>> getCategoriesProducts(
      {required String categorieName}) async {
    List<dynamic> data = await Api()
        .get(url: 'https://fakestoreapi.com/products/category/$categorieName');

    List<ProductModel> productList = [];
    for (var i = 0; i < data.length; i++) {
      productList.add(ProductModel.fromJson(data[i]));
    }
    return productList;
  }
}
