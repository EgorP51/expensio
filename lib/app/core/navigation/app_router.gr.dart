// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    QRCodeReaderRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const QRCodeReaderScreen(),
      );
    },
    SelfEntryFinanceRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SelfEntryFinanceScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
  };
}

/// generated route for
/// [QRCodeReaderScreen]
class QRCodeReaderRoute extends PageRouteInfo<void> {
  const QRCodeReaderRoute({List<PageRouteInfo>? children})
      : super(
          QRCodeReaderRoute.name,
          initialChildren: children,
        );

  static const String name = 'QRCodeReaderRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SelfEntryFinanceScreen]
class SelfEntryFinanceRoute extends PageRouteInfo<void> {
  const SelfEntryFinanceRoute({List<PageRouteInfo>? children})
      : super(
          SelfEntryFinanceRoute.name,
          initialChildren: children,
        );

  static const String name = 'SelfEntryFinanceRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
