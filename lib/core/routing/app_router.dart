import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ta3leemi_project/core/di/dependency_injection.dart';
import 'package:ta3leemi_project/core/routing/routes.dart';
import 'package:ta3leemi_project/features/account/ui/screens/account_screen.dart';
import 'package:ta3leemi_project/features/account/ui/screens/charge_codes_screen.dart';
import 'package:ta3leemi_project/features/account/ui/screens/connected_devices_screen.dart';
import 'package:ta3leemi_project/features/account/ui/screens/payments_screen.dart';
import 'package:ta3leemi_project/features/account/ui/screens/update_profile_screen.dart';
import 'package:ta3leemi_project/features/account/ui/screens/wallet_screen.dart';
import 'package:ta3leemi_project/features/courses/ui/screens/courses_screen.dart';
import 'package:ta3leemi_project/features/courses/ui/screens/my_courses_screen.dart';
import 'package:ta3leemi_project/features/exams/ui/screens/exams_screen.dart';
import 'package:ta3leemi_project/features/exams/ui/screens/my_exams_screen.dart';
import 'package:ta3leemi_project/features/exams/ui/screens/my_quizzes_screen.dart';
import 'package:ta3leemi_project/features/layout/ui/screens/layout_screen.dart';
import 'package:ta3leemi_project/features/leaderBoard/ui/screens/leaderboard_screen.dart';
import 'package:ta3leemi_project/features/login/logic/cubit/login_cubit.dart';
import 'package:ta3leemi_project/features/login/ui/screens/login_screen.dart';
import 'package:ta3leemi_project/features/register/ui/screens/regeister_screen.dart';

import '../../features/home/ui/screens/home_screen.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.loginRoute:
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create: (context) => getIt<LoginCubit>(),
                child: const LoginScreen(),
              ),
        );
      case Routes.regeisterRoute:
        return MaterialPageRoute(builder: (_) => const RegeisterScreen());
      case Routes.layoutRoute:
        return MaterialPageRoute(builder: (_) => const LayoutScreen());
      case Routes.homeRoute:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case Routes.leaderboardRoute:
        return MaterialPageRoute(builder: (_) => const LeaderboardScreen());
      case Routes.coursesRoute:
        return MaterialPageRoute(builder: (_) => const CoursesScreen());
      case Routes.myCoursesRoute:
        return MaterialPageRoute(builder: (_) => const MyCoursesScreen());
      case Routes.examsRoute:
        return MaterialPageRoute(builder: (_) => const ExamsScreen());
      case Routes.myExamsRoute:
        return MaterialPageRoute(builder: (_) => const MyExamsScreen());
      case Routes.myQuizzesRoute:
        return MaterialPageRoute(builder: (_) => const MyQuizzesScreen());
      case Routes.accountRoute:
        return MaterialPageRoute(builder: (_) => const AccountScreen());
      case Routes.updateProfileRoute:
        return MaterialPageRoute(builder: (_) => const UpdateProfileScreen());
      case Routes.walletRoute:
        return MaterialPageRoute(builder: (_) => const WalletScreen());
      case Routes.chargeCodesRoute:
        return MaterialPageRoute(builder: (_) => const ChargeCodesScreen());
      case Routes.paymentsRoute:
        return MaterialPageRoute(builder: (_) => const PaymentsScreen());
      case Routes.connectedDevicesRoute:
        return MaterialPageRoute(
          builder: (_) => const ConnectedDevicesScreen(),
        );

      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder:
          (_) => Scaffold(
            appBar: AppBar(title: Text('Not Found')),
            body: Center(child: Text('This Route Not Found')),
          ),
    );
  }
}
