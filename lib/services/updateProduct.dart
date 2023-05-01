import '../helper/Api.dart';
import '../models/ProductModel.dart';

class UpdateProduct {
  Future<ProductModel> updateProduct(
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
