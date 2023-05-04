import '../model/product_model.dart';
import 'package:http/http.dart' as http;

class ProductController{


  static Future<ProductsData?> getProductData()async{
   String uri = "https://dummyjson.com/products";
   http.Response response = await http.get(Uri.parse(uri));
   if(response.statusCode == 200){
     return productsDataFromJson(response.body);
   }
  }

}