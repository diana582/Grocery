import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/utils/utils.dart';
import 'package:grocery_app/widgets/button.dart';

class OrderPlaced extends StatelessWidget {
  const OrderPlaced({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/cart_items/orderPlaced.png",
              ),
              verticalspace(40),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Your Order has been ',
                      style: TextStyle(
                        fontFamily: 'Gilroy',
                        fontSize: 28,
                        fontWeight: FontWeight.w600,
                        height: 34 /
                            28, // Calculating line height based on fontSize
                      )),
                  Text('accepted',
                      style: TextStyle(
                        fontFamily: 'Gilroy',
                        fontSize: 28,
                        fontWeight: FontWeight.w600,
                        height: 34 /
                            28, // Calculating line height based on fontSize
                      )),
                ],
              ),
              verticalspace(30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Your items has been placed and is on',
                    style: TextStyle(
                      fontFamily: 'Gilroy-Medium',
                      fontSize: 16,
                      color: Color(0xff7c7c7c),
                      height:
                          21 / 16, // Calculating line height based on fontSize
                      letterSpacing: 0,
                    ),
                  ),
                  Text(
                    'it’s way to being processed',
                    style: TextStyle(
                      fontFamily: 'Gilroy-Medium',
                      fontSize: 16,
                      color: Color(0xff7c7c7c),
                      height:
                          21 / 16, // Calculating line height based on fontSize
                      letterSpacing: 0,
                    ),
                  ),
                ],
              ),
              verticalspace(30),
              Button(
                buttonText: "Track Order",
                onPressed: () {
                  Get.toNamed("/trackorder");
                },
              ),
              verticalspace(5),
              Text("Back to home",
                  style: TextStyle(
                    fontFamily: 'Gilroy',
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    height:
                        34 / 28, // Calculating line height based on fontSize
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
