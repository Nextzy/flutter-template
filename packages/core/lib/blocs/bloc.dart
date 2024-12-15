  
import 'package:core/lib.dart';

abstract class AppBloc<EVENT, DATA> extends FalconWidgetStateEventBloc<EVENT, DATA> {
  AppBloc([super.initialState]);
}

abstract class AppBlocSafe<EVENT, STATE> extends FalconWidgetStateEventSafeBloc<EVENT, STATE> {
  AppBlocSafe(super.initialState);
}