  
// ignore_for_file: prefer_const_constructors
import '../widgetbook.dart';

class UseCase<U> extends WidgetbookUseCase {
  UseCase({
    required super.name,
    required U usecase,
    Function(BuildContext context)? initState,
    Function(dynamic result)? onResult,
    required Widget Function(UseCasePageState<U> state, U api, dynamic data)
        buildButton,
  }) : super(
          builder: (context) {
            initState?.call(context);

            return _UseCasePage<U>(
              usecase: usecase,
              onResult: onResult,
              buildButton: buildButton,
            );
          },
        );
}

class _UseCasePage<U> extends StatefulWidget {
  const _UseCasePage({
    Key? key,
    required this.usecase,
    required this.buildButton,
    required this.onResult,
  }) : super(key: key);

  final Widget Function(UseCasePageState<U> state, U usecase, dynamic data)
      buildButton;
  final U usecase;
  final Function(dynamic result)? onResult;

  @override
  State<_UseCasePage<U>> createState() => UseCasePageState<U>();
}

class UseCasePageState<U> extends State<_UseCasePage<U>> {
  static const _loading = 'loading';

  final StreamController _controller = StreamController.broadcast();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: StreamBuilder(
        stream: _controller.stream,
        builder: (context, snapshot) {
          if (snapshot.data != null) {
            widget.onResult?.call(snapshot.data);
          }

          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: Space.insetAll16,
                child: widget.buildButton(this, widget.usecase, snapshot.data),
              ),
              _buildResult(context, snapshot.data)
            ],
          );
        },
      ),
    );
  }

  Widget _buildResult(BuildContext context, data) {
    if (data == _loading) {
      return Expanded(
        child: Container(
          color: Colors.grey.shade100,
          child: Center(
            child: CircularProgressIndicator(),
          ),
        ),
      );
    }

    return Expanded(
      child: Container(
        color: Colors.grey.shade100,
        child: Padding(
          padding: Space.insetAll16,
          child: Text(_toString(data)),
        ),
      ),
    );
  }

  Future<void> fetch(Future future) async {
    _controller.add(_loading);
    try {
      final result = await future;
      _controller.add(result);
    } catch (error, stacktrace) {
      Log.error(error, stacktrace);
      _controller.add(error);
    }
  }

  String _toString(dynamic data) {
    if (data == null) return '';

    if (data is Response) {
      final responseData = data.data;

      return responseData.toString();
    } else if (data is HttpResponse) {
      final responseData = data.data;

      return responseData.toString();
    } else {
      return data.toString();
    }
  }
}
