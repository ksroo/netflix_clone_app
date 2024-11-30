import 'package:dio/dio.dart';
import 'package:netflix/core/services/endpoints.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

@RestApi()
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(EndPoints.signup)
  Future signUp(
    @Body() Map<String, dynamic> signUpBody,
  );
}
