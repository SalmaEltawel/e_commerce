import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/core/error/failures/failures.dart';
import '../../domain/repository/login_repo.dart';
import '../data_source/remote/remote_login_ds.dart';
import '../models/login_model.dart';

class LoginRepoImpl implements LoginRepo {
  RemoteLoginDs loginDs;

  LoginRepoImpl(this.loginDs);

  @override
  Future<Either<Failures, LoginModel>> login(String email, String password) async {
    try {
      var result =await loginDs.login(email, password);
      return Right(result);
    } catch (e) {
      return Left(RemoteFailures(e.toString()));

    }
  }
}
