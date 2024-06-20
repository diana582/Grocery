import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Account/accoutns.dart';
import 'Cart/Cart.dart';
import 'Explore/pages/explore.dart';
import 'Favourites/favourites.dart';
import 'Homepage/homepage.dart';

class Mainpage extends StatelessWidget {
  Mainpage({super.key});
  // ignore: prefer_typing_uninitialized_variables
  final ind = 0.obs;
  onInit() {
    ind.value = 0;
  }

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;

    return Scaffold(
      
        bottomNavigationBar: Material(
          elevation: 2,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          child: SizedBox(
            height: h * 0.1,
            child: Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                      color: ind.value == 0 ? Colors.green : Colors.black,
                      onPressed: () {
                        ind.value = 0;
                      },
                      icon: const Icon(Icons.home)),
                  IconButton(
                      color: ind.value == 1 ? Colors.green : Colors.black,
                      onPressed: () {
                        ind.value = 1;
                      },
                      icon: const Icon(Icons.explore)),
                  IconButton(
                      color: ind.value == 2 ? Colors.green : Colors.black,
                      onPressed: () {
                        ind.value = 2;
                      },
                      icon: const Icon(Icons.shopping_cart)),
                  IconButton(
                      color: ind.value == 3 ? Colors.green : Colors.black,
                      onPressed: () {
                        ind.value = 3;
                      },
                      icon: const Icon(Icons.favorite_outlined)),
                  IconButton(
                      color: ind.value == 4 ? Colors.green : Colors.black,
                      onPressed: () {
                        ind.value = 4;
                      },
                      icon: const Icon(Icons.person)),
                ],
              ),
            ),
          ),
        ),
        body: Obx(() => Column(
              children: [
                stackedbody(ind.value),
              ],
            )));
  }
}

Widget stackedbody(var index) {
  return Expanded(
    child: IndexedStack(
      index: index,
      children: const [Homepage(), Explore(), Cart(), Favourites(), Accounts()],
    ),
  );
}
