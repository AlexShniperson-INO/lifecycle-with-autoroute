import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lifecycle/lifecycle.dart';
import 'route/app_router.gr.dart';

final _navigatorKey = GlobalKey<NavigatorState>();

class MainApp extends StatelessWidget {
  final _appRouter = AppRouter(_navigatorKey);

  MainApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: AutoRouterDelegate(
        _appRouter,
        navigatorObservers: () => [defaultLifecycleObserver],
      ),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
