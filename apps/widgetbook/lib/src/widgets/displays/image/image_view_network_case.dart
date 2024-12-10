// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:widgetbook_app/widgetbook.dart';

class ImageViewNetworkCase extends WidgetbookScrollableUseCase {
  ImageViewNetworkCase({super.name = 'Network'})
      : super(
          builder: (context) => AppScrollView(
            child: SectionH1Widgetbook(
              title: 'Network Image',
              children: [
                AppImage(
                  height: 200,
                  path: ImageViewWidgetBook.svgNetworkOption(context),
                ),
                AppImage(
                  height: 200,
                  path: ImageViewWidgetBook.imageNetworkOption(context),
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
                  title: 'Loading',
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
                      path: 'https://google.com',
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
