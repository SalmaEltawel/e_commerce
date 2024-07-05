import '../../models/login_model.dart';

abstract class RemoteLoginDs {
  Future<LoginModel> login(String email, String password);
}
