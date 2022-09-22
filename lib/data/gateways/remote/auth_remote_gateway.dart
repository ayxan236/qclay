import 'dart:convert';
import 'dart:io';
import 'package:qclay/domain/dto/response/base_response.dart';
import 'package:qclay/domain/dto/response/token_response.dart';
import 'package:qclay/domain/dto/response/user_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'auth_remote_gateway.g.dart';

@RestApi()
abstract class AuthRemoteGateway {
  factory AuthRemoteGateway({required Dio dio, String? baseUrl}) {
    final apiClient = _AuthRemoteGateway(dio, baseUrl: baseUrl);
    return apiClient;
  }

  @POST('/auth/login')
  @MultiPart()
  Future<HttpResponse<BaseResponse<TokenResponse>>> login({
    @Part(name: "login") required String login,
    @Part(name: "password") required String password,
  });

  @GET('/auth/logout')
  Future<HttpResponse<String>> logout({
    @Header("Authorization") required String token,
  });

  @POST('/auth/restore')
  @MultiPart()
  Future<HttpResponse<String>> restorePassword({
    @Part(name: "email") required String email,
  });
}
