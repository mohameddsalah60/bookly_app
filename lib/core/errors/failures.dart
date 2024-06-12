import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  const Failure(this.errorMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errorMessage);
  factory ServerFailure.fromDioError(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout with ApiServer');
      case DioExceptionType.sendTimeout:
        return ServerFailure(
            'Send timeout with ApiServer'); // لو العمليه اخدت وقت وهو بيسند داتا
      case DioExceptionType.receiveTimeout:
        return ServerFailure(
            'Send timeout with ApiServer'); // لو العمليه اخدت وقت وهو بيستقبل داتا
      case DioExceptionType.badCertificate:
        return ServerFailure(
            'Sorry, we cannot connect to the server due to a security certificate issue.'); // لو السيرفر غير امن او مش موثوق
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioException.response!.statusCode!,
            dioException
                .response!.data); // لو فيه مشكله من السيرفر او الريكويست
      case DioExceptionType.cancel:
        return ServerFailure(
            'The request was cancelled. Please try again.'); // لو الريكويست اتكنسل

      case DioExceptionType.connectionError:
        return ServerFailure(
            'There was a connection error. Please check your internet connection and try again.'); // لو السيرفر غير امن او مش موثوق

      case DioExceptionType.unknown:
        return ServerFailure(
            'An unknown error occurred. Please try again later.'); // لو حصلت مشكله مش معروفه وغير المشاكل الي فوق
      default:
        return ServerFailure(
            'An unexpected error occurred. Please try again later.'); // لو مشكله غير باقي المشاكل الي فوق تبقي دي الديفولت
    }
  }
  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      // لو فيه مشكله من السيرفر او الريكويست
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      // لو فيه مشكله النوت فاوند
      return ServerFailure('Your request not found, plaese try later!');
    } else if (statusCode == 500) {
      return ServerFailure('Internal Server error, try later!');
    } else {
      return ServerFailure(
          'Oops There was an error, try agin!'); // لو فيه مشكله غير المشاكل الي حصلت دي من السيرفر او الريكوست
    }
  }
}
