import 'package:auto_route/auto_route.dart';
import 'package:expensio/app/features/home/presentation/home_screen.dart';
import 'package:expensio/app/features/statistics/presentation/screens/self_entry_finance_screen.dart';
import 'package:expensio/app/features/statistics/presentation/screens/statistics_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes {
    return [
      AutoRoute(
        page: HomeRoute.page,
        path: '/',
        children: <AutoRoute>[
          AutoRoute(
            page: FinanceListRoute.page,
          ),
          AutoRoute(
            page: StatisticsRoute.page,
          ),
        ],
      )
    ];
  }
}
