import 'package:flutter/material.dart';
import 'package:pure_commerce/constants/constants.dart';

import 'widgets/tracking_view_body.dart';

class TrackingView extends StatelessWidget {
  const TrackingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: const TrackingViewBody(),
    );
  }
}
