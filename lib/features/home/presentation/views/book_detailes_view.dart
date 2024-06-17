import 'package:bookly_app/core/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/manger/detalies_books_cubit/detalies_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/book_detailes_view_body.dart';

class BookDetailesView extends StatefulWidget {
  const BookDetailesView({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  State<BookDetailesView> createState() => _BookDetailesViewState();
}

class _BookDetailesViewState extends State<BookDetailesView> {
  @override
  void initState() {
    BlocProvider.of<DetaliesBooksCubit>(context).fetchSimilarBooks(
        category: widget.bookModel.volumeInfo.categories![0]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: BookDetailesViewBody(
        bookModel: widget.bookModel,
      )),
    );
  }
}
