import '../widgetbook.dart';

class SectionH1Widgetbook extends StatelessWidget {
  const SectionH1Widgetbook({
    super.key,
    this.title,
    this.desc,
    this.titleSize = 24.0,
    this.descSize = 14.0,
    this.padding = const EdgeInsets.all(20.0),
    this.child,
    this.backgroundColor,
    this.children,
  });

  final String? title;
  final String? desc;
  final double titleSize;
  final double descSize;
  final EdgeInsets padding;
  final List<Widget>? children;
  final Color? backgroundColor;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ContainerLayout(
        backgroundColor: backgroundColor ?? context.theme.color.bg,
        padding: padding,
        child: ColumnLayout(
          crossAxisAlignment: CrossAxisAlignment.start,
          gap: 16.0,
          children: [
            ColumnLayout(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (title.isNotNullOrBlank)
                  Text(
                    title!,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: titleSize, fontWeight: FontWeight.w600),
                  ),
                if (desc.isNotNullOrBlank)
                  Text(
                    desc!,
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: descSize),
                  ),
              ],
            ),
            if (children != null) ...children!,
            if (child != null) child!,
          ],
        ),
      ),
    );
  }
}
