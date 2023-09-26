import 'package:equatable/equatable.dart';
import 'package:expensio/app/core/constants/constants.dart';
import 'package:expensio/app/core/data/data_sources/monobank_datasource.dart';
import 'package:expensio/app/core/data/models/monobank_finance.dart';
import 'package:expensio/app/core/di/di.dart';
import 'package:expensio/app/core/utils/chart_data/chart_data.dart';
import 'package:expensio/app/core/utils/time_utils.dart';
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
    InitialEvent event,
    Emitter<StatisticsState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));

    final monobankFinanceList = await getMonobankFinanceList();
    final chartDataList = initializationChartData(monobankFinanceList);
    final dailyChartData = getDailyChartData(monobankFinanceList);
    final periodicExpenses = getPeriodicExpenses(monobankFinanceList);

    return state.copyWith(
      isLoading: false,
      financialExpenses: monobankFinanceList,
      allChartData: chartDataList,
      dailyChartData: dailyChartData,
      periodicExpenses: periodicExpenses,
    );
  }

  double getPeriodicExpenses(
    List<MonobankFinance>? financialExpenses,
  ) {
    int sum = 0;

    financialExpenses?.forEach((element) {
      if ((element.amount ?? 0) < 0) {
        sum += element.amount ?? 0;
      }
    });

    return sum / 100;
  }

  Future<List<MonobankFinance>?> getMonobankFinanceList() async {
    try {
      int dateCount = state.daysCount != 1 ? state.daysCount : 0;
      int from = TimeUtils().getUnixTimeForPreviousDay(dateCount);

      final response = await _monobankDatasource.getFinancialStatement({
        'account': '0',
        'from': '$from',
      });

      response;

      return response;
    } catch (e) {
      return [];
    }
  }

  List<ChartData> initializationChartData(
    List<MonobankFinance>? financialExpenses,
  ) {
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

    if (chartData.isEmpty) {
      chartData.add(ChartData(0, 1.0));
    }

    chartData.sort((a, b) => a.x.compareTo(b.x));

    return chartData;
  }

  List<ChartData> getDailyChartData(
    List<MonobankFinance>? financialExpenses,
  ) {
    List<ChartData> chartData = [];
    DateTime currentDate = DateTime.now();

    for (MonobankFinance transaction in financialExpenses ?? []) {
      if (transaction.time != null) {
        var transactionDate = DateTime.fromMillisecondsSinceEpoch(
          transaction.time! * 1000,
        );

        if (currentDate.year == transactionDate.year &&
            currentDate.month == transactionDate.month &&
            currentDate.day == transactionDate.day) {
          var mcc = transaction.mcc;
          var amount = (transaction.amount ?? 0) / 100;
          chartData.add(ChartData(mcc ?? 0, amount));
        }
      }
    }
    if (chartData.isEmpty) {
      chartData.add(ChartData(0, 1.0));
    }

    chartData.sort((a, b) => a.x.compareTo(b.x));

    return chartData;
  }
}
