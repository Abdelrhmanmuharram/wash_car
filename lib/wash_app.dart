import 'package:flutter/material.dart';
import 'package:wash/core/di/service_locaor.dart';
import 'package:wash/core/routes/app_router.dart';
import 'package:wash/core/routes/app_routes.dart';
import 'package:wash/core/utils/app_constants.dart';
import 'package:wash/core/utils/local_storage.dart';

class WashApp extends StatelessWidget {
  const WashApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: getInitialPage(),
      onGenerateRoute: AppRouter.onGenerateRoutes,
    );
  }

  String getInitialPage() {
    String? token = getIt<LocalStorage>().getString(AppConstants.token);
    if (token != null) {
      return AppRoutes.homeScreen;
    } else {
      return AppRoutes.registerScreen;
    }
  }
}
