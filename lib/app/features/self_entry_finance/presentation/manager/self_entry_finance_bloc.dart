import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'self_entry_finance_event.dart';
part 'self_entry_finance_state.dart';

class SelfEntryFinanceBloc extends Bloc<SelfEntryFinanceEvent, SelfEntryFinanceState> {
  SelfEntryFinanceBloc() : super(SelfEntryFinanceInitial()) {
    on<SelfEntryFinanceEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
