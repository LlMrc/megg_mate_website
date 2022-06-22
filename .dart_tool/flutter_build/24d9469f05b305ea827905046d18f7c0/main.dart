// @dart=2.17
// Flutter web bootstrap script for package:megg_mate_website/main.dart.

import 'dart:ui' as ui;
import 'dart:async';

import 'package:megg_mate_website/main.dart' as entrypoint;
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:megg_mate_website/generated_plugin_registrant.dart';

typedef _UnaryFunction = dynamic Function(List<String> args);
typedef _NullaryFunction = dynamic Function();

Future<void> main() async {
  await ui.webOnlyWarmupEngine(
    runApp: () {
      if (entrypoint.main is _UnaryFunction) {
        return (entrypoint.main as _UnaryFunction)(<String>[]);
      }
      return (entrypoint.main as _NullaryFunction)();
    },
    registerPlugins: () {
      registerPlugins(webPluginRegistrar);
    },
  );
}
