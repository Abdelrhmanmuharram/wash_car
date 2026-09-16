import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wash_car/core/di/service_locator.dart';
import 'package:wash_car/core/routes/app_routes.dart';
import 'package:wash_car/feature/register/presentation/cubit/register_cubit.dart';
import 'package:wash_car/feature/register/presentation/ui/register_screen.dart';

class AppRouter {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.registerScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (_) => RegisterCubit(getIt()),
            child: RegisterScreen(),
          ),
        );
    }
  }
}
