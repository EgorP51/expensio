import 'package:equatable/equatable.dart';
import 'package:expensio/app/core/data/data_sources/monobank_datasource.dart';
import 'package:expensio/app/core/data/models/monobank_finance.dart';
import 'package:expensio/app/core/di/di.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'statistics_event.dart';

part 'statistics_state.dart';

class StatisticsBloc extends Bloc<StatisticsEvent, StatisticsState> {
  final _monobankDatasource = locator.get<MonobankDatasource>();

  StatisticsBloc() : super(const StatisticsState()) {
    on<InitialEvent>((event, emit) async {
      final list = await _initialEvent(event, emit);
      emit(
        state.copyWith(
          isLoading: false,
          financialExpenses: list,
        ),
      );
    });
  }

  Future<List<MonobankFinance>?> _initialEvent(
    InitialEvent event,
    Emitter<StatisticsState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));

    try {
      return await _monobankDatasource.getFinancialStatement({
        'account': '0',
        'from': '1694326281',
      });
    } catch (e) {
      return [];
    }
  }
}
