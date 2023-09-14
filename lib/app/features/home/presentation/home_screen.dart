import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../self_entry_finance/presentation/screens/self_entry_finance_screen.dart';

@RoutePage(name: 'HomeRoute')
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SelfEntryFinanceScreen();
    // TODO: remove in future!!!
    // return AutoTabsRouter.pageView(
    //   routes: const [SelfEntryFinanceRoute()],
    //   builder: (context, child, _) {
    //     final tabsRouter = AutoTabsRouter.of(context);
    //     return Scaffold(
    //       body: child,
    //       bottomNavigationBar: BottomNavigationBar(
    //         currentIndex: tabsRouter.activeIndex,
    //         onTap: tabsRouter.setActiveIndex,
    //         items: const [
    //           BottomNavigationBarItem(
    //             label: 'summary',
    //             icon: Icon(Icons.monetization_on_sharp),
    //           ),
    //         ],
    //       ),
    //     );
    //   },
    // );
  }
}
