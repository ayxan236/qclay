import 'dart:convert';
import 'dart:io';
import 'package:qclay/domain/dto/response/base_response.dart';
import 'package:qclay/domain/dto/response/user_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'user_remote_gateway.g.dart';

@RestApi()
abstract class UserRemoteGateway {
  factory UserRemoteGateway({required Dio dio, String? baseUrl}) {
    final apiClient = _UserRemoteGateway(dio, baseUrl: baseUrl);
    return apiClient;
  }


}
