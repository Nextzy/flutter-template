import 'package:data/lib.dart';

part 'generated/body_copy.freezed.dart';
part 'generated/body_copy.g.dart';

@freezed
class YourBody with _$YourBody {
  const factory YourBody({
    required String data,
  }) = _YourBody;

  factory YourBody.fromJson(Map<String, dynamic> json) =>
      _$YourBodyFromJson(json);
}