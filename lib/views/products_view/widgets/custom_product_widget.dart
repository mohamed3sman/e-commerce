import 'package:flutter/material.dart';

import 'product_details.dart';

class CustomProductWidget extends StatelessWidget {
  const CustomProductWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Container(
        width: 200,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(5)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 0.01,
              blurRadius: 5,
              offset: Offset(0, 1), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 0),
              child: Container(
                width: double.infinity,
                color: const Color(0xffecf0f3),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Image.asset(
                    'assets/images/iphone.png',
                    height: 150,
                  ),
                ),
              ),
            ),
            const ProductDetails(),
          ],
        ),
      ),
    );
  }
}
