import 'package:flutter/material.dart';
import 'package:wash_car/core/routes/app_router.dart';
import 'package:wash_car/core/routes/app_routes.dart';

class WashApp extends StatelessWidget {
  const WashApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: AppRoutes.registerScreen,
      onGenerateRoute: AppRouter.onGenerateRoute,
    );
  }
}
