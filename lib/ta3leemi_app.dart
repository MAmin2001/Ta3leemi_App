import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ta3leemi_project/core/routing/app_router.dart';
import 'package:ta3leemi_project/core/routing/routes.dart';
import 'package:ta3leemi_project/core/themes/colors_manager.dart';

class Ta3leemiApp extends StatelessWidget {
  final AppRouter approuter;
  const Ta3leemiApp({super.key, required this.approuter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Ta3leemi App',
        theme: ThemeData(
          primaryColor: ColorsManager.mainBlue,
          scaffoldBackgroundColor: ColorsManager.backGround,
          appBarTheme: AppBarTheme(color: ColorsManager.mainBlue),
        ),
        initialRoute: Routes.layoutRoute,
        //initialRoute: isLoggedInUser ? Routes.layoutRoute : Routes.loginRoute,
        onGenerateRoute: AppRouter.generateRoute,
      ),
    );
  }
}
