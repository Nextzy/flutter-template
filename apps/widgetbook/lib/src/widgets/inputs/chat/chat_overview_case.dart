import 'package:widgetbook_app/widgetbook.dart';

class OverviewChatWidgetCase extends WidgetbookScrollableUseCase {
  OverviewChatWidgetCase({super.name = 'Overview'})
      : super(
          builder: (context) => SectionH1Widgetbook(
            title: 'Chat',
            children: [
              SectionH2Widgetbook(
                children: [
                  AppChat(
                      currentUser: AppChatUser(
                        id: '1',
                        name: 'John Doe',
                      ),
                      messages: [
                        AppChatTextMessage(
                            author: AppChatUser(id: '2', name: 'Bob Smith'),
                            time: '10:00 AM',
                            text: 'Hello!'),
                        AppChatTextMessage(
                            author: AppChatUser(id: '1', name: 'John Doe'),
                            time: 'Now',
                            text: 'Hi')
                      ]),
                ],
              ),
            ],
          ),
        );
}
