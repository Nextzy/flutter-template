import 'package:data/lib.dart';

part 'generated/response_copy.freezed.dart';
part 'generated/response_copy.g.dart';

@freezed
class YourResponse with _$YourResponse {
  const factory YourResponse({
    required String data,
    required List<String> dataList,
  }) = _YourResponse;

  factory YourResponse.fromJson(Map<String, dynamic> json) =>
      _$YourResponseFromJson(json);
}
