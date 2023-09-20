import 'package:dio/dio.dart';
import 'package:expensio/app/core/data/data_sources/monobank_datasource.dart';
import 'package:expensio/app/core/data/finance_service.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

final locator = GetIt.I;

var dio = Dio(
  BaseOptions(
    receiveDataWhenStatusError: true,
    baseUrl: 'https://api.monobank.ua/personal/statement',
    headers: {'X-Token': '${dotenv.env['X-Token']}'}
  ),
);

final FinanceService _financeService = FinanceService(dio);

void configureDependencies() {
  locator.registerSingleton<MonobankDatasource>(
      MonobankDatasourceImplementation(_financeService));
}
