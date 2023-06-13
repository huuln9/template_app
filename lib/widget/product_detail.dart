import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:template_app/controller/product_detail_controller.dart';
import 'package:template_app/widget/common/my_app_bar.dart';
import 'package:template_app/widget/common/my_bottom_bar.dart';

class ProductDetail extends GetView<ProductDetailController> {
  const ProductDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: 'chi tiet'.tr),
      backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 310,
              width: double.infinity,
              child: Image.network(
                controller.product!.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20, bottom: 20),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              child: Row(
                children: <Widget>[
                  Text(
                    controller.product!.title,
                    textAlign: TextAlign.left,
                    softWrap: true,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  const SizedBox(width: 180),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      child: Text(
                        controller.product?.price.toString() ?? "",
                        style: const TextStyle(
                          color: Color.fromARGB(255, 92, 92, 92),
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            IconButton(
              icon: Icon(
                controller.product!.isFavorite ? Icons.favorite : Icons.favorite_border,
              ),
              color: Colors.red,
              onPressed: () {
                // controller.product!.isFavorite = !controller.product!.isFavorite;
              },
            ),
            Container(
              margin: const EdgeInsets.only(top: 20, bottom: 20),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              child: Text(
                controller.product!.description,
                textAlign: TextAlign.left,
                softWrap: true,
                style: const TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
              )),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 0,
                  right: 0,
                  bottom: 10,
                  top: 40,
                ),
                child: TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.only(top: 15, bottom: 15, left: 50, right: 50),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    backgroundColor: Colors.pink.shade100,
                  ),
                  onPressed: () {},
                  // onPressed: () {
                  //   final cart = context.read<CartManager>();
                  //   cart.addItem(product);
                  //   ScaffoldMessenger.of(context)
                  //     ..hideCurrentSnackBar()
                  //     ..showSnackBar(
                  //       SnackBar(
                  //         content: const Text(
                  //           'Sản phẩm được thêm vào giỏ hàng',
                  //         ),
                  //         duration: const Duration(seconds: 2),
                  //         action: SnackBarAction(
                  //           label: 'Trở lại',
                  //           onPressed: () {
                  //             cart.removeSingleItem(product.id!);
                  //           },
                  //         ),
                  //       ),
                  //     );
                  // },
                  child: const Text(
                    "Thêm giỏ hàng",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: const MyBottomBar(index: 1),
    );
  }
}
