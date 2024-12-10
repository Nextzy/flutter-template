import 'package:widgetbook_app/widgetbook.dart';

class LoadingDialogCases extends WidgetbookScrollableUseCase {
  LoadingDialogCases({super.name = 'Loading Modal'})
      : super(
          builder: (context) => ColumnLayout(
            gap: 20,
            children: [
              AppButton(
                text: 'Show Dialog',
                onPress: () {
                  AppLoadingDialog.showFullLoadingLocked(
                    context,
                    title: 'We\'re creating your account...',
                  );
                },
              ),
              AppButton(
                text: 'Show Dialog',
                onPress: () {
                  AppLoadingDialog.showFullLoadingCancellable(
                    context,
                    title: 'We\'re creating your account...',
                  );
                },
              ),
            ],
          ),
        );
}
