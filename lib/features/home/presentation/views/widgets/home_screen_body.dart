import 'package:flutter/material.dart';

import 'best_seller.dart';
import 'custom_app_bar.dart';
import 'featured_list_view.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppBar(),
        FeaturedListView(),
        SizedBox(
          height: 50,
        ),
        BestSeller(),
      ],
    );
  }
}
