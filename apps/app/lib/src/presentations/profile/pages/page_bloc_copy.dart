import 'package:change_application_name/application.dart';

class YourBlocPage extends AppPage {
  const YourBlocPage._({required Key key}) : super(key: key);

  static Widget create() => //
      BlocProvider(
        create: (context) =>
            OnboardingBloc()..addEvent(OnboardingEvent.yourEvent),
        child: const YourBlocPage._(
          key: Key('YourBlocScreen'),
        ),
      );

  @override
  State<YourBlocPage> createState() => _YourBlocScreenState();
}

class _YourBlocScreenState
    extends AppPageBlocWidgetState<YourBlocPage, YourEntity, OnboardingBloc> {
  @override
  Widget build(BuildContext context) => //
      buildScaffoldWithBloc(
        body: (context, state) {
          // TODO: implement buildBody
          throw UnimplementedError();
        },
      );
}
