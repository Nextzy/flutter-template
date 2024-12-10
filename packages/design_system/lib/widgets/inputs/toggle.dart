import 'package:design_system/lib.dart';

class AppToggle extends AppStatefulWidget {
  AppToggle({
    super.key,
    this.text,
    this.supportingText,
    this.onChanged,
  });

  bool value = false;

  final String? text;
  final String? supportingText;
  final ValueChanged<bool>? onChanged;

  @override
  State<StatefulWidget> createState() => AppToggleState();
}

class AppToggleState extends AppState<AppToggle> {
  @override
  Widget build(BuildContext context) {
    return RowLayout(
      children: [
        Switch(
          value: widget.value,
          activeColor: theme.color.brandPrimary,
          onChanged: _onChanged,
        ),
        ColumnLayout(
          padding: const EdgeInsets.only(top: 10),
          children: [
            if (widget.text != null)
              AppText(
                widget.text,
                style: AppTextStyleBuilder.ui.s12.medium.build(context),
              ),
            if (widget.supportingText != null)
              AppText(
                widget.supportingText,
                style: AppTextStyleBuilder.ui.s12.build(context),
              ),
          ],
        ),
      ],
    );
  }

  ///========================= CALLBACK METHOD =========================///
  void _onChanged(bool value) {
    widget.value = value;
    widget.onChanged?.call(value);
    updateState();
  }
}
