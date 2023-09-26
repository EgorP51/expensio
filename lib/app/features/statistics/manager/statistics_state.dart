part of 'statistics_bloc.dart';

class StatisticsState extends Equatable {
  final List<MonobankFinance>? financialExpenses;
  final bool? isLoading;
  final int daysCount;
  final double periodicExpenses;
  final List<ChartData>? allChartData;
  final List<ChartData>? dailyChartData;

  const StatisticsState({
    this.financialExpenses,
    this.isLoading = false,
    this.daysCount = Constants.defaultDaysNumber,
    this.periodicExpenses = 0.0,
    this.allChartData,
    this.dailyChartData,
  });

  StatisticsState copyWith({
    List<MonobankFinance>? financialExpenses,
    bool? isLoading,
    int? daysCount,
    double? periodicExpenses,
    List<ChartData>? allChartData,
    List<ChartData>? dailyChartData,
  }) {
    return StatisticsState(
      financialExpenses: financialExpenses ?? this.financialExpenses,
      isLoading: isLoading ?? this.isLoading,
      daysCount: daysCount ?? this.daysCount,
      allChartData: allChartData ?? this.allChartData,
      dailyChartData: dailyChartData ?? this.dailyChartData,
      periodicExpenses: periodicExpenses ?? this.periodicExpenses,
    );
  }

  @override
  List<Object?> get props {
    return [
      financialExpenses,
      isLoading,
      daysCount,
      allChartData,
      dailyChartData,
      periodicExpenses,
    ];
  }
}
