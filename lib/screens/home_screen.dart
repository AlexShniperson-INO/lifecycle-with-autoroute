import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lifecycle/lifecycle.dart';
import 'package:lifecycle_with_autoroute/route/app_router.gr.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with LifecycleAware, LifecycleMixin {
  final _random = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: OutlinedButton(
          onPressed: () {
            AutoRouter.of(context).push(DetailRouter(children: [
              DetailScreenRoute(
                randomNumber: _random.nextInt(100),
              ),
            ]));
          },
          child: const Text("Next page"),
        ),
      ),
    );
  }

  @override
  void onLifecycleEvent(LifecycleEvent event) {
    debugPrint("[$runtimeType] $event");
  }
}
