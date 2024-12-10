import 'package:data/lib.dart';

class YourRemoteDataSources {
  YourRemoteDataSources({
    YourRetrofitApiService? yourApiService,
  }) : _yourApiService = yourApiService ?? YourRetrofitApiService(AppHttpClient.instance.dio);

  final YourRetrofitApiService _yourApiService;

  // void setupToken(TokenModel token){
  //   _yourApiService.setupToken(token)        .noWrapResponse();
  // }

  // Future<LoginOrRegisResponse> signInWithMobile(String number) async =>
  //     await _authApiService
  //         .signInOrRegisterWithMobile(
  //         body: LoginOrRegisterBody(mobileNumber: number))
  //         .unWrapResponse();
}
