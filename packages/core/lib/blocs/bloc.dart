  
import 'package:core/lib.dart';

abstract class AppBloc<EVENT, DATA> extends FalconWidgetStateEventBloc<EVENT, DATA> {
  AppBloc([super.initialState]);
}
