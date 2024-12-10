import 'package:change_application_name/application.dart';

class YourValidator extends ValidatorCubit<YourEntity> {
  @override
  Failure? onValidate(YourEntity? data) {
    if (data == null) return Failure();
    if (data.yourData.isEmpty) {
      return Failure();
    }
    return null;
  }
}
