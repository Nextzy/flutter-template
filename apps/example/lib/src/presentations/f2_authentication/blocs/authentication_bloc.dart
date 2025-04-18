import 'package:example_app/application.dart';

enum AuthenticationBlocEvent { tapAddNumber }

class AuthenticationPageBloc
    extends AppBloc<AuthenticationBlocEvent, AuthenticationEntity> {
  AuthenticationPageBloc();

  final ContentSafeState<int> number = ContentSafeState.initial(0);

  @override
  Future<void> onBlocEvent(BlocEvent<AuthenticationBlocEvent> event) async {
    switch (event.name) {
      case AuthenticationBlocEvent.tapAddNumber:
        return _addNumber();
    }
  }

  Future<void> _addNumber() async {
    number.data = number.data + 1;
  }
}
