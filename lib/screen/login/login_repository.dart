import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:flutter/foundation.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:training_task/core/base_url.dart';
import 'package:training_task/screen/login/model/login_payload_model.dart';
import 'package:training_task/screen/login/model/login_response_model.dart';

class LogInRepository {
  final dio = Dio();

  Future<Either<String, LoginResponseModel>> login(
      LoginPayloadModel model) async {
    try {
      if (!kIsWeb) {
        bool isNeworkConnectionFound =
            await InternetConnectionChecker().hasConnection;
        if (!isNeworkConnectionFound) {
          return const Left("no_internet_connection_found");
        }
      }

      final response = await dio.post(
        ApiBaseUrl.loginUrl,
        data: model,
      );

      return Right(LoginResponseModel.fromJson(response.data));
    } on DioError catch (e) {
      return Left(e.toString());
    } catch (dioError) {
      return Left(dioError.toString());
    }
  }
}
