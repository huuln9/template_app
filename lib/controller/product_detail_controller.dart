import 'package:get/get.dart';
import 'package:template_app/controller/product_controller.dart';
import 'package:template_app/model/product_model.dart';

class ProductDetailController extends GetxController {
  late final ProductModel? product;

  ProductController productController = Get.find();

  @override
  void onInit() {
    super.onInit();

    final String? id = Get.parameters["id"];
    if (id == null) {
      throw "id null";
    }
    product = productController.products.firstWhere((element) => element.id == id);
  }
}