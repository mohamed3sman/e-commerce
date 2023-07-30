import 'package:flutter/material.dart';

class SmartPhoneViewAppBar extends StatelessWidget {
  const SmartPhoneViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Padding(
        padding: EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.white,
              size: 28,
            ),
            Text(
              'Smartphone',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
              ),
            ),
            Icon(
              Icons.search,
              color: Colors.white,
              size: 28,
            )
          ],
        ),
      ),
    );
  }
}
