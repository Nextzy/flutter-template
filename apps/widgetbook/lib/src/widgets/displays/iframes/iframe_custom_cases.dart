// ignore_for_file: prefer_const_constructors

import 'package:widgetbook_app/widgetbook.dart';

class CustomIframeWidgetCase extends WidgetbookUseCase {
  CustomIframeWidgetCase({super.name = 'Custom'})
      : super(
          builder: (context) => SectionH1Widgetbook(
            title: 'iFrame',
            children: [
              // SizedBox(
              //   height: 400,
              //   child: AppWebView(
              //     url: 'https://google.com',
              //   ),
              // ),
              AppHtmlWebview(
                ratio: 1.0,
                height: 500,
                backgroundColor: const Color(0xFFE2E8F0),
                baseUrl: 'https://tikabit.com',
                html: '''
<!DOCTYPE html>
<html>
<body>
    <div id="unat-viewer" mint="MINT_INSCRIPTION_ID"
        style="display:flex;justify-content: center;align-items: center;overflow: hidden;height: 100vh;background-color: #E2E8F0;">
    </div>
    <script type="text/javascript" src="https://tikabit.com/js/unat.min.js"></script>
    <!-- <script type="text/javascript" src="http://localhost:8080/js/unat.min.js"></script> -->
    <script>

        const setupResponsiveness = () => {
            let resizeTimeout
            const root = document.getElementById('unat-viewer');
            const parent = root.parentElement
            parent.style.width = '100%';
            parent.style.height = '100%';
            parent.style.padding = '0px';
            parent.style.margin = '0px';


            const resize = () => {
                const { innerWidth, innerHeight } = window;
                const size = Math.min(...[innerWidth, innerHeight])
                root.style.width = size + '';
                root.style.height = size + '';
            }

            const addListener = () => {
                window.addEventListener('resize', () => {
                    clearTimeout(resizeTimeout);
                    resizeTimeout = setTimeout(() => resize(), 250)
                }, true);
            }

            resize()
            addListener()
        }

        window.addEventListener('load', async function () {
            setupResponsiveness()
            window.initUnat()
        });
    </script>
</body>
</html>
              ''',
              ),
            ],
          ),
        );
}
