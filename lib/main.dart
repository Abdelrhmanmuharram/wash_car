import 'package:flutter/material.dart';
import 'package:wash/core/di/service_locaor.dart';
import 'package:wash/wash_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(const WashApp());
}
