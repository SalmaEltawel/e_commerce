import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/core/error/failures/failures.dart';
import 'package:e_commerce_app/feature/sign_up/data/models/signup_model.dart';
import 'package:e_commerce_app/feature/sign_up/domain/entities/SignUpRequest.dart';

abstract class SignupRepo {
  Future<Either<Failures,SignupModel>> signup(SignUpRequest request);
}
