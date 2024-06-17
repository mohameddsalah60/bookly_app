import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'detalies_books_state.dart';

class DetaliesBooksCubit extends Cubit<DetaliesBooksState> {
  DetaliesBooksCubit(this.homeRepo) : super(DetaliesBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchSimilarBooks({required String category}) async {
    emit(DetaliesBooksLoading());
    var result = await homeRepo.fetchSimilarBooks(category: category);
    result.fold(
      (failure) {
        emit(
          DetaliesBooksFailure(errorMessage: failure.errorMessage),
        );
      },
      (books) {
        emit(
          DetaliesBooksSuccess(list: books),
        );
      },
    );
  }
}
