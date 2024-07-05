import 'package:dartz/dartz.dart';
import '../../../../core/error/failures/failures.dart';
import '../../data/models/login_model.dart';

abstract class LoginRepo{
 Future<Either<Failures,LoginModel>>login(String email,String password);
}