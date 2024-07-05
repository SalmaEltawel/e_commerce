import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/core/error/failures/failures.dart';
import '../../data/models/login_model.dart';
import '../repository/login_repo.dart';

class LoginUseCase {
  LoginRepo loginRepo;

  LoginUseCase(this.loginRepo);

  Future<Either<Failures,LoginModel>> call(String email, String password) =>
      loginRepo.login(email, password);
}
 