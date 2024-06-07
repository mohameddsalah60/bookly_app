import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.6 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      'https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg'),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 35,
          ),
          const Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Harry Potter and the Goblet of Fire',
                  style: Styles.styleRegular20,
                  maxLines: 2,
                ),
                Text(
                  'J.K. Rowling',
                  style: Styles.styleMeduim14,
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Text(
                      '19.99 €',
                      style: Styles.styleBold20,
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
