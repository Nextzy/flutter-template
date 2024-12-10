import 'package:core/lib.dart';

// ignore_for_file: non_constant_identifier_names
extension AppContextExtension on BuildContext {
  AppThemeData get theme => ThemeApplication.of(this);
}