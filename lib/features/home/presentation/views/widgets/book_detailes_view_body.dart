import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

import 'custombook_detailes_app_bar.dart';

class BookDetailesViewBody extends StatelessWidget {
  const BookDetailesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CustomBookDetailesAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 40,
              horizontal: width * .17,
            ),
            child: const CustomBookImage(),
          ),
          Text(
            'The Jungle Book',
            style: Styles.styleSemiBold22.copyWith(
              fontSize: 30,
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            'Rudyard Kipling',
            style: Styles.styleMeduim14.copyWith(
              fontSize: 18,
              fontStyle: FontStyle.italic,
              color: const Color(0xffFFFFFF).withOpacity(0.70),
            ),
          ),
        ],
      ),
    );
  }
}
