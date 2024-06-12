import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'books_action.dart';
import 'custombook_detailes_app_bar.dart';
import 'similar_books_list_view.dart';

class BookDetailesViewBody extends StatelessWidget {
  const BookDetailesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CustomBookDetailesAppBar(),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 40,
                    horizontal: width * .2,
                  ),
                  child: const CustomBookImage(
                    imageUrl:
                        'https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg',
                  ),
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
                const SizedBox(
                  height: 16,
                ),
                const BookRating(
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
                const SizedBox(
                  height: 40,
                ),
                const BooksAction(),
                const Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'You can also like',
                      style: Styles.styleSemiBold22.copyWith(fontSize: 14),
                    )),
                const SizedBox(
                  height: 16,
                ),
                const SimilarBooksListView(),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
