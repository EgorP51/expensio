part of 'statistics_bloc.dart';

abstract class StatisticsEvent extends Equatable {
  const StatisticsEvent();

  @override
  List<Object?> get props => [];
}

class InitialEvent extends StatisticsEvent {}

class ChangeDayCount extends StatisticsEvent {
  final int daysCount;

  const ChangeDayCount(this.daysCount);

  @override
  List<Object?> get props => [daysCount];
}
