import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

import 'widgets/book_detailes_view_body.dart';

class BookDetailesView extends StatelessWidget {
  const BookDetailesView({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: BookDetailesViewBody()),
    );
  }
}
