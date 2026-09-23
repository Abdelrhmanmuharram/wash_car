import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wash/core/di/service_locaor.dart';
import 'package:wash/core/routes/app_routes.dart';
import 'package:wash/fearure/home/presentation/ui/home_screen.dart';
import 'package:wash/fearure/register/presentation/cubit/register_cubit.dart';
import 'package:wash/fearure/register/presentation/ui/register_screen.dart';

class AppRouter {
  static Route? onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.registerScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<RegisterCubit>(),
            child: const RegisterScreen(),
          ),
        );

      case AppRoutes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());

      default:
        return null;
    }
  }
}
