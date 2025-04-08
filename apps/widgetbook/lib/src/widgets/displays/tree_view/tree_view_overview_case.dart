import 'package:widgetbook_app/widgetbook.dart';

class OverviewTreeViewWidgetCase extends WidgetbookScrollableUseCase {
  OverviewTreeViewWidgetCase({super.name = 'Overview'})
      : super(
          builder: (context) => SectionH1Widgetbook(
            title: 'Tree View',
            children: [
              SectionH2Widgetbook(
                children: [
                  AppTreeView(
                    children: [
                      AppTreeViewItem(
                        icon: Assets.icon.infoRegular.keyName,
                        text: 'Tree item label',
                        children: [
                          AppTreeViewItem(
                            icon: Assets.icon.infoRegular.keyName,
                            text: 'Tree item label',
                            children: [
                              AppTreeViewItem(
                                text: 'Tree item label',
                              ),
                            ],
                          ),
                          AppTreeViewItem(
                              icon: Assets.icon.infoRegular.keyName,
                              text: 'Tree item label')
                        ],
                      ),
                      AppTreeViewItem(
                        icon: Assets.icon.infoRegular.keyName,
                        text: 'Tree item label',
                        children: [
                          AppTreeViewItem(
                            icon: Assets.icon.infoRegular.keyName,
                            text: 'Tree item label',
                            children: [
                              AppTreeViewItem(
                                text: 'Tree item label',
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        );
}
