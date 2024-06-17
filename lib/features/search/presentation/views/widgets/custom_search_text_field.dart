import 'package:bookly_app/core/functions/custom_snack%20_bar.dart';
import 'package:bookly_app/features/search/presentation/manger/search_book_cubit/search_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatefulWidget {
  const CustomSearchTextField({super.key});

  @override
  State<CustomSearchTextField> createState() => _CustomSearchTextFieldState();
}

class _CustomSearchTextFieldState extends State<CustomSearchTextField> {
  String? data;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) {
        if (value.isNotEmpty) {
          data = value;
        }
      },
      decoration: InputDecoration(
        suffixIcon: IconButton(
          onPressed: () {
            if (data != null) {
              BlocProvider.of<SearchBookCubit>(context)
                  .fetchSearchBooks(text: data!);
            } else {
              customSnackBar(context, 'pls enter value');
            }
          },
          icon: const Icon(
            FontAwesomeIcons.magnifyingGlass,
            color: Colors.white,
            size: 22,
          ),
        ),
        hintText: 'Search',
        border: buildOutlineInputBorder(),
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(
        color: Colors.white,
      ),
      borderRadius: BorderRadius.circular(8),
    );
  }
}
