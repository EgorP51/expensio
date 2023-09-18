import 'package:expensio/app/core/data/finance_service.dart';
import 'package:expensio/app/core/data/models/monobank_finance.dart';

abstract class MonobankDatasource {
  Future<List<MonobankFinance>?> getFinancialStatement(
      Map<String, String> params);
}

class MonobankDatasourceImplementation implements MonobankDatasource {
  final FinanceService _financeService;

  MonobankDatasourceImplementation(this._financeService);

  @override
  Future<List<MonobankFinance>?> getFinancialStatement(
      Map<String, String> params) {
    // TODO: check what to do
    return _financeService
        .getMonobankData('/${params['account']}/${params['from']}');
  }
}
