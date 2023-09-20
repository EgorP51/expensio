import 'package:equatable/equatable.dart';
import 'package:expensio/app/core/data/data_sources/monobank_datasource.dart';
import 'package:expensio/app/core/data/models/monobank_finance.dart';
import 'package:expensio/app/core/di/di.dart';
import 'package:expensio/app/core/utils/chart_data/chart_data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'statistics_event.dart';

part 'statistics_state.dart';

class StatisticsBloc extends Bloc<StatisticsEvent, StatisticsState> {
  final _monobankDatasource = locator.get<MonobankDatasource>();

  StatisticsBloc() : super(const StatisticsState()) {
    on<InitialEvent>((event, emit) async {
      emit(await _initialEvent(event, emit));
    });

    on<ChangeDayCount>((event, emit) {
      emit(state.copyWith(daysCount: event.daysCount));
      add(InitialEvent());
    });
  }

  Future<StatisticsState> _initialEvent(
      InitialEvent event, Emitter<StatisticsState> emit) async {
    emit(state.copyWith(isLoading: true));

    final monobankFinanceList = await getMonobankFinanceList();
    final chartDataList = initializationChartData(monobankFinanceList);

    return state.copyWith(
      isLoading: false,
      financialExpenses: monobankFinanceList,
      chartData: chartDataList,
    );
  }

  Future<List<MonobankFinance>?> getMonobankFinanceList() async {
    try {
      return await _monobankDatasource.getFinancialStatement({
        'account': '0',
        'from': '${getUnixTimeForPreviousDay(state.daysCount)}',
      });
    } catch (e) {
      return [];
    }
  }

  List<ChartData> initializationChartData(financialExpenses) {
    Map<int, double> categorySumMap = {};
    final List<ChartData> chartData = [];

    for (var transaction in financialExpenses ?? []) {
      var mcc = transaction.mcc;
      var amount = (transaction.amount ?? 0) / 100;

      if (amount < 0) {
        if (categorySumMap.containsKey(mcc)) {
          categorySumMap[mcc ?? 0] = categorySumMap[mcc]! + amount;
        } else {
          categorySumMap[mcc ?? 0] = amount;
        }
      }
    }

    categorySumMap.forEach((category, amount) {
      chartData.add(ChartData(category, amount));
    });

    //chartData.sort((a, b) => a.y.compareTo(b.y));

    return chartData;
  }

  int getUnixTimeForPreviousDay(int n) {
    DateTime targetDate = DateTime.now().subtract(Duration(days: n));
    return targetDate.millisecondsSinceEpoch ~/ 1000;
  }
}
