import 'package:flutter/material.dart';
import 'package:grocery_app/core/Cart/cart_item_card.dart';
import 'package:get/get.dart';
import 'package:grocery_app/core/Cart/checkout_card.dart';

import 'package:grocery_app/core/Cart/services/cart_controller.dart';
import 'package:grocery_app/utils/utils.dart';
import 'package:grocery_app/widgets/button.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    final CartController cartController = Get.put(CartController());
    var w = MediaQuery.of(context).size.width;
    bool checkout = false;
    return Scaffold(
        body: Column(
      children: [
        verticalspace(15),
        Text(
          'My Cart', // Replace with your actual text
          style: TextStyle(
            fontFamily: "Gilroy-Bold",
            fontSize: w * 0.05,

            height: 18 / 20, // Calculating line height based on fontSize
            letterSpacing: 0,
          ),
          textAlign: TextAlign.center,
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        cart_item_card(
                          image: 'assets/cart_items/item1.png',
                          itemName: 'Product 1',
                          itemPrice: '\$10.00',
                          itemQuantity: '2',
                        ),
                        verticalspace(2),
                        Divider(
                          color: Color(0xffE2E2E2),
                          thickness: 1,
                        ),
                      ],
                    );
                  },
                ),
                verticalspace(2),
              ],
            ),
          ),
        ),
        Obx(() => Visibility(
              visible: cartController.showCheckoutCard.value,
              child: checkout_card(),
            )),
        Obx(() => Visibility(
              visible: !cartController.showCheckoutCard.value,
              child: GestureDetector(
                onTap: () {
                  print("tapped gesture detector");
                  cartController.toggleCheckoutCard();
                },
                child: Button(
                  buttonText: "Go to Checkout",
                  onPressed: () {
                    cartController.toggleCheckoutCard();
                  },
                ),
              ),
            )),
      ],
    ));
  }
}
