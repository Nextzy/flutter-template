// ignore_for_file: constant_identifier_names,non_constant_identifier_names
import 'package:data/lib.dart';
part 'api_service_retrofit_copy.g.dart';

@RestApi()
abstract class YourRetrofitApiService{
  factory YourRetrofitApiService(Dio dio, {String baseUrl}) = _YourRetrofitApiService;

  @GET('/get-api-endpoint')
  Future<HttpResponse<String>> getYourService();
}