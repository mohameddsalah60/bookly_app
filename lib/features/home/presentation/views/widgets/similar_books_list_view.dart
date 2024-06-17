import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/features/home/presentation/manger/detalies_books_cubit/detalies_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'custom_book_image.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetaliesBooksCubit, DetaliesBooksState>(
      builder: (context, state) {
        if (state is DetaliesBooksSuccess) {
          return SizedBox(
            height: MediaQuery.sizeOf(context).height * .15,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.list.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: GestureDetector(
                    onTap: () {
                      GoRouter.of(context).pushReplacement(
                          AppRouter.kBookDetailesView,
                          extra: state.list[index]);
                    },
                    child: CustomBookImage(
                      imageUrl:
                          state.list[index].volumeInfo.imageLinks?.thumbnail ??
                              "",
                    ),
                  ),
                );
              },
            ),
          );
        } else if (state is DetaliesBooksFailure) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
