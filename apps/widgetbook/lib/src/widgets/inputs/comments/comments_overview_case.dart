import 'package:widgetbook_app/widgetbook.dart';

class OverviewCommentsWidgetCase extends WidgetbookScrollableUseCase {
  OverviewCommentsWidgetCase({super.name = 'Overview'})
      : super(
          builder: (context) => SectionH1Widgetbook(
            title: 'Comments',
            children: [
              SectionH2Widgetbook(
                children: [
                  AppComments(children: [
                    AppComment(
                      avatar: AppCircleAvatar(
                        style: WidgetStyle.subtle,
                        path: Assets.mock.avatarSquared1.keyName,
                      ),
                      name: 'Jenney Wilson',
                      time: 'August 4, 2020 at 12:00pm',
                      text:
                          'The picture is not displayed after being dragged into the layer. Why?',
                      reaction: 324,
                    ),
                    AppComment(
                      avatar: AppCircleAvatar(
                        style: WidgetStyle.subtle,
                        path: Assets.mock.avatarSquared2.keyName,
                      ),
                      name: 'Ronald Richards',
                      time: 'August 5, 2020 at 1:36am',
                      text:
                          'Hard to help without context. Care to share a screencapture? What format is the picture? In which Browser/OS is this happening?',
                      reaction: 5,
                    ),
                    AppComment(
                        avatar: AppCircleAvatar(
                          style: WidgetStyle.subtle,
                          path: Assets.mock.avatarSquared2.keyName,
                        ),
                        name: 'Marvin McKinney',
                        time: 'August 5, 2020 at 8:27am',
                        text:
                            'No idea then. Perhaps the memory available in your browser?',
                        reaction: 83,
                        children: [
                          AppComment(
                            avatar: AppCircleAvatar(
                              style: WidgetStyle.subtle,
                              path: Assets.mock.avatarSquared1.keyName,
                            ),
                            name: 'Jenny Wilson',
                            time: 'August 6, 2020 at 5:03am',
                            text: 'thanks',
                            reaction: 1,
                          ),
                        ]),
                    AppComment(
                      avatar: AppCircleAvatar(
                        style: WidgetStyle.subtle,
                        path: Assets.mock.avatarSquared1.keyName,
                      ),
                      name: 'Dianne Russell',
                      time: 'August 6, 2020 at 9:02am',
                      text: 'try to copy and paste',
                      reaction: 25,
                    ),
                  ])
                ],
              ),
            ],
          ),
        );
}
