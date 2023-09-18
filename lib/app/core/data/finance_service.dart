import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'models/monobank_finance.dart';

part 'finance_service.g.dart';

@RestApi()
abstract class FinanceService {
  factory FinanceService(Dio dio) = _FinanceService;

  @GET('{url}')
  Future<MonobankFinance> getMonobankData(
    @Query('param1') int account,
    @Query('param2') String from,
  );
}
