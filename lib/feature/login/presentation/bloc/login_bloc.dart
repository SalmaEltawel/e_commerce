import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';

import '../../../../core/enum/enum.dart';
import '../../../../core/error/failures/failures.dart';
import '../../data/models/login_model.dart';
import '../../domain/use_case/login_usecase.dart';

part 'login_event.dart';

part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginUseCase loginUseCase;

  LoginBloc(this.loginUseCase) : super(LoginInitState()) {
    on<LoginButtonEvent>((event, emit) async {
      emit(state.copyWith(status: RequestStatus.loading));
      var result = await loginUseCase.call(event.email, event.password);
      result.fold((l) {
        emit(state.copyWith(status: RequestStatus.failures, failures: l));
      }, (r) {
        emit(state.copyWith(status: RequestStatus.success, model: r));
      });
    });
  }
}
