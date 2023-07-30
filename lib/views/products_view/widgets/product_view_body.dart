import 'package:flutter/material.dart';
import 'package:pure_commerce/views/products_view/widgets/smart_phone_app_bar.dart';
import 'custom_product_container.dart';

class ProductViewBody extends StatefulWidget {
  const ProductViewBody({super.key});

  @override
  State<ProductViewBody> createState() => _ProductViewBodyState();
}

class _ProductViewBodyState extends State<ProductViewBody> {
  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        SmartPhoneViewAppBar(),
        SmartPhoneContainer(),
      ],
    );
  }
}
