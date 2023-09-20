part of 'statistics_bloc.dart';

class StatisticsState extends Equatable {
  final List<MonobankFinance>? financialExpenses;
  final bool? isLoading;
  final int daysCount;
  final List<ChartData>? chartData;

  const StatisticsState({
    this.financialExpenses,
    this.isLoading = false,
    this.daysCount = 7,
    this.chartData,
  });

  StatisticsState copyWith({
    List<MonobankFinance>? financialExpenses,
    bool? isLoading,
    int? daysCount,
    List<ChartData>? chartData,
  }) {
    return StatisticsState(
      financialExpenses: financialExpenses ?? this.financialExpenses,
      isLoading: isLoading ?? this.isLoading,
      daysCount: daysCount ?? this.daysCount,
      chartData: chartData ?? this.chartData,
    );
  }

  @override
  List<Object?> get props {
    return [
      financialExpenses,
      isLoading,
      daysCount,
      chartData,
    ];
  }
}
