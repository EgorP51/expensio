import 'package:expensio/app/core/data/finance_service.dart';
import 'package:expensio/app/core/data/models/monobank_finance.dart';

abstract class MonobankDatasource {
  Future<MonobankFinance> getFinancialStatement(Map<String, String> params);
}

class MonobankDatasourceImplementation implements MonobankDatasource {
  final FinanceService _financeService;

  MonobankDatasourceImplementation(this._financeService);

  @override
  Future<MonobankFinance> getFinancialStatement(Map<String, dynamic> params) {
    return _financeService.getMonobankData(params['account'], params['from']);
  }
}
