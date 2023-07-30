import 'package:flutter/material.dart';
import 'package:pure_commerce/views/order_placed_view/widgets/order_placed_container.dart';

class OrderPlacedBody extends StatelessWidget {
  const OrderPlacedBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        OrderPlacedContainer(),
      ],
    );
  }
}
