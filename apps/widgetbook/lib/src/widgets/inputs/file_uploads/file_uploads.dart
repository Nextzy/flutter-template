export 'file_upload_overview_case.dart';

import 'package:widgetbook_app/widgetbook.dart';

class FileUploadComponentBook extends WidgetbookComponent {
  FileUploadComponentBook({
    super.name = 'File Upload',
    super.isInitiallyExpanded = false,
  }) : super(
          useCases: [
            OverviewFileUploadWidgetCase(),
          ],
        );
}
