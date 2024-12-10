// ignore_for_file: prefer_const_constructors

export 'image_view_local_case.dart';
export 'image_view_network_case.dart';

import 'package:widgetbook_app/widgetbook.dart';

class ImageViewWidgetBook extends WidgetbookComponent {
  ImageViewWidgetBook({
    super.name = 'Image View',
    super.isInitiallyExpanded = false,
  }) : super(
          useCases: [
            ImageViewLocalCase(),
            ImageViewNetworkCase(),
          ],
        );

  static String svgLocalOption(BuildContext context) =>
      context.knobs.list(
        label: 'Svg Local',
        options: [
          Assets.illustration.empty.keyName,
        ],
      );

  static String imageLocalOption(BuildContext context) =>
      context.knobs.list(
        label: 'Image Local',
        options: [
          Assets.mock.avatarSquared.keyName,
        ],
      );

  static String svgNetworkOption(BuildContext context) =>
      context.knobs.list(
        label: 'Svg Network',
        options: [
          ' https: //firebasestorage.googleapis.com/v0/b/hrm-dev-314ec.appspot.com/o/workspaces%2Fw-CKlOqJHRQmaJL6QZF3xa%2FlogoImg%2FsquareBand.svg?alt=media ',
        ],
      );

  static String imageNetworkOption(BuildContext context) =>
      context.knobs.list(
        label: 'Image Network',
        options: [
          ' https: //firebasestorage.googleapis.com/v0/b/hrm-dev-314ec.appspot.com/o/workspaces%2Fw-CKlOqJHRQmaJL6QZF3xa%2FprofileBackgroundImg%2Fsquare1000.jpg?alt=media ',
        ],
      );
}
