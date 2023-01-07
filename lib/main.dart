import 'dart:async';

import 'package:travy/src/app.dart';
import 'package:travy/src/app_bloc_observer.dart';
import 'package:travy/src/common.dart';

void main() {
  FlutterError.onError = (details) =>
      logger.e(details.exceptionAsString(), details.exception, details.stack);

  Bloc.observer = AppBlocObserver();

  runZonedGuarded(
    () => runApp(const MyApp()),
    (error, stack) => logger.e(error.toString(), error, stack),
  );
}
