  
// ignore_for_file: prefer_const_constructors
import '../widgetbook.dart';

class ApiUseCase<A> extends WidgetbookUseCase {
  ApiUseCase({
    required super.name,
    required A api,
    Function(BuildContext context)? initState,
    required List<Widget> Function(
        Caller caller, A api, dynamic data)
    buildButtonList,
  }) : super(
    builder: (context) {
      initState?.call(context);

      return _ApiUseCasePage<A>(
        api: api,
        buildButtonList: buildButtonList,
      );
    },
  );
}

mixin Caller {
  Future<void> call(Future future);
}

class _ApiUseCasePage<A> extends StatelessWidget with Caller {
  _ApiUseCasePage({
    super.key,
    required this.api,
    required this.buildButtonList,
  });

  static const _loading = 'loading';

  final List<Widget> Function(Caller controller, A api, dynamic data)
  buildButtonList;
  final A api;
  final StreamController _controller = StreamController.broadcast();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: StreamBuilder(
        stream: _controller.stream,
        builder: (context, snapshot) {
          return ColumnLayout(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: Space.insetAll16,
                child: Wrap(
                  spacing: 12,
                  children: buildButtonList(this, api, snapshot.data),
                ),
              ),
              buildResult(context, snapshot.data)
            ],
          );
        },
      ),
    );
  }

  Widget buildResult(BuildContext context, data) {
    if (data == _loading) {
      return Container(
        color: Colors.grey.shade100,
        child: Center(
          child: CircularProgressIndicator(),
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

  @override
  Future<void> call(Future future) async {
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

    JsonEncoder encoder = const JsonEncoder.withIndent('  ');
    if (data is Response) {
      final responseData = data.data;

      return encoder.convert(responseData.toString());
    } else if (data is HttpResponse) {
      final responseData = data.data;
      return encoder.convert(responseData.toString());
    } else {
      return encoder.convert(data.toString());
    }
  }
}
