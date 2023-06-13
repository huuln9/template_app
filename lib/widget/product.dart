import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:template_app/controller/product_controller.dart';
import 'package:template_app/model/product_model.dart';
import 'package:template_app/widget/common/my_app_bar.dart';
import 'package:template_app/widget/common/my_bottom_bar.dart';

class Product extends GetView<ProductController> {
  const Product({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    return Scaffold(
      appBar: MyAppBar(
        title: "san pham".tr,
        actions: [
          _filter(),
          _badge()
        ],
      ),
      backgroundColor: Colors.grey.shade200,
      body: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        itemCount: controller.products.length,
        itemBuilder: (ctx, i) => _productGridTile(context: context, product: controller.products[i]),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.5 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
      ),
      bottomNavigationBar: const MyBottomBar(index: 1),
    );
  }

  Widget _productGridTile({required context, required ProductModel product}) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
          child: GestureDetector(
            onTap: () => Get.toNamed("/product/detail/${product.id}"),
            child: Image.network(
              product.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
        footer: GridTileBar(
          backgroundColor: Colors.white,
          title: Column(
            children: <Widget>[
              const SizedBox(height: 5),
              Text(
                product.title,
                //textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              Align(
                //alignment: Alignment.centerRight,
                child: Container(
                  child: Text(
                    '\$${product.price}',
                    style: const TextStyle(
                      color: Color.fromARGB(255, 92, 92, 92),
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ],
          ),
          trailing: IconButton(
            icon: const Icon(
              Icons.shopping_cart,
            ),
            onPressed: () {
              print('Add item to cart');
            },
            color: Colors.pink.shade100,
          ),
        ),
      ),
    );
  }

  Widget _filter() {
    return PopupMenuButton(
      // onSelected: {},
      icon: const Icon(
        Icons.more_vert,
      ),
      itemBuilder: (ctx) => [
        const PopupMenuItem(
          value: "FilterOptions.favorite",
          child: Text('Hiện thị sản phẩm yêu thích'),
        ),
      ],
    );
  }

  Widget _badge() {
    return Stack(
      alignment: Alignment.center,
      children: [
        IconButton(
          icon: const Icon(Icons.shopping_cart),
          onPressed: () {},
        ),
        Positioned(
          right: 8,
          top: 8,
          child: Container(
            padding: const EdgeInsets.all(2.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.red,
            ),
            constraints: const BoxConstraints(
              minWidth: 16,
              minHeight: 16,
            ),
            child: Text(
              "5",
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 10,
              ),
            ),
          ),
        )
      ],
    );
  }
}
