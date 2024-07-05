import 'package:bloc/bloc.dart';
import 'package:e_commerce_app/core/enum/enum.dart';
import 'package:e_commerce_app/core/error/failures/failures.dart';
import 'package:e_commerce_app/feature/sign_up/data/models/signup_model.dart';
import 'package:e_commerce_app/feature/sign_up/domain/entities/SignUpRequest.dart';
import 'package:meta/meta.dart';

import '../../domain/use_cases/signup_usecase.dart';

part 'signup_event.dart';

part 'signup_state.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  SignupUseCase signupUseCase;

  SignupBloc(this.signupUseCase) : super(SignupInitState()) {
    on<SignupButtonEvent>((event, emit) async {
      emit(state.copyWith(status: RequestStatus.loading));
      var result =await signupUseCase.call(event.request);
      result.fold((l){
        emit(state.copyWith(status: RequestStatus.failures,failures: l));
      }, (r){
        emit(state.copyWith(status:RequestStatus.success,model: r ));
      });
    });
  }
}
