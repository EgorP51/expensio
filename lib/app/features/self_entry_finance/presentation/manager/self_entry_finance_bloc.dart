import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';




part 'self_entry_finance_event.dart';
part 'self_entry_finance_state.dart';

class SelfEntryFinanceBloc extends Bloc<SelfEntryFinanceEvent, SelfEntryFinanceState> {
  SelfEntryFinanceBloc() : super(SelfEntryFinanceInitial()) {
    on<SelfEntryFinanceEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
