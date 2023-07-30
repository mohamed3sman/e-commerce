import 'package:flutter/material.dart';
import 'package:pure_commerce/constants/constants.dart';
import 'package:pure_commerce/views/products_view/widgets/product_view_body.dart';

class ProductView extends StatelessWidget {
  const ProductView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: const ProductViewBody(),
    );
  }
}
