import 'package:block_study/products/model/products_models.dart';
import 'package:http/http.dart' as http;
class ProductController {

  Future<ProductModel?> getProducts()async{
    String uri = "https://dummyjson.com/comments";
    http.Response response = await http.get(Uri.parse(uri));
    if(response.statusCode == 200){
      return productModelFromJson(response.body);
    }
  }

}