import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wash_car/feature/register/data/repo/register_repo.dart';
import 'package:wash_car/feature/register/presentation/cubit/register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final RegisterRepo _registerRepo;
  RegisterCubit(this._registerRepo) : super(RegisterInitial());

  register() {
    _registerRepo.register();
  }
}
