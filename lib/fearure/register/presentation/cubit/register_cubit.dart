import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:wash/core/networking/api_result.dart';
import 'package:wash/fearure/register/data/models/register_requires_model.dart';
import 'package:wash/fearure/register/data/repo/register_repo.dart';
import 'package:wash/fearure/register/presentation/cubit/register_state.dart';

@injectable
class RegisterCubit extends Cubit<RegisterState> {
  final RegisterRepo _registerRepo;

  RegisterCubit(this._registerRepo)
    : super(RegisterState(status: Status.initial));

  Future<void> register(RegisterRequestModel registerModel) async {
    emit(state.copyWith(status: Status.loading));
    final response = await _registerRepo.register(registerModel);
    switch (response) {
      case Success<dynamic>(data: final message):
        emit(
          state.copyWith(status: Status.success, message: message.toString()),
        );
      case Error<dynamic>(error: final error):
        emit(state.copyWith(status: Status.error, message: error.toString()));
    }
  }
}
