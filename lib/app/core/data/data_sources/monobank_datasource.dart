import 'package:dio/dio.dart';
import 'package:expensio/app/core/data/finance_service.dart';
import 'package:expensio/app/core/data/models/monobank_finance.dart';

abstract class MonobankDatasource {
  Future<List<MonobankFinance>?> getFinancialStatement(
      Map<String, String> params);
}

class MonobankDatasourceImplementation implements MonobankDatasource {
  final FinanceService _financeService;

  MonobankDatasourceImplementation(this._financeService);

  Future<List<MonobankFinance>?> _getFinancialStatement(
    Map<String, String> params,
    int maxRetries,
  ) async {
    List<MonobankFinance>? result;
    for (int i = 0; i < maxRetries; i++) {
      try {
        result = await _financeService
            .getMonobankData('/${params['account']}/${params['from']}');
        break;
      } catch (e) {
        if (i < maxRetries - 1 &&
            e is DioException &&
            e.response?.statusCode == 429 && result == null) {
          await Future.delayed(Duration(seconds: 5 * (i + 1)));
        }
      }
    }
    return result;
  }

  @override
  Future<List<MonobankFinance>?> getFinancialStatement(
      Map<String, String> params) {
    return _getFinancialStatement(params, 3);
  }
}

// class MonobankDatasourceImplementation implements MonobankDatasource {
//   final FinanceService _financeService;
//
//   MonobankDatasourceImplementation(this._financeService);
//
//   @override
//   Future<List<MonobankFinance>?> getFinancialStatement(
//       Map<String, String> params) {
//     // TODO: check what to do
//     return _financeService
//         .getMonobankData('/${params['account']}/${params['from']}');
//   }
// }
