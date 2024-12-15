import 'package:change_application_name/application.dart';

export 'authentication_api_service.dart';
export 'movie_api_service.dart';

class CustomOptions extends TypedExtras {
  const CustomOptions({
    this.mockId,
  });

  final int? mockId;
}
