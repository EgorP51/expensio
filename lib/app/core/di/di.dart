import 'package:dio/dio.dart';
import 'package:expensio/app/core/data/data_sources/monobank_datasource.dart';
import 'package:expensio/app/core/data/finance_service.dart';
import 'package:expensio/app/core/di/config.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.I;

var dio = Dio(
  BaseOptions(
    receiveDataWhenStatusError: true,
    // connectTimeout: AppConstants.dioDurationTimeout,
    // receiveTimeout: AppConstants.dioDurationTimeout,
    // sendTimeout: AppConstants.dioDurationTimeout,
    // contentType: 'application/json; charset=utf-8',
    baseUrl: 'https://api.monobank.ua/personal/statement',
    // TODO: hide x-token!!!!
    headers: {'X-Token': xtoken}
  ),
);

final FinanceService _financeService = FinanceService(dio);

void configureDependencies() {
  locator.registerSingleton<MonobankDatasource>(
      MonobankDatasourceImplementation(_financeService));
}
