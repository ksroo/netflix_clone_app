import 'package:dartz/dartz.dart';
import 'package:netflix/features/auth/domain/repositories/auth_repo.dart';

import '../datasources/auth_datasource.dart';

class AuthRepoImpl implements AuthRepo {
  final AuthDatasource authDatasource;

  AuthRepoImpl({required this.authDatasource});

  @override
  Future<Either> signUp({
    required String email,
    required String password,
  }) async {
    return await authDatasource.signUp(email: email, password: password);
  }
}
