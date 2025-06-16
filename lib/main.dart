import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ta3leemi_project/core/di/dependency_injection.dart';
import 'package:ta3leemi_project/core/helpers/constants.dart';
import 'package:ta3leemi_project/core/helpers/secured_shared_pref.dart';
import 'package:ta3leemi_project/core/routing/app_router.dart';
import 'package:ta3leemi_project/ta3leemi_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  await checkIfLoggedInUser();
  await ScreenUtil.ensureScreenSize();
  runApp(Ta3leemiApp(approuter: AppRouter()));
}

Future<void> checkIfLoggedInUser() async {
  String? userToken = await SecuredSharedPref.getSecuredString(
    SecuredSharedPrefKeys.userToken,
  );
  if (userToken == null || userToken.isEmpty) {
    isLoggedInUser = false;
  } else {
    isLoggedInUser = true;
  }
}
