import 'package:flutter/material.dart';
import 'package:pure_commerce/constants/constants.dart';

class OrderPlacedContainer extends StatefulWidget {
  const OrderPlacedContainer({super.key});

  @override
  State<OrderPlacedContainer> createState() => _OrderPlacedContainerState();
}

class _OrderPlacedContainerState extends State<OrderPlacedContainer> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(top: 130),
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25), topRight: Radius.circular(25)),
            color: Colors.white,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(
                flex: 3,
              ),
              Image.asset(
                'assets/images/check-out.png',
                width: 200,
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                'Order Placed Successfully',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Spacer(
                flex: 4,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, bottom: 30),
                child: Row(
                  children: [
                    Expanded(
                      flex: 6,
                      child: MaterialButton(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        color: kPrimaryColor,
                        onPressed: () {},
                        child: const Text(
                          'Track Package',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.home_outlined,
                          color: kPrimaryColor,
                          size: 45,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
