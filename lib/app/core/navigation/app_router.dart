import 'package:auto_route/auto_route.dart';
import 'package:expensio/app/features/home/presentation/home_screen.dart';
import 'package:expensio/app/features/qr_code_reader/presentation/screens/qr_code_reader_screen.dart';
import 'package:expensio/app/features/self_entry_finance/presentation/screens/self_entry_finance_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: HomeRoute.page,
          path: '/',
          children: <AutoRoute>[
            AutoRoute(page: QRCodeReaderRoute.page),
            AutoRoute(page: SelfEntryFinanceRoute.page),
          ],
        )
      ];
}
