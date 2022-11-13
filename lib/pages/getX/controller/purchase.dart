

import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:tugas_app/pages/getX/model/product.dart';

class Purchase extends GetxController {
  var products = <Product>[].obs;
  @override
  void onInit() {
    fetchProduct();
    super.onInit();
  }

  void fetchProduct() async {
    await Future.delayed(Duration(seconds: 1));
    //call from server End

    var serverResponse = [
      Product(1, "Demo Product", "https://picsum.photos/365/150?random=1",
          "this is a Product that we are going to show by getX", 300.0),
      Product(2, "Demo Product", "https://picsum.photos/365/150?random=2",
          "this is a Product that we are going to show by getX", 300.0),
      Product(3, "Demo Product", "https://picsum.photos/365/150?random=3",
          "this is a Product that we are going to show by getX", 300.0),
      Product(4, "Demo Product", "https://picsum.photos/365/150?random=5",
          "this is a Product that we are going to show by getX", 300.0),
      Product(5, "Demo Product", "https://picsum.photos/365/150?random=6",
          "this is a Product that we are going to show by getX", 300.0),
      Product(6, "Demo Product", "https://picsum.photos/365/150?random=7s",
          "this is a Product that we are going to show by getX", 300.0),
    ];
    products.value = serverResponse;
  }
}
