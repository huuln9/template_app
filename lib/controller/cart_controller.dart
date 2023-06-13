import 'package:get/get.dart';
import 'package:template_app/model/cart_item_model.dart';

class CartController extends GetxController {
  final List<CartItemModel> carts = [
    CartItemModel(
      id: 'c1',
      title: 'Tulip',
      price: 11.02,
      quantity: 2,
      imageUrl: "assets/images/Tulip.jpg",
    ),
  ];
}
