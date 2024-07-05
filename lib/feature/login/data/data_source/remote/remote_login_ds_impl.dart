import 'package:e_commerce_app/core/api/api_manager.dart';
import 'package:e_commerce_app/core/api/end_point.dart';
import 'package:e_commerce_app/feature/login/data/data_source/remote/remote_login_ds.dart';

import '../../models/login_model.dart';

class RemoteLoginDsImpl implements RemoteLoginDs {
  @override
  Future <LoginModel>login(String email, String password) async {
    ApiManager apiManager = ApiManager();
    var response = await apiManager.postData(
        endPoint: EndPoints.signin,
        body: {"email": email, "password": password});
    LoginModel loginModel=LoginModel.fromJson(response.data);
    return loginModel;
  }
}
