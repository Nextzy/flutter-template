import 'package:core/lib.dart';

abstract class AppNullableWidgetStateBloc<EVENT, DATA>
    extends FalconNullableWidgetDataStateBloc<EVENT, DATA> {
  AppNullableWidgetStateBloc({
    super.initialData,
    EventTransformer<BlocEvent<EVENT>>? transformer,
  }) : super(
          transformer: transformer ?? concurrent(),
        );
}

abstract class AppWidgetStateBloc<EVENT, DATA>
    extends FalconWidgetDataStateBloc<EVENT, DATA> {
  AppWidgetStateBloc(
    super.initialData, {
    EventTransformer<BlocEvent<EVENT>>? transformer,
  }) : super(
          transformer: transformer ?? concurrent(),
        );
}
