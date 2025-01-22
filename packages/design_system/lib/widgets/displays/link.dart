import 'package:core/lib.dart';

class AppLink extends AppStatelessWidget {
  const AppLink({
    super.key,
    required this.text,
    required this.url,
    this.fontSize = 14,
    this.disabled = false,
  });

  final String text;
  final String url;
  final double fontSize;
  final bool disabled;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () =>
            disabled ? null : AppUrlScheme.launchExternalApp(Uri.parse(url)),
        child: Container(
            padding: const EdgeInsets.only(bottom: 4),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        color: disabled
                            ? context.theme.color.textTertiary
                            : context.theme.color.brandPrimary,
                        width: 1))),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(text,
                    style: TextStyle(
                      fontSize: fontSize,
                      fontWeight: FontWeight.w400,
                      color: disabled
                          ? context.theme.color.textTertiary
                          : context.theme.color.brandPrimary,
                    )),
                SizedBox(width: 4),
                Assets.icon.arrowSquareOutRegular.svgIcon(
                    colorFilter: ColorFilter.mode(
                        disabled
                            ? context.theme.color.textTertiary
                            : context.theme.color.brandPrimary,
                        BlendMode.srcIn),
                    size: fontSize)
              ],
            )));
  }
}
