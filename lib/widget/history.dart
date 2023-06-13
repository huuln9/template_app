import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:template_app/controller/history_controller.dart';
import 'package:template_app/model/cart_item_model.dart';
import 'package:template_app/util/app_util.dart';
import 'package:template_app/widget/common/my_bottom_bar.dart';


class History extends GetView<HistoryController> {
  const History({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lịch Sử Đơn Hàng'),
        backgroundColor: Colors.pink.shade100,
      ),
      body: ListView.builder(
        itemCount: controller.histories.length,
        itemBuilder: (ctx, i) => _OrderItemCard(history:  controller.histories[i]),
      ),
      // body: Consumer<OrdersManager>(
      //   builder: (ctx, ordersManager, child) {
      //     return ListView.builder(
      //       itemCount: ordersManager.orderCount,
      //       itemBuilder: (ctx, i) => OrderItemCard(ordersManager.orders[i]),
      //     );
      //   },
      // ),
      bottomNavigationBar: const MyBottomBar(index: 0),
    );
  }

  Widget _OrderItemCard({required CartItemModel history}) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 10.0),
          child: Container(
            child: Text("DANH SÁCH ĐƠN HÀNG",
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Card(
          margin: const EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              buildOrderSummary(),
              // if (_expanded) buildOrderDetails()
            ],
          ),
        ),
      ],
    );
  }

  Widget buildOrderSummary(){
    return ListTile(
      title: Text('34000 VND'),
      // subtitle: Text(
      //     AppUtil.formatDate(time: "time");
      // ),

    );
  }
}