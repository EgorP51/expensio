import 'package:auto_route/auto_route.dart';
import 'package:expensio/app/core/navigation/app_router.dart';
import 'package:flutter/material.dart';

@RoutePage(name: 'HomeRoute')
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //return const SelfEntryFinanceScreen();
    //TODO: remove in future!!!
    return AutoTabsRouter.pageView(
      routes: const [
        SelfEntryFinanceRoute(),
        StatisticsRoute(),
      ],
      builder: (context, child, _) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          body: child,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            items: const [
              BottomNavigationBarItem(
                label: 'SelfEntryFinanceRoute',
                icon: Icon(Icons.monetization_on_sharp),
              ),
              BottomNavigationBarItem(
                label: 'StatisticsRoute',
                icon: Icon(Icons.query_stats),
              ),
            ],
          ),
        );
      },
    );
  }
}
