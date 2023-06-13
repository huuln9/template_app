import 'package:flutter/material.dart';
import 'package:template_app/config/app_config.dart';
import 'package:template_app/widget/common/app_drawer.dart';
import 'package:template_app/widget/common/my_app_bar.dart';
import 'package:template_app/widget/common/my_bottom_bar.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: MyAppBar(title: "trang chu".tr),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _header(context),
            _textLine(),
            _labelLine(text: "Tất cả sản phẩm"),
            _listAll(context: context),
            const SizedBox(height: 15),
            _labelLine(text: "Loại hoa phổ biến"),
            _listPopular(context: context),
          ],
        ),
      ),
      drawer: AppDrawer(),
      bottomNavigationBar: const MyBottomBar(),
    );
  }

  Widget _header(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      height: size.height * 0.2,
      child: Stack(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
              bottom: 36 + 20,
            ),
            height: size.height * 0.17,
            decoration: BoxDecoration(
              image: const DecorationImage(image: NetworkImage('https://wall.vn/wp-content/uploads/2019/11/hinh-nen-hoa-hong-dep-40.jpg'), repeat: ImageRepeat.repeat),
              color: Colors.pink.shade100,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              ),
            ),
            child: Row(
              children: <Widget>[
                Text(
                  'FlowerShop',
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 25),
              padding: const EdgeInsets.symmetric(horizontal: 25),
              height: 54,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 50,
                    color: AppConfig.kPrimaryColor.withOpacity(0.23),
                  )
                ],
              ),
              // Search
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        hintText: "Search",
                        hintStyle: TextStyle(
                          color: Colors.pink.shade100.withOpacity(0.9),
                        ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.search,
                    color: Colors.pink.shade100,
                    size: 35,
                  ),
                ],
              ),
              //
            ),
          ),
        ],
      ),
    );
  }

  Widget _textLine() {
    return SizedBox(
      height: 24,
      child: Stack(
        children: <Widget>[
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.only(left: 140),
            child: Text(
              "Welcome  to FlowerShop !!",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 195, 157, 157),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.only(right: 20 / 4),
              height: 7,
              color: AppConfig.kPrimaryColor.withOpacity(0.2),
            ),
          ),
        ],
      ),
    );
  }

  Widget _labelLine({required String text}) {
    return Container(
      height: 24,
      child: Stack(
        children: <Widget>[
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(right: 240),
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontFamily: 'Lato',
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: const EdgeInsets.only(right: 20 / 4),
              height: 7,
              color: AppConfig.kPrimaryColor.withOpacity(0.2),
            ),
          ),
        ],
      ),
    );
  }

  Widget _listAll({required context}) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          const SizedBox(width: 20),
          _itemAll(
            context: context,
            image: "assets/images/Tulip.jpg",
            title: "Hoa Tulip",
            price: 12.34,
            press: () {},
          ),
          const SizedBox(width: 20),
          _itemAll(
            context: context,
            image: "assets/images/Lan.jpg",
            title: "Hoa Lan",
            price: 15.02,
            press: () {},
          ),
          const SizedBox(width: 20),
          _itemAll(
            context: context,
            image: "assets/images/linhlan.jpg",
            title: "Hoa Linh Lan",
            price: 22.11,
            press: () {},
          ),
        ],
      ),
    );
  }

  Widget _itemAll({ required context, required image, required title, required price, required press}) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width * 0.42,
      child: Column(
        children: <Widget>[
          const SizedBox(height: 15),
          Image.asset(image),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0),
                ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(10, 10),
                    blurRadius: 50,
                    spreadRadius: 25,
                    color: AppConfig.kPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "$title\n",
                          style: Theme.of(context).textTheme.button,
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    '\$$price',
                    style: Theme.of(context).textTheme.button?.copyWith(color: Colors.pink.shade100),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _listPopular({required context}) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          _itemPopular(
            context: context,
            image: "assets/images/hoahong.jpg",
            press: () {},
          ),
          _itemPopular(
            context: context,
            image: "assets/images/cuchoami.jpg",
            press: () {},
          ),
          _itemPopular(
            context: context,
            image: "assets/images/huongduong.jpg",
            press: () {},
          ),
          _itemPopular(
            context: context,
            image: "assets/images/hoaanhtuc.jpg",
            press: () {},
          ),
          _itemPopular(
            context: context,
            image: "assets/images/camtucau.jpg",
            press: () {},
          ),
        ],
      ),
    );
  }

  Widget _itemPopular({required context, required image, required press}) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(
          left: 20,
          top: 10,
          bottom: 10,
        ),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          // border: Border.all(
          //   width: 10,
          //   color: Colors.pink.shade50,
          // ),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
        ),
      ),
    );
  }
}
