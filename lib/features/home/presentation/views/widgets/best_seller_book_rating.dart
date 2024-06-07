import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BestSellerBookRating extends StatelessWidget {
  const BestSellerBookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
        ),
        const SizedBox(
          width: 7,
        ),
        Text(
          '4.8',
          style: Styles.styleMeduim14.copyWith(fontSize: 18),
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          '(2390)',
          style: Styles.styleRegular20.copyWith(
              fontSize: 16, color: const Color(0xffFFFFFF).withOpacity(.5)),
        ),
      ],
    );
  }
}
