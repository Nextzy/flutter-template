import 'package:design_system/lib.dart';

enum TodoFeature { authentication, settings }

class TodoView extends AppStatelessWidget {
  const TodoView({
    super.key,
    required this.todo,
    this.onPress,
  });

  static Widget create({
    required TodoFeature todo,
    GestureTapCallback? onPress,
  }) =>
      TodoView(
        todo: todo,
        onPress: onPress,
      );

  final TodoFeature todo;
  final GestureTapCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColors.bglightMode,
      appBar: AppTopBackNavigationBar(
        title: 'รอดำเนินการจัดทำ',
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'เริ่มทำในหัวข้อ',
              // style: AppTextStyle.primary.body1.blackActive,
            ),
            Space.gap8,
            Text(
              _getTopic(),
              // style: AppTextStyle.primary.title1.blackActive,
            ),
            Space.gap32,
            // AppButton(
            //   title: "กลับ",
            //   onPressed: () {
            //     Navigator.of(context).pop();
            //   },
            // )
          ],
        ),
      ),
    );
  }

  String _getTopic() {
    switch (todo) {
      case TodoFeature.authentication:
        return 'Authentication';
      case TodoFeature.settings:
        return 'Setting';
    }
  }
}
