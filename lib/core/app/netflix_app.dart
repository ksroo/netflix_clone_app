import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netflix/core/routes/router.dart';
import 'package:netflix/core/styles/theme.dart';

class NetFlixApp extends StatelessWidget {
  const NetFlixApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      child: GestureDetector(
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: MaterialApp.router(
          title: 'NetFliex',
          debugShowCheckedModeBanner: false,
          theme: AppTheme.appTheme,
          routerConfig: AppRouter.router,
        ),
      ),
    );
  }
}
