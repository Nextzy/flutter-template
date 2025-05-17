import 'package:core/lib.dart';

abstract class AppNullableWidgetStateBloc<EVENT, DATA>
    extends FalconNullableWidgetStateBloc<EVENT, DATA> {
  AppNullableWidgetStateBloc({
    super.initialData,
    EventTransformer<BlocEvent<EVENT>>? transformer,
  }) : super(
          transformer: transformer ?? concurrent(),
        );
}

abstract class AppWidgetStateBloc<EVENT, DATA>
    extends FalconWidgetStateBloc<EVENT, DATA> {
  AppWidgetStateBloc(
    super.initialData, {
    EventTransformer<BlocEvent<EVENT>>? transformer,
  }) : super(
          transformer: transformer ?? concurrent(),
        );
}
