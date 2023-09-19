part of 'statistics_bloc.dart';

class StatisticsState extends Equatable {
  final List<MonobankFinance>? financialExpenses;
  final bool? isLoading;
  final int daysCount;

  const StatisticsState({
    this.financialExpenses,
    this.isLoading = false,
    this.daysCount = 7,
  });

  StatisticsState copyWith({
    List<MonobankFinance>? financialExpenses,
    bool? isLoading,
    int? daysCount,
  }) {
    return StatisticsState(
      financialExpenses: financialExpenses ?? this.financialExpenses,
      isLoading: isLoading ?? this.isLoading,
      daysCount: daysCount ?? this.daysCount,
    );
  }

  @override
  List<Object?> get props {
    return [
      financialExpenses,
      isLoading,
      daysCount,
    ];
  }
}
