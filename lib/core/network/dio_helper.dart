import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qclay/data/gateways/local/preferences_local_gateway.dart';
import 'package:retrofit/dio.dart';
import 'package:retrofit/retrofit.dart';


class DioHelper {

  static const baseUrl = 'https://rest.qclay.ru/v2';
  static const url = 'https://rest.qclay.ru/';
  static const domain = 'rest.qclay.ru';
  static const timeout = 30000;

  static Dio getAuthDio() {
    Dio dio = Dio()
      ..interceptors.add(LogInterceptor(
        request: true,
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
        responseBody: true,
        error: true,
      ))
      ..options.headers = {"Accept" : "application/json"}
      ..options.followRedirects = false
      ..options.receiveDataWhenStatusError = true
      ..options.baseUrl = baseUrl
      ..options.sendTimeout = timeout
      ..options.connectTimeout = timeout
      ..options.receiveTimeout = timeout;
    return dio;
  }

  static Dio getDio({
    required PreferencesLocalGateway preferencesLocalGateway,
    // required GlobalKey<NavigatorState> navigatorKey,
  }) {
    Dio dio = Dio()
      ..options.headers = {"Accept" : "application/json"}
      ..options.receiveDataWhenStatusError = true
      ..options.baseUrl = baseUrl
      ..options.sendTimeout = timeout
      ..options.connectTimeout = timeout
      ..options.receiveTimeout = timeout;
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (RequestOptions options, RequestInterceptorHandler handler) async {
          String? token = await preferencesLocalGateway.getToken();
          if (token != null) {
            options.headers.addAll({'Authorization' : "Bearer " + token});
          }
          handler.next(options);
        },
        onResponse: (Response response, ResponseInterceptorHandler handler) async {
          handler.next(response);
        },
        onError: (DioError error, ErrorInterceptorHandler handler) async {
          // if (error.response?.statusCode == 403 ||
          //     (error.response?.data.toString().contains('time experation') ?? false)) {
          //   // dio.interceptors.requestLock.lock();
          //   // dio.interceptors.responseLock.lock();
          //   String? token = await preferencesLocalGateway.getToken();
          //   if (token != null) {
          //     try {
          //       HttpResponse<RefreshTokenResponse> newTokenResponse = await authorizationRemoteGateway.refreshToken(
          //         body: RefreshTokenBody(token: token),
          //       );
          //       String newToken = newTokenResponse.data.data;
          //       await preferencesLocalGateway.setToken(newToken);
          //       Options options = Options(
          //         method: error.requestOptions.method,
          //         headers: error.requestOptions.headers,
          //       );
          //       token = await preferencesLocalGateway.getToken();
          //       options.headers!["Authorization"] = "Bearer " + '$token';
          //       // dio.interceptors.requestLock.unlock();
          //       // dio.interceptors.responseLock.unlock();
          //       return handler.resolve(await dio.request(error.requestOptions.path, options: options));
          //     } on DioError catch (error) {
          //       if (error.response?.statusCode == 403 ||
          //           (error.response?.data.toString().contains('Refresh_token not valid!') ?? false)) {
          //         preferencesLocalGateway.setToken(null);
          //         navigatorKey.currentState!.pushReplacement(
          //           MaterialPageRoute(
          //             settings: RouteSettings(name: '/signIn'),
          //             builder: (BuildContext context) => BlocProvider(
          //               create: (BuildContext context) => SignInBloc(
          //                 localizations: injection(),
          //                 authorizationRepository: injection(),
          //                 preferencesLocalGateway: injection(),
          //               ),
          //               child: SignInScreen(),
          //             ),
          //           ),
          //         );
          //       }
          //     }
          //   } else {
          //     navigatorKey.currentState!.pushReplacement(
          //       MaterialPageRoute(
          //         settings: RouteSettings(name: '/signIn'),
          //         builder: (BuildContext context) => BlocProvider(
          //           create: (BuildContext context) => SignInBloc(
          //             localizations: injection(),
          //             authorizationRepository: injection(),
          //             preferencesLocalGateway: injection(),
          //           ),
          //           child: SignInScreen(),
          //         ),
          //       ),
          //     );
          //   }
          // } else {
          //   handler.next(error);
          // }
          handler.next(error);

        },
      ),

    )
    ;
    dio.interceptors.add(LogInterceptor(
      request: true,
      requestHeader: true,
      requestBody: true,
      responseHeader: true,
      responseBody: true,
      error: true,
    ));
    return dio;
  }
}
