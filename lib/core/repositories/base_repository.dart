import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:qclay/core/failures.dart';
import 'package:qclay/core/network/network_info.dart';

class BaseRepository {
  final NetworkInfo networkInfo;

  BaseRepository(this.networkInfo);

  Future<Either<M, Failure>> sendRequest<M>(Future<HttpResponse<M?>> request) async {
    if (await networkInfo.isConnected) {
      try {
        HttpResponse<M?> result = await request;
        int? code = result.response.statusCode;
        if (code.toString().startsWith('2')) {
          return Left(result.data);
        } else {
          return Right(Failure.request(
            code: code,
            error: result.response.statusMessage,
          ));
        }
      } on DioError catch (error) {
        print(error.stackTrace?.toString());
        return Right(Failure.request(code: error.response?.statusCode, error: error.response?.statusMessage));
      } catch (error) {
        print(error.toString());

        return Right(Failure.undefined(error: error));
      }
    } else {
      return Right(Failure.network());
    }
  }
}
