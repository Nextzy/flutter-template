import 'package:widgetbook_app/widgetbook.dart';

class OverviewAudioPlayerWidgetCase extends WidgetbookScrollableUseCase {
  OverviewAudioPlayerWidgetCase({super.name = 'Overview'})
      : super(
          builder: (context) => SectionH1Widgetbook(
            title: 'Audio Player',
            children: [
              SectionH2Widgetbook(
                children: [
                  AppAudioPlayer(
                      size: WidgetSize.sm,
                      url: 'https://luan.xyz/files/audio/coins.wav'),
                  AppAudioPlayer(
                      url: 'https://luan.xyz/files/audio/ambient_c_motion.mp3'),
                  AppAudioPlayer(
                      size: WidgetSize.lg,
                      url:
                          'https://luan.xyz/files/audio/nasa_on_a_mission.mp3'),
                  AppAudioPlayer(
                      size: WidgetSize.sm,
                      style: AppTextFieldStyle.shaded,
                      url: 'https://luan.xyz/files/audio/coins.wav'),
                  AppAudioPlayer(
                      style: AppTextFieldStyle.shaded,
                      url: 'https://luan.xyz/files/audio/ambient_c_motion.mp3'),
                  AppAudioPlayer(
                    size: WidgetSize.lg,
                    style: AppTextFieldStyle.shaded,
                    url: 'https://luan.xyz/files/audio/nasa_on_a_mission.mp3',
                  )
                ],
              ),
            ],
          ),
        );
}
