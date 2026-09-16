import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:wash_car/feature/register/data/repo/register_repo.dart';

GetIt getIt = GetIt.instance;

Future setupGetIt() async {
  Dio dio = Dio();

  getIt.registerLazySingleton<RegisterRepo>(() => getIt());
}
