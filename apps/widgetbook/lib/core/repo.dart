  
// ignore_for_file: prefer_const_constructors
import '../widgetbook.dart';

class RepositoryUseCase<D> extends WidgetbookUseCase {
  RepositoryUseCase({
    required super.name,
    required D repo,
    Function(BuildContext context)? initState,
    required List<Widget> Function(RepoCaller caller, D repo, dynamic data)
    buildButtonList,
  }) : super(
    builder: (context) {
      initState?.call(context);
      return _RepositoryUseCasePage<D>(
        repo: repo,
        buildButtonList: buildButtonList,
      );
    },
  );
}

mixin RepoCaller {
  void call(Stream stream);
}

class _RepositoryUseCasePage<A> extends AppStatefulWidget {
  _RepositoryUseCasePage({
    Key? key,
    required this.repo,
    required this.buildButtonList,
  }) : super(key: key);

  final List<Widget> Function(RepoCaller caller, A repo, dynamic data)
  buildButtonList;
  final A repo;

  @override
  AppState<_RepositoryUseCasePage<A>> createState() =>
      _RepositoryUseCasePageState<A>();
}

class _RepositoryUseCasePageState<A> extends AppState<_RepositoryUseCasePage<A>>
    with RepoCaller {
  final _loading = 'loading';

  StreamController _controller = StreamController.broadcast();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: StreamBuilder(
        stream: _controller.stream,
        builder: (context, snapshot) {
          return ColumnLayout(
            scrollable: true,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: Space.insetAll16,
                child: Wrap(
                  spacing: 12,
                  children:
                  widget.buildButtonList(this, widget.repo, snapshot.data),
                ),
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

  void call(Stream stream) async {
    await _controller.close();
    setState(() {
      _controller = StreamController.broadcast();
    });
    _controller.add(_loading);
    try {
      await _controller.addStream(stream);
      await _controller.close();
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
