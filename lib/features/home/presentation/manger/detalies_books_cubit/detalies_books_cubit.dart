import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'detalies_books_state.dart';

class DetaliesBooksCubit extends Cubit<DetaliesBooksState> {
  DetaliesBooksCubit() : super(DetaliesBooksInitial());
}
