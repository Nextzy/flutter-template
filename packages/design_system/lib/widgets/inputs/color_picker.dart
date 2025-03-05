import 'package:design_system/lib.dart';

class AppColorPicker extends AppStatefulWidget {
  const AppColorPicker({
    super.key,
    required this.text,
    this.initialColor,
    this.onChanged,
  });

  final String text;
  final Color? initialColor;

  final ValueChanged<Color>? onChanged;

  @override
  AppState<AppColorPicker> createState() => _AppColorPickerState();
}

class _AppColorPickerState extends AppState<AppColorPicker> {
  late Color _value;

  @override
  void initState() {
    super.initState();
    _value = widget.initialColor ?? Color(0xff000000);
  }

  void _onChange(Color color) {
    setState(() {
      _value = color;
    });
  }

  void _onSelect() {
    if (widget.onChanged != null) {
      widget.onChanged!(_value);
    }
  }

  @override
  Widget build(BuildContext context) {
    return AppButton(
      text: widget.text,
      onPress: () => {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              titlePadding: const EdgeInsets.all(0),
              contentPadding: const EdgeInsets.all(0),
              content: SingleChildScrollView(
                child: ColorPicker(
                  pickerColor: _value,
                  onColorChanged: _onChange,
                ),
              ),
              actions: [
                TextButton(
                  child: const Text('Cancel'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                TextButton(
                  child: const Text('OK'),
                  onPressed: () {
                    _onSelect();
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        )
      },
    );
  }
}
