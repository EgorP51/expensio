import 'package:auto_route/auto_route.dart';
import 'package:expensio/app/core/navigation/app_router.dart';
import 'package:flutter/material.dart';

@RoutePage(name: 'HomeRoute')
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.pageView(
      routes: const [QRCodeReaderRoute(), SelfEntryFinanceRoute()],
      builder: (context, child, _) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          body: child,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            items: const [
              BottomNavigationBarItem(
                label: 'scanner',
                icon: Icon(Icons.qr_code),
              ),
              BottomNavigationBarItem(
                label: 'summary',
                icon: Icon(Icons.monetization_on_sharp),
              ),
            ],
          ),
        );
      },
    );
  }
}
