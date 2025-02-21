import 'package:widgetbook_app/widgetbook.dart';

class OverviewSocialButtonWidgetCase extends WidgetbookScrollableUseCase {
  OverviewSocialButtonWidgetCase({super.name = 'Overview'})
      : super(
          builder: (context) => SectionH1Widgetbook(
            title: 'Social Button',
            children: [
              AppSocialButton(
                size: WidgetSize.sm,
                type: AppSocialButtonType.google,
              ),
              AppSocialButton(
                style: AppSocialButtonStyle.shaded,
                type: AppSocialButtonType.google,
              ),
              AppSocialButton(
                size: WidgetSize.lg,
                style: AppSocialButtonStyle.filled,
                type: AppSocialButtonType.google,
              ),
              AppSocialButton(
                size: WidgetSize.sm,
                type: AppSocialButtonType.twitter,
              ),
              AppSocialButton(
                style: AppSocialButtonStyle.shaded,
                type: AppSocialButtonType.twitter,
              ),
              AppSocialButton(
                size: WidgetSize.lg,
                style: AppSocialButtonStyle.filled,
                type: AppSocialButtonType.twitter,
              ),
              AppSocialButton(
                size: WidgetSize.sm,
                type: AppSocialButtonType.facebook,
              ),
              AppSocialButton(
                style: AppSocialButtonStyle.shaded,
                type: AppSocialButtonType.facebook,
              ),
              AppSocialButton(
                size: WidgetSize.lg,
                style: AppSocialButtonStyle.filled,
                type: AppSocialButtonType.facebook,
              ),
              AppSocialButton(
                size: WidgetSize.sm,
                type: AppSocialButtonType.apple,
              ),
              AppSocialButton(
                style: AppSocialButtonStyle.shaded,
                type: AppSocialButtonType.apple,
              ),
              AppSocialButton(
                size: WidgetSize.lg,
                style: AppSocialButtonStyle.filled,
                type: AppSocialButtonType.apple,
              ),
              AppSocialButton(
                size: WidgetSize.sm,
                type: AppSocialButtonType.github,
              ),
              AppSocialButton(
                style: AppSocialButtonStyle.shaded,
                type: AppSocialButtonType.github,
              ),
              AppSocialButton(
                size: WidgetSize.lg,
                style: AppSocialButtonStyle.filled,
                type: AppSocialButtonType.github,
              ),
              AppSocialButton(
                size: WidgetSize.sm,
                type: AppSocialButtonType.microsoft,
              ),
              AppSocialButton(
                style: AppSocialButtonStyle.shaded,
                type: AppSocialButtonType.microsoft,
              ),
              AppSocialButton(
                size: WidgetSize.lg,
                style: AppSocialButtonStyle.filled,
                type: AppSocialButtonType.microsoft,
              ),
            ],
          ),
        );
}
