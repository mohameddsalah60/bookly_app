import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_list_view_item.dart';
import 'package:bookly_app/features/search/presentation/manger/search_book_cubit/search_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBookCubit, SearchBookState>(
      builder: (context, state) {
        if (state is SearchBookSuccess) {
          return ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: state.list.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: BookListViewItem(
                  bookModel: state.list[index],
                ),
              );
            },
          );
        } else if (state is SearchBookFailure) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else if (state is SearchBookInitial) {
          return const Center(
            child: Text(
              'Start Search!',
              style: Styles.styleBold20,
            ),
          );
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
