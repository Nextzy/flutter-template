import 'package:widgetbook_app/widgetbook.dart';

class YourUsecaseBook extends WidgetbookFolder {
  YourUsecaseBook({
    super.name = 'YourName Usecase',
    super.isInitiallyExpanded = true,
  }) : super(
          children: [
            ApiUseCaseList(
              useCases: [
                ApiUseCase(
                  name: 'Test',
                  api: ExampleMovieApiService(ExampleHttpClient.instance.dio),
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
