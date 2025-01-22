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
          ],
        );
}
