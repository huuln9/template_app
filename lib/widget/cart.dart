import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:template_app/controller/cart_controller.dart';
import 'package:template_app/util/dialog_util.dart';
import 'package:template_app/widget/common/my_app_bar.dart';
import 'package:template_app/widget/common/my_bottom_bar.dart';

class Cart extends GetView<CartController> {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: 'GIỎ HÀNG'.tr),
      backgroundColor: Colors.grey.shade200,
      body: Column(
        children: <Widget>[
          _buildCartSummary(context),
          Expanded(
            child: _buildCartDetails(context),
          ),
          _buildPayment(context),
          SizedBox(
            height: 50,
          ),
        ],
      ),
      bottomNavigationBar: const MyBottomBar(index: 2),
    );
  }

  Widget _buildCartDetails(BuildContext context) {
    return ListView.builder(
      itemCount: controller.carts.length,
      itemBuilder: (context, i) {
        return _CartItemCard(
          context,
          productId: controller.carts[i].id,
          cardItem: controller.carts[i],
        );
      },
    );
  }

  Widget _buildPayment(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        padding: const EdgeInsets.only(top: 15, bottom: 15, left: 70, right: 70),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        backgroundColor: Colors.pink.shade100,
        //minimumSize: Size(double.infinity, 50)
      ),
      onPressed: () => Get.toNamed("/checkout"),
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
        "Đặt Hàng",
        style: TextStyle(
          fontSize: 20,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _buildCartSummary(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            const Text(
              'Tổng:',
              style: TextStyle(fontSize: 20),
            ),
            const Spacer(),
            Chip(
              label: Text(
                "123312323",
                style: TextStyle(
                  color: Theme.of(context).primaryTextTheme.titleLarge?.color,
                  fontSize: 16,
                ),
              ),
              backgroundColor: Colors.pink[100],
            ),
            // TextButton(
            //   // onPressed: cart.totalAmount <= 0
            //   // ? null
            //   // : () {
            //   //   context.read<OrdersManager>().addOrder(
            //   //     cart.products,
            //   //     cart.totalAmount,
            //   //   );
            //   //   cart.clear();
            //   // },
            //   onPressed: () {
            //     print("Them vao ddon hang");
            //   },
            //   style: TextButton.styleFrom(
            //     textStyle: TextStyle(color: Theme.of(context).primaryColor),
            //   ),
            //   child: const Text('Thanh Toán')
            // ),
          ],
        ),
      ),
    );
  }

  Widget _CartItemCard(
    context, {
    required productId,
    required cardItem,
  }) {
    return Dismissible(
      key: ValueKey(cardItem.id),
      background: Container(
        color: Theme.of(context).colorScheme.error,
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.only(right: 20),
        margin: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 4,
        ),
        child: const Icon(
          Icons.delete,
          color: Colors.white,
          size: 40,
        ),
      ),

      direction: DismissDirection.endToStart,
      confirmDismiss: (direction) {
        return showConfirmDialog(
          context,
          'Bạn có muốn xóa sản phẩm này khỏi giỏ hàng mình không?',
        );
      },
      onDismissed: (direction) {
        print("Xóa sản phẩm khỏi giỏ hàng");
      },
      // onDismissed: (direction) {
      //   context.read<CartManager>().removeItem(productId);
      // },
      child: Container(
        margin: EdgeInsets.all(12),
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
            border: Border.all(color: Colors.white),
            boxShadow: const [
              BoxShadow(
                blurRadius: 8,
                offset: Offset(0, 4),
                color: Colors.grey,
              ),
            ]),
        child: Row(
          children: [
            SizedBox(
              width: 90,
              child: AspectRatio(
                aspectRatio: 0.9,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset(
                    cardItem.imageUrl,
                    // width: 0,
                    // height: 0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 10, bottom: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      cardItem.title,
                      style: const TextStyle(fontSize: 18, color: Color.fromARGB(255, 65, 54, 54)),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        top: 10,
                      ),
                      child: Row(
                        children: [
                          Text(
                            (cardItem.price).toStringAsFixed(2),
                            style: const TextStyle(
                              fontSize: 15,
                              color: Colors.pinkAccent,
                            ),
                          ),
                          const Text(
                            "\$",
                            style: TextStyle(color: Colors.pinkAccent, fontSize: 15),
                          ),
                          // const Spacer(),
                          const SizedBox(width: 120),
                          Container(
                              padding: const EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                // color: buttonColor,
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.pink[50],
                              ),
                              child: Row(
                                children: [
                                  InkWell(
                                      onTap: () {},
                                      child: const Icon(
                                        Icons.remove,
                                        color: Color.fromARGB(255, 211, 36, 91),
                                        size: 16,
                                      )),
                                  Container(
                                    margin: const EdgeInsets.symmetric(horizontal: 3),
                                    padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 2),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(3),
                                    ),
                                    child: Text(
                                      (cardItem.quantity).toStringAsFixed(0),
                                      style: const TextStyle(color: Colors.black, fontSize: 16),
                                    ),
                                  ),
                                  InkWell(
                                      onTap: () {},
                                      child: const Icon(
                                        Icons.add,
                                        color: Color.fromARGB(255, 211, 36, 91),
                                        size: 16,
                                      )),
                                ],
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
