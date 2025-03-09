import 'package:widgetbook_app/widgetbook.dart';

class OverviewPlaceholderWidgetCase extends WidgetbookScrollableUseCase {
  OverviewPlaceholderWidgetCase({super.name = 'Overview'})
      : super(
          builder: (context) => SectionH1Widgetbook(
            title: 'Placeholder',
            children: [
              AppPlaceholder(
                icon: Assets.icon.infoRegular.keyName,
              ),
              AppPlaceholder(
                icon: Assets.icon.watchRegular.keyName,
              )
            ],
          ),
        );
}
