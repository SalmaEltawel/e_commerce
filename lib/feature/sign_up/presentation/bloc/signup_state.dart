part of 'signup_bloc.dart';

@immutable
class SignupState {
  RequestStatus? status;
  Failures? failures;
  SignupModel? model;

  SignupState({this.model, this.failures, this.status});

  SignupState copyWith(
      {RequestStatus? status, Failures? failures, SignupModel? model}) {
    return SignupState(
        model: model ?? this.model,
        failures: failures ?? this.failures,
        status: status ?? this.status);
  }
}

class SignupInitState extends SignupState {
  SignupInitState() : super(status: RequestStatus.init);
}
