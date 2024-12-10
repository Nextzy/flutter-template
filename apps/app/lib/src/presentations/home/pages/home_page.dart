import 'package:change_application_name/application.dart';
import 'package:change_application_name/examples/presentation_example/pages/responsive_page_copy.dart';

enum HomePageEvent { yourEvent }

@RoutePage()
class HomePage extends AppPage implements AutoRouteWrapper {
  const HomePage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => HomePageBloc()..addEvent(HomeBlocEvent.yourEvent),
      child: this,
    );
  }

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState
    extends AppPageScaffoldBlocWidgetState<HomePage, HomeEntity, HomePageBloc> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) => buildScaffoldWithBloc<HomePageEvent>(
        listenEvent: (context, event, data) => switch (event) {
          HomePageEvent.yourEvent => throw UnimplementedError(),
        },
        buildAppBar: (context, state) => AppTopNavigationBar(
          type: AppNavigationType.brand,
          title: 'Demo Application',
        ),
        buildFloatingButton: (context, state) => FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
        buildBody: (context, state) => buildResponsive(
          child: (platform, breakpoint) => ContainerLayout(
            alignment: Alignment.center,
            child: ColumnLayout(
              scrollable: true,
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              padding: Space.insetAll16,
              gap: 40,
              children: [
                RowLayout(
                  gap: 20,
                  children: [
                    AppButton(
                      text: 'Show Lock Modal',
                      onPress: () {
                        AppLoadingDialog.showFullLoadingLocked(
                          context,
                          title: 'We\'re creating your account...',
                        );
                        Future.delayed(
                          Duration(seconds: 3),
                          () => AppLoadingDialog.dismissAll(context),
                        );
                      },
                    ),
                    AppButton(
                      text: 'Show Modal',
                      onPress: () {
                        for (int i = 1; i <= 5; i++) {
                          AppLoadingDialog.showFullLoadingCancellable(
                            context,
                            title: 'We\'re creating your account...',
                          );
                        }
                        Future.delayed(
                          Duration(seconds: 3),
                          () => AppLoadingDialog.dismissAll(context),
                        );
                      },
                    ),
                  ],
                ),
                AppButton(
                  text: 'Show Modal',
                  onPress: () {
                    showDialog(
                      context: context,
                      barrierDismissible: true,
                      builder: (builderContext) => AppModal(
                        title: 'Short descriptive message',
                        description:
                            'In a perfect world, content stays brief. Yet, when more words are essential, it unfolds like this.',
                        feedbackState: FeedbackState.info,
                        contentAlign: AppModalContentAlign.start,
                        actionAlign: AppModalActionAlign.start,
                        buttonPrimaryText: 'OK',
                        buttonSecondaryText: 'Cancel',
                        onPrimaryPress: () {
                          Log.i('Tap');
                        },
                        onSecondaryPress: () {
                          Log.i('Tap');
                        },
                      ),
                    );
                  },
                ),
                ColumnLayout(
                  mainAxisSize: MainAxisSize.min,
                  foregroundColor: Colors.red.withOpacity(0.1),
                  backgroundColor: Colors.amber,
                  padding: Space.insetAll16,
                  border: Border.all(
                    color: Colors.black,
                    width: 2.0,
                    strokeAlign: BorderSide.strokeAlignInside,
                  ),
                  borderRadius: BorderRadius.circular(16),
                  gap: 20,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  dropShadow: [
                    BoxShadow(
                      blurRadius: 8,
                      spreadRadius: -2,
                      offset: const Offset(0, 4),
                      color: Colors.black.withOpacity(0.5),
                    ),
                    BoxShadow(
                      blurRadius: 4,
                      offset: const Offset(0, 2),
                      spreadRadius: -2,
                      color: Colors.black.withOpacity(0.5),
                    ),
                  ],
                  innerShadow: [
                    BoxShadow(
                      color: Colors.white.withOpacity(0.2),
                      spreadRadius: -4,
                      blurRadius: 12,
                    ),
                  ],
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.red,
                      ),
                    ),
                    AppText(
                      'You have pushed the button this many times:',
                      style: AppTextStyleBuilder.ui.s14.colorPrimary
                          .build(context),
                    ),
                    AppText(
                      '$_counter',
                      style: AppTextStyleBuilder.header.s24.colorPrimary
                          .build(context),
                    ),
                  ],
                ),
                ColumnLayout(
                  mainAxisSize: MainAxisSize.min,
                  backgroundColor: Colors.amber,
                  padding: Space.insetAll16,
                  border: Border.all(
                    color: Colors.black,
                    width: 1,
                    strokeAlign: BorderSide.strokeAlignInside,
                  ),
                  borderRadius: BorderRadius.circular(16),
                  gap: 20,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.red,
                      ),
                    ),
                    AppText(
                      'You have pushed the button this many times:',
                      style: AppTextStyleBuilder.ui.s14.colorPrimary
                          .build(context),
                    ),
                    AppText(
                      '$_counter',
                      style: AppTextStyleBuilder.header.s24.colorPrimary
                          .build(context),
                    ),
                  ],
                ),
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                      strokeAlign: BorderSide.strokeAlignOutside,
                    ),
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ],
            ),
          ),
        ),
      );

  void _incrementCounter() {
    navigate(SettingRoute());
    setState(() {
      _counter++;
    });
  }
}