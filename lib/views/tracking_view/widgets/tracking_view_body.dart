import 'package:flutter/material.dart';
import 'package:pure_commerce/views/tracking_view/widgets/tracking_view_app_bar.dart';
import 'package:pure_commerce/views/tracking_view/widgets/tracking_view_container.dart';

class TrackingViewBody extends StatelessWidget {
  const TrackingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        TrackingViewAppBar(),
        TrackingViewContainer(),
      ],
    );
  }
}
