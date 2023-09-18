part of 'statistics_bloc.dart';

class StatisticsState extends Equatable {
  final List<MonobankFinance>? financialExpenses;
  final bool? isLoading;

  const StatisticsState({
    this.financialExpenses,
    this.isLoading = false,
  });

  StatisticsState copyWith({
    List<MonobankFinance>? financialExpenses,
    bool? isLoading,
  }) {
    return StatisticsState(
      financialExpenses: financialExpenses ?? this.financialExpenses,
      isLoading: isLoading ?? this.isLoading,
    );
  }

  @override
  List<Object?> get props {
    return [
      financialExpenses,
      isLoading,
    ];
  }
}
