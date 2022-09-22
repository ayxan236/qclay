import 'package:qclay/domain/dto/response/token_response.dart';
import 'package:qclay/domain/dto/response/user_response.dart';

class BaseResponse<M> {
  BaseResponse({
    this.data,
    this.success = false,
  });

  M? data;
  bool success;

  factory BaseResponse.fromJson(Map<String, dynamic> json) => BaseResponse(
        data: _dataFromJson(json, M),
      );

  static I _dataFromJson<I>(json, Type type) {
    if (type == UserResponse) {
      return UserResponse.fromJson(json) as I;
    }
    if (type == TokenResponse) {
      return TokenResponse.fromJson(json) as I;
    }
  

    return json as I;
  }
}
