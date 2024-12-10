import 'package:change_application_name/application.dart';

part 'generated/entity_copy.freezed.dart';
part 'generated/entity_copy.g.dart';

@freezed
class YourEntity with _$YourEntity {
  const factory YourEntity({
    required String yourData,
  }) = _YourEntity;

  factory YourEntity.fromJson(Map<String, dynamic> json) =>
      _$YourEntityFromJson(json);
}
