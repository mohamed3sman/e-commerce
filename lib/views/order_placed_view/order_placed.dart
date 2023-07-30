import 'package:flutter/material.dart';
import 'package:pure_commerce/constants/constants.dart';

import 'widgets/order_placed_body.dart';

class OrderPlaced extends StatelessWidget {
  const OrderPlaced({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: const OrderPlacedBody(),
    );
  }
}
