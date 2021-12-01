import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lifecycle/lifecycle.dart';

class DetailScreen extends StatefulWidget {
  final int randomNumber;

  const DetailScreen({
    @pathParam required this.randomNumber,
    Key? key,
  }) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> with LifecycleAware, LifecycleMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AutoBackButton(),
      ),
      body: Center(
        child: Text("Detail page with number: ${widget.randomNumber}"),
      ),
    );
  }

  @override
  void onLifecycleEvent(LifecycleEvent event) {
    debugPrint("[$runtimeType] $event");
  }
}
