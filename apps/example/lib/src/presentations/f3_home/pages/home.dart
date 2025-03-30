import 'package:example_app/application.dart';

@RoutePage()
class HomePage extends AppPage {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends AppPageState<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ContainerLayout(
      alignment: Alignment.center,
      child: ColumnLayout(
        scrollable: true,
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        padding: Space.insetAll16,
        gap: 40,
        children: [
          AppButton(
              text: 'Go to Messenger app',
              onPress: () {
                navigate(MessengerRoute());
              }),
          AppButton(
              text: 'Go to E-commerce',
              onPress: () {
                navigate(EcommerceRoute());
              }),
          AppButton(
              text: 'Go to Web3',
              onPress: () {
                navigate(Web3Route());
              }),
        ],
      ),
    );
  }
}
