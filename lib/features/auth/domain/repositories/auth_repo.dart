import 'package:dartz/dartz.dart';

abstract class AuthRepo {
  Future<Either> signUp({
    required String email,
    required String password,
  });
}
