import 'package:data/lib.dart';

class YourRetrofitRemoteDataSources {
  YourRetrofitRemoteDataSources({
    YourRetrofitApiService? yourApiService,
  }) : _yourApiService = yourApiService ??
            YourRetrofitApiService(AppHttpClient.instance.dio);

  final YourRetrofitApiService _yourApiService;

  Future<String> getYourService() =>
      _yourApiService.getYourService().unwrapResponse();
}
