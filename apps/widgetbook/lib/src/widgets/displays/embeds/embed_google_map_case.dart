import 'package:widgetbook_app/widgetbook.dart';

class GoogleMapEmbedWidgetCase extends WidgetbookScrollableUseCase {
  GoogleMapEmbedWidgetCase({super.name = 'Google Map'})
      : super(
          builder: (context) => SectionH1Widgetbook(
            title: 'Google Map Embed',
            children: [
              EmbedGoogleMap(
                url:
                    'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d248057.20375668482!2d100.46830238525244!3d13.724878465269072!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x311d6032280d61f3%3A0x10100b25de24820!2z4LiB4Lij4Li44LiH4LmA4LiX4Lie4Lih4Lir4Liy4LiZ4LiE4Lij!5e0!3m2!1sth!2sth!4v1741282284156!5m2!1sth!2sth',
              ),
            ],
          ),
        );
}
