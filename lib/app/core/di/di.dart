import 'package:dio/dio.dart';
import 'package:expensio/app/core/data/finance_service.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.I;

var dio = Dio(
  BaseOptions(
    receiveDataWhenStatusError: true,
    // connectTimeout: AppConstants.dioDurationTimeout,
    // receiveTimeout: AppConstants.dioDurationTimeout,
    // sendTimeout: AppConstants.dioDurationTimeout,
    // contentType: 'application/json; charset=utf-8',
    // baseUrl: env.baseUrl,
  ),
);

void configureDependencies() {
  locator.registerSingleton<FinanceService>(FinanceService(dio));
}
