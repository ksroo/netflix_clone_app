import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:netflix/core/services/api_service.dart';

abstract class AuthDatasource {
  Future<Either> signUp({
    required String email,
    required String password,
  });
}

class AuthDatasourceImpl implements AuthDatasource {
  AuthDatasourceImpl(this.apiService);

  final ApiService apiService;

  @override
  Future<Either> signUp({
    required String email,
    required String password,
  }) async {
    try {
      final response = await apiService.signUp({
        'email': email,
        'password': password,
      });

      return Right(response);
    } on DioException catch (e) {
      return Left(e.response!.data['message']);
    }
  }
}
