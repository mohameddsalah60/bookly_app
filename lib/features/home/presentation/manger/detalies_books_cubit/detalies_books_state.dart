part of 'detalies_books_cubit.dart';

sealed class DetaliesBooksState extends Equatable {
  const DetaliesBooksState();

  @override
  List<Object> get props => [];
}

final class DetaliesBooksInitial extends DetaliesBooksState {}

final class DetaliesBooksLoading extends DetaliesBooksState {}

final class DetaliesBooksSuccess extends DetaliesBooksState {
  final List<BookModel> list;

  const DetaliesBooksSuccess({required this.list});
}

final class DetaliesBooksFailure extends DetaliesBooksState {
  final String errorMessage;

  const DetaliesBooksFailure({required this.errorMessage});
}
