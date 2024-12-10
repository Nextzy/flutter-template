// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:widgetbook_app/widgetbook.dart';

class ImageViewLocalCase extends WidgetbookScrollableUseCase {
  ImageViewLocalCase({super.name = 'Local'})
      : super(
          builder: (context) => AppScrollView(
            child: SectionH1Widgetbook(
              title: 'Local Image',
              children: [
                AppImage(
                  path: ImageViewWidgetBook.svgLocalOption(context),
                ),
                AppImage(
                  height: 200,
                  path: ImageViewWidgetBook.imageLocalOption(context),
                ),
                SectionH3Widgetbook(
                  title: 'Placeholder',
                  children: [
                    AppImage(
                      path: null,
                      aspectRatio: 1.0,
                      width: 200,
                    )
                  ],
                ),
                SectionH3Widgetbook(
                  title: 'Error',
                  children: [
                    AppImage(
                      path: 'error',
                      aspectRatio: 1.0,
                      width: 200,
                    )
                  ],
                ),
              ],
            ),
          ),
        );
}
