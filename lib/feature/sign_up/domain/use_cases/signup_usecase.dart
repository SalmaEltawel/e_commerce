import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/core/error/failures/failures.dart';
import 'package:e_commerce_app/feature/sign_up/data/models/signup_model.dart';
import 'package:e_commerce_app/feature/sign_up/domain/entities/SignUpRequest.dart';
import 'package:e_commerce_app/feature/sign_up/domain/repositories/signup_repo.dart';

class SignupUseCase {
  SignupRepo signupRepo;

  SignupUseCase(this.signupRepo);

  Future<Either<Failures, SignupModel>> call(SignUpRequest request) =>
      signupRepo.signup(request);
}
