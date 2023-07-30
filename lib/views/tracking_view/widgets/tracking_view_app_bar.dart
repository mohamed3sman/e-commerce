import 'package:flutter/material.dart';

class TrackingViewAppBar extends StatelessWidget {
  const TrackingViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Colors.white,
                size: 28,
              ),
            ),
            const Text(
              'Track Package',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
              ),
            ),
            const Icon(
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
