import 'package:example_app/application.dart';

enum SignupPageEvent { showResult }

@RoutePage()
class SignupPage extends AppPage implements AutoRouteWrapper {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          AuthenticationPageBloc()..addEvent(AuthenticationBlocEvent.initial),
      child: this,
    );
  }
}

class _SignupPageState extends AppPageBlocWidgetState<SignupPage,
    AuthenticationPageBloc, AuthenticationEntity?> {
  void onListenerEvent(
    BuildContext context,
    Object event,
    Object? data,
  ) {
    final resultMessage = data as String;

    switch (event) {
      case SignupPageEvent.showResult:
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(resultMessage),
            duration: Duration(seconds: 5),
          ),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return buildScaffoldWithBloc(
      listenEvent: onListenerEvent,
      body: (context, state) {
        if (state.isLoading) return Center(child: AppCircularLoading());
        if (state.isFail) return AppEmpty();

        return _buildBody(context);
      },
    );
  }

  Widget _buildBody(BuildContext context) {
    return SingleChildScrollView(
      child: ContainerLayout(
        child: ResponsiveRowColumn(
            rowCrossAxisAlignment: CrossAxisAlignment.start,
            layout: ResponsiveRowColumnType.ROW,
            children: [
              ResponsiveRowColumnItem(
                  rowFlex: 1,
                  rowFit: FlexFit.tight,
                  child: ContainerLayout(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 16,
                    ),
                    decoration: BoxDecoration(
                      color: context.theme.color.bg,
                    ),
                    child: ColumnLayout(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ContainerLayout(
                            width: 380,
                            margin: ResponsiveBreakpoints.of(context)
                                    .smallerThan(DESKTOP)
                                ? const EdgeInsets.only(top: 60)
                                : const EdgeInsets.only(top: 130),
                            child: ColumnLayout(children: [
                              AppText('Create an Account',
                                  style: AppTextStyleBuilder
                                      .ui.s36.bold.colorPrimary
                                      .build(context)),
                              Gap(8),
                              AppText(
                                  'Join our community of friendly folks discovering and sharing the latest UI-components.',
                                  textAlign: TextAlign.center,
                                  style: AppTextStyleBuilder.ui.s16.colorPrimary
                                      .build(context)),
                              Gap(32),
                              AppButton(
                                style: AppButtonStyle.outline,
                                width: 380,
                                height: 40,
                                startIcon: Assets.icon.infoRegular.keyName,
                                text: 'Continue with Google',
                                onPress: _onTapAuthGoogle,
                              ),
                              Gap(16),
                              AppButton(
                                style: AppButtonStyle.outline,
                                width: 380,
                                height: 40,
                                startIcon: Assets.icon.infoRegular.keyName,
                                text: 'Continue with Facebook',
                                onPress: _onTapAuthFacebook,
                              ),
                              Gap(32),
                              AppDivider(text: 'Or'),
                              Gap(32),
                              AppTextField(
                                label: 'Username/Email',
                                controller: bloc.usernameController,
                              ),
                              Gap(16),
                              AppTextField(
                                // obscure: true,
                                label: 'Password',
                                // helperText: 'At least 8 characters.',
                                controller: bloc.passwordController,
                              ),
                              Gap(32),
                              AppButton(
                                style: AppButtonStyle.filled,
                                width: 380,
                                height: 40,
                                text: 'Get Started',
                                onPress: _onTapSignIn,
                              ),
                              Gap(32),
                              AppDivider(text: 'Or'),
                              Gap(32),
                              AppButton(
                                text: 'Refresh Access Token',
                                onPress: _onTapRefreshAccessToken,
                              ),
                              Gap(10),
                              AppButton(
                                text: 'Test Subtract',
                                onPress: _onTapTestSubtract,
                              ),
                              Gap(10),
                              AppButton(
                                text: 'Test Echo',
                                onPress: _onTapTestEcho,
                              ),
                              Gap(32),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Expanded(
                                    child: AppTextField(
                                      label: 'Phone Number',
                                      controller: bloc.phoneNumberController,
                                    ),
                                  ),
                                  Space.gap32,
                                  AppButton(
                                    text: 'Send',
                                    onPress: _onTapRequestOtp,
                                  ),
                                ],
                              ),
                              Gap(16),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Expanded(
                                    child: AppTextField(
                                      label:
                                          'OTP Ref: ${bloc.state.data?.otpRefNo ?? ''}',
                                      controller: bloc.otpPinController,
                                    ),
                                  ),
                                  Space.gap32,
                                  AppButton(
                                    text: 'Verify',
                                    onPress: _onTapVerifyOtp,
                                  ),
                                ],
                              ),
                              Gap(32),
                            ]),
                          ),
                          AppText(
                            "By continuing, you agree to Stratum's Terms of Service and acknowledge you have read the Privacy Policy.",
                            textAlign: TextAlign.center,
                            style: AppTextStyleBuilder.ui.s12.colorPrimary
                                .build(context),
                          ),
                        ]),
                  )),
              if (ResponsiveBreakpoints.of(context).largerThan(TABLET))
                ResponsiveRowColumnItem(
                  rowFlex: 1,
                  rowFit: FlexFit.tight,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      ContainerLayout(
                          child: Image.network(
                              'https://i.imgur.com/aNKrnAb.png',
                              fit: BoxFit.cover)),
                      ColumnLayout(
                          mainAxisAlignment: MainAxisAlignment.end,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 16),
                          children: [
                            AppText(
                              '38,000 companies & people like you made more than 1 million apps with Stratum',
                              textAlign: TextAlign.center,
                              style: AppTextStyleBuilder
                                  .ui.s24.bold.colorPrimaryInverse
                                  .build(context),
                            ),
                            Gap(16),
                            AppLinePagination(
                              totalPage: 4,
                            ),
                          ])
                    ],
                  ),
                ),
            ]),
      ),
    );
  }

  void _onTapAuthGoogle() {
    bloc.addEvent(AuthenticationBlocEvent.authGoogle);
  }

  void _onTapAuthFacebook() {
    bloc.addEvent(AuthenticationBlocEvent.authFacebook);
  }

  void _onTapSignIn() {
    if (bloc.usernameController.text.isEmpty) {
      return;
    }

    if (bloc.usernameController.text.isValidEmail()) {
      final data = (
        email: bloc.usernameController.text,
        password: bloc.passwordController.text,
      );

      bloc.addEvent(
        AuthenticationBlocEvent.authEmailPassword,
        data: data,
      );
    } else {
      final data = (
        username: bloc.usernameController.text,
        password: bloc.passwordController.text,
      );

      bloc.addEvent(
        AuthenticationBlocEvent.authUsernamePassword,
        data: data,
      );
    }
  }

  void _onTapRequestOtp() {
    final data = (phoneNumber: bloc.phoneNumberController.text,);

    bloc.addEvent(
      AuthenticationBlocEvent.requestOtp,
      data: data,
    );
  }

  void _onTapVerifyOtp() {
    final data = (
      otpToken: bloc.data?.otpToken,
      otpPin: bloc.otpPinController.text,
    );

    bloc.addEvent(
      AuthenticationBlocEvent.verifyOtp,
      data: data,
    );
  }

  void _onTapRefreshAccessToken() {
    bloc.addEvent(
      AuthenticationBlocEvent.refreshAccessToken,
    );
  }

  void _onTapTestSubtract() {
    bloc.addEvent(
      AuthenticationBlocEvent.testSubtract,
    );
  }

  void _onTapTestEcho() {
    bloc.addEvent(
      AuthenticationBlocEvent.testEcho,
    );
  }
}

extension StringExtension on String {
  bool isValidEmail() {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(this);
  }
}
