import 'dart:async';
import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  await runZonedGuarded(
    () async => runApp(ProviderScope(child: await builder())),
    (error, stackTrace) => log(error.toString(), stackTrace: stackTrace),
  );
}
