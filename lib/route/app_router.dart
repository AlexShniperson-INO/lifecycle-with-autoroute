import 'package:auto_route/auto_route.dart';
import 'package:lifecycle_with_autoroute/screens/detail_screen.dart';
import 'package:lifecycle_with_autoroute/screens/home_screen.dart';

@MaterialAutoRouter(
  //replaceInRouteName: 'Page|Screen,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: '/',
      page: HomeScreen,
      initial: true,
    ),
    AutoRoute(
      path: '/detail',
      name: 'DetailRouter',
      page: EmptyRouterPage,
      children: [
        AutoRoute(
          path: ':randomNumber',
          page: DetailScreen,
        ),
      ],
    ),
  ],
)
class $AppRouter {}
