import 'package:flutter/cupertino.dart';
import 'package:graphify/src/controller/interface.dart';

typedef OnConsoleMessage = void Function(String message);

abstract class GraphifyView {
  const GraphifyView({
    this.controller,
    this.initialOptions,
    this.onConsoleMessage,
    this.onCreated,
    this.disablePointerEvent = false,
  });

  final GraphifyController? controller;

  final Map<String, dynamic>? initialOptions;

  final OnConsoleMessage? onConsoleMessage;

  final VoidCallback? onCreated;

  final bool disablePointerEvent;
}

abstract class GraphifyViewState<T extends StatefulWidget> extends State<T> {
  late Widget view;

  @override
  void initState() {
    super.initState();
    initView();
    buildView();
  }

  @override
  Widget build(BuildContext context) => view;

  Widget buildView();

  void initView();
}
