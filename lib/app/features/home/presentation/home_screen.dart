import 'package:auto_route/auto_route.dart';
import 'package:expensio/app/core/navigation/app_router.dart';
import 'package:expensio/app/features/statistics/manager/statistics_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage(name: 'HomeRoute')
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.pageView(
      routes: const [
        StatisticsRoute(),
        FinanceListRoute(),
      ],
      builder: (context, child, _) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          body: BlocProvider<StatisticsBloc>(
            create: (context) => StatisticsBloc()..add(InitialEvent()),
            child: child,
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            items: const [
              BottomNavigationBarItem(
                label: 'StatisticsRoute',
                icon: Icon(Icons.query_stats),
              ),
              BottomNavigationBarItem(
                label: 'FinanceListRoute',
                icon: Icon(Icons.monetization_on_sharp),
              ),
            ],
          ),
        );
      },
    );
  }
}
