import 'package:core/lib.dart';

abstract class AppStatefulWidget extends StatefulWidget {
  const AppStatefulWidget({
    super.key,
    this.size = WidgetSize.md,
    this.themeMode,
  });

  final WidgetSize size;
  final ThemeMode? themeMode;
}
