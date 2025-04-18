import 'package:example_app/application.dart';

part 'generated/authentication_entity.freezed.dart';

@freezed
abstract class AuthenticationEntity with _$AuthenticationEntity {
  const factory AuthenticationEntity({
    required String yourData,
  }) = _AuthenticationEntity;

  factory AuthenticationEntity.fromResponse(Response response) =>
      AuthenticationEntity(
        yourData: '',
      );
}
