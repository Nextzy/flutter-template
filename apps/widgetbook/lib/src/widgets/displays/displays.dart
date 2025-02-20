import 'package:widgetbook_app/widgetbook.dart';

export 'badges/badges.dart';
export 'alerts/alerts.dart';
export 'alerts/single_alerts.dart';
export 'navbars/navbars.dart';
export 'empty/empty_book.dart';
export 'loading/loading_book.dart';
export 'modals/modals.dart';
export 'avatar/avatar.dart';
export 'image/image.dart';
export 'iframes/iframes.dart';
export 'link/link_book.dart';
export 'accordions/accordions.dart';
export 'breadcrumbs/breadcrumbs.dart';
export 'steps/steps.dart';
export 'steps/vertical_steps.dart';
export 'paginations/paginations.dart';
export 'paginations/complex_paginations.dart';
export 'paginations/dot_paginations.dart';
export 'paginations/line_paginations.dart';
export 'tabs/tabs.dart';
export 'tabs/vertical_tabs.dart';
export 'tag/tag_book.dart';
export 'divider/divider_book.dart';

class DisplayCategories extends WidgetbookCategory {
  DisplayCategories({
    super.name = 'Displays',
    super.isInitiallyExpanded = true,
  }) : super(
          children: [
            AvatarWidgetBook(),
            ImageViewWidgetBook(),
            NavigationBarWidgetBook(),
            ModalWidgetBook(),
            InlineAlertWidgetBook(),
            SingleInlineAlertWidgetBook(),
            IframeWidgetBook(),
            BadgeWidgetBook(),
            EmptyWidgetBook(),
            LoadingBook(),
            LinkWidgetBook(),
            AccordionWidgetBook(),
            BreadcrumbsWidgetBook(),
            HorizontalStepsWidgetBook(),
            VerticalStepWidgetBook(),
            SimplePaginationWidgetBook(),
            ComplexPaginationWidgetBook(),
            DotPaginationWidgetBook(),
            LinePaginationWidgetBook(),
            HorizontalTabWidgetBook(),
            VerticalTabWidgetBook(),
            TagWidgetBook(),
            DividerWidgetBook(),
          ],
        );
}
