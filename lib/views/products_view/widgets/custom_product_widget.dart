import 'package:flutter/material.dart';
import 'package:pure_commerce/constants/constants.dart';

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
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Iphone 14 pro\nmax',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Icon(
                          Icons.star_rate_rounded,
                          color: Colors.amber,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          '\$749',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(
                          width: 40,
                        ),
                        Text(
                          'Add to cart',
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
