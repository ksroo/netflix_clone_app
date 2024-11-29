import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netflix/core/app/app_injection_container.dart';
import 'package:netflix/core/app/netflix_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// initialize screen util
  await ScreenUtil.ensureScreenSize();

  /// injector dependency injection
  await setupInjector();

  /// set system ui overlay style
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
  );

  /// set preferred orientation
  await SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ],
  ).then((_) {
    runApp(const NetFlixApp());
  });
}
