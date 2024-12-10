import 'package:widgetbook_app/widgetbook.dart';

class FrameLayoutCase extends WidgetbookUseCase {
  FrameLayoutCase({super.name = 'Normal'})
      : super(
          builder: (context) => ColumnLayout(
            gap: 20,
            children: [
              ContainerLayout(
                backgroundColor: Colors.grey.shade200,
                padding: EdgeInsets.all(4),
                child: Text(
                    'Example text Example text Example text Example text'),
              )
            ],
          ),
        );
}
