import 'package:e_commerce_app/feature/sign_up/domain/entities/SignUpRequest.dart';

import '../models/signup_model.dart';

abstract class RemoteSignupDs {
  Future<SignupModel> signup(SignUpRequest request);
}
