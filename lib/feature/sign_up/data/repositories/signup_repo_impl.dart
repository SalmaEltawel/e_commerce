import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/core/error/failures/failures.dart';
import 'package:e_commerce_app/feature/sign_up/data/data_sources/remote_signup_ds.dart';
import 'package:e_commerce_app/feature/sign_up/data/models/signup_model.dart';
import 'package:e_commerce_app/feature/sign_up/domain/entities/SignUpRequest.dart';
import 'package:e_commerce_app/feature/sign_up/domain/repositories/signup_repo.dart';

class SignUpRepoImpl implements SignupRepo {
  RemoteSignupDs remoteSignupDs;

  SignUpRepoImpl(this.remoteSignupDs);

  @override
  Future<Either<Failures, SignupModel>> signup(SignUpRequest request) async {
    try {
      var result =
          await remoteSignupDs.signup(request);
      return Right(result);
    } catch (e) {
      return Left(RemoteFailures(e.toString()));
    }
  }
}
