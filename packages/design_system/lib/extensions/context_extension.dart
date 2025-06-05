import 'package:design_system/lib.dart';

extension ThemeContextExtension on BuildContext {
  AppThemeData get theme => ThemeApplication.of(this);
}
