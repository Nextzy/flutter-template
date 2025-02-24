import 'package:core/lib.dart';

abstract class AppBloc<EVENT, DATA>
    extends FalconWidgetStateEventBloc<EVENT, DATA> {
  AppBloc({
    super.initialData,
    EventTransformer<BlocEvent<EVENT>>? transformer,
  }) : super(
          transformer: transformer ?? concurrent(),
        );
}

abstract class AppBlocSafe<EVENT, DATA>
    extends FalconWidgetStateEventSafeBloc<EVENT, DATA> {
  AppBlocSafe(
    super.initialData, {
    EventTransformer<BlocEvent<EVENT>>? transformer,
  }) : super(
          transformer: transformer ?? concurrent(),
        );
}
