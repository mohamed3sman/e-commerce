import 'package:flutter/material.dart';
import 'package:pure_commerce/constants/constants.dart';
import 'package:order_tracker/order_tracker.dart';
import 'package:pure_commerce/views/products_view/product_view.dart';

import 'shipping_address_and_payment.dart';

class TrackingViewContainer extends StatefulWidget {
  const TrackingViewContainer({super.key});

  @override
  State<TrackingViewContainer> createState() => _TrackingViewContainerState();
}

class _TrackingViewContainerState extends State<TrackingViewContainer> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(top: 120),
        child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25), topRight: Radius.circular(25)),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/iphone.png',
                        width: 120,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Iphone 14 Pro\nMax 2023',
                            style: TextStyle(
                                fontSize: 21, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            'Price',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            '\$749.99',
                            style: TextStyle(
                                color: kPrimaryColor,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const ShippingAddressAndPayment(),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: OrderTracker(
                      status: Status.outOfDelivery,
                      activeColor: kSecondryColor,
                      inActiveColor: Colors.grey[300],
                    ),
                  ),
                  const Spacer(),
                  MaterialButton(
                    minWidth: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    color: kPrimaryColor,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const ProductView();
                      }));
                    },
                    child: const Text(
                      'Home',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
