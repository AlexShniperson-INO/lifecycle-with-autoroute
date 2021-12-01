// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/material.dart' as _i4;

import '../screens/detail_screen.dart' as _i3;
import '../screens/home_screen.dart' as _i1;

class AppRouter extends _i2.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    HomeScreenRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomeScreen());
    },
    DetailRouter.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    DetailScreenRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<DetailScreenRouteArgs>(
          orElse: () => DetailScreenRouteArgs(
              randomNumber: pathParams.getInt('randomNumber')));
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData,
          child:
              _i3.DetailScreen(randomNumber: args.randomNumber, key: args.key));
    }
  };

  @override
  List<_i2.RouteConfig> get routes => [
        _i2.RouteConfig(HomeScreenRoute.name, path: '/'),
        _i2.RouteConfig(DetailRouter.name, path: '/detail', children: [
          _i2.RouteConfig(DetailScreenRoute.name,
              path: ':randomNumber', parent: DetailRouter.name)
        ])
      ];
}

/// generated route for [_i1.HomeScreen]
class HomeScreenRoute extends _i2.PageRouteInfo<void> {
  const HomeScreenRoute() : super(name, path: '/');

  static const String name = 'HomeScreenRoute';
}

/// generated route for [_i2.EmptyRouterPage]
class DetailRouter extends _i2.PageRouteInfo<void> {
  const DetailRouter({List<_i2.PageRouteInfo>? children})
      : super(name, path: '/detail', initialChildren: children);

  static const String name = 'DetailRouter';
}

/// generated route for [_i3.DetailScreen]
class DetailScreenRoute extends _i2.PageRouteInfo<DetailScreenRouteArgs> {
  DetailScreenRoute({required int randomNumber, _i4.Key? key})
      : super(name,
            path: ':randomNumber',
            args: DetailScreenRouteArgs(randomNumber: randomNumber, key: key),
            rawPathParams: {'randomNumber': randomNumber});

  static const String name = 'DetailScreenRoute';
}

class DetailScreenRouteArgs {
  const DetailScreenRouteArgs({required this.randomNumber, this.key});

  final int randomNumber;

  final _i4.Key? key;

  @override
  String toString() {
    return 'DetailScreenRouteArgs{randomNumber: $randomNumber, key: $key}';
  }
}
