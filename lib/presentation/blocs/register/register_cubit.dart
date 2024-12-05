import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterFormState> {
  RegisterCubit() : super(const RegisterFormState());

  void onSubit() {
    // ignore: avoid_print
    print('Submit: $state');
  }

  void userNameChanged(String value) {
    emit(
      state.copyWith(
        userName: value,
      ),
    );
  }

  void emailChanged(String value) {
    emit(
      state.copyWith(
        email: value,
      ),
    );
  }

  void passwordChanged(String value) {
    emit(
      state.copyWith(
        password: value,
      ),
    );
  }
}