import 'package:flutter/material.dart';

import 'custombook_detailes_app_bar.dart';

class BookDetailesViewBody extends StatelessWidget {
  const BookDetailesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          CustomBookDetailesAppBar(),
        ],
      ),
    );
  }
}
