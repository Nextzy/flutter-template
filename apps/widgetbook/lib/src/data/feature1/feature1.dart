  

import 'package:widgetbook_app/widgetbook.dart';

class YourDataBook extends WidgetbookFolder {
  YourDataBook({
    super.name = 'YourName Data',
    super.isInitiallyExpanded = true,
  }) : super(
          children: [
            ApiUseCaseList(
              useCases: [
                ApiUseCase(
                  name: 'Test',
                  api: YourRetrofitApiService(AppHttpClient.instance.dio),
                  buildButtonList: (context, api, data) => [
                    AppButton(
                      text: 'Call Api',
                      onPress: () {},
                    )
                  ],
                )
              ],
            ),
            DatasourceUseCaseList(
              useCases: [],
            ),
            RepositoryUseCaseList(
              useCases: [],
            ),
          ],
        );
}
