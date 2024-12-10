// ignore_for_file: prefer_const_constructors

export 'avatar_overview_case.dart';
export 'avatar_custom_case.dart';
export 'avatar_circle_case.dart';
export 'avatar_square_case.dart';

import 'package:widgetbook_app/widgetbook.dart';

class AvatarWidgetBook extends WidgetbookComponent {
  AvatarWidgetBook({
    super.name = 'Avatar',
    super.isInitiallyExpanded = false,
  }) : super(
          useCases: [
            OverviewAvatarWidgetCase(),
            CustomAvatarWidgetCase(),
            CircleAvatarWidgetCase(),
            SquareAvatarWidgetCase(),
          ],
        );

  static String fullNameOption(BuildContext context) => context.knobs
      .string(label: 'Full Name', initialValue: 'Nonthawit Doungsodsri');

  static String? backgroundImageUrlOption(BuildContext context) =>
      context.knobs.listOrNull(label: 'Background Image Url', options: [
        'https://firebasestorage.googleapis.com/v0/b/hrm-dev-314ec.appspot.com/o/workspaces%2Fw-CKlOqJHRQmaJLLKJSD6QZF3%2FprofileBackgroundImg%2Fsquare1000.jpg?alt=media',
      ]);

  static String? profileImageUrlOption(BuildContext context) =>
      context.knobs.listOrNull(label: 'Profile Image Url', options: [
        'https://firebasestorage.googleapis.com/v0/b/hrm-dev-314ec.appspot.com/o/workspaces%2Fw-CKlOqJHRQmaJLLKJSD6QZF3%2FpublicProfile%2Fg7cyXRYiXPR25d42IrkpYRuDmRp1%2FprofileTransparentImg%2Fsquare1000.png?alt=media',
      ]);

  static String? logoImageUrlOption(BuildContext context) =>
      context.knobs.listOrNull(label: 'Logo Image Url', options: [
        'https://firebasestorage.googleapis.com/v0/b/hrm-dev-314ec.appspot.com/o/workspaces%2Fw-CKlOqJHRQmaJLLKJSD6QZF3%2FlogoImg%2FsquareBand1000.png?alt=media',
      ]);
}
