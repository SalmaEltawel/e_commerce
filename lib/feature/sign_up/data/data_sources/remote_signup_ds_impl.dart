import 'package:e_commerce_app/core/api/api_manager.dart';
import 'package:e_commerce_app/core/api/end_point.dart';
import 'package:e_commerce_app/feature/sign_up/data/data_sources/remote_signup_ds.dart';
import 'package:e_commerce_app/feature/sign_up/data/models/signup_model.dart';
import 'package:e_commerce_app/feature/sign_up/domain/entities/SignUpRequest.dart';

class RemoteSignupDsImpl implements RemoteSignupDs {
  @override
  Future<SignupModel> signup(SignUpRequest request) async {
    ApiManager apiManager = ApiManager();
    var response = await apiManager.postData(
        endPoint: EndPoints.signup, body: request.toJson());
    SignupModel signupModel = SignupModel.fromJson(response.data);
    return signupModel;
  }
}
