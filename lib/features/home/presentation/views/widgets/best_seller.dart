import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'best_seller_list_view_item.dart';

class BestSeller extends StatelessWidget {
  const BestSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Best Seller',
            style: Styles.styleSemiBold22,
          ),
          SizedBox(height: 24),
          BestSellerListViewItem(),
        ],
      ),
    );
  }
}
