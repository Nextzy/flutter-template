import 'package:change_application_name/application.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
// import 'package:flutter_line_sdk/flutter_line_sdk.dart';

@RoutePage()
class SignupPage extends AppPage {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends AppPageState<SignupPage> {
  final _phoneNumberController = TextEditingController();
  final _otpController = TextEditingController();
  String _otpToken = '';
  String _otpRefNo = '';

  @override
  void initState() {
    super.initState();

    _phoneNumberController.text = '0878082159';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ContainerLayout(
      child: ResponsiveRowColumn(
          rowCrossAxisAlignment: CrossAxisAlignment.start,
          layout: ResponsiveRowColumnType.ROW,
          children: [
            ResponsiveRowColumnItem(
                rowFlex: 1,
                rowFit: FlexFit.tight,
                child: ContainerLayout(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
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
                              onPress: () {
                                authenGoogle();
                              },
                            ),
                            Gap(16),
                            AppButton(
                                style: AppButtonStyle.outline,
                                width: 380,
                                height: 40,
                                startIcon: Assets.icon.infoRegular.keyName,
                                text: 'Continue with Facebook',
                                onPress: () {
                                  authenFacebook();
                                }),
                            Gap(16),
                            AppButton(
                                style: AppButtonStyle.outline,
                                width: 380,
                                height: 40,
                                startIcon: Assets.icon.infoRegular.keyName,
                                text: 'Continue with Line',
                                onPress: () {
                                  authenLine();
                                }),
                            Gap(32),
                            AppDivider(text: 'Or'),
                            // Gap(32),
                            // AppTextField(
                            //   label: 'Email',
                            // ),
                            // Gap(16),
                            // AppTextField(
                            //   obscure: true,
                            //   label: 'Password',
                            //   helperText: 'At least 8 characters.',
                            // ),
                            // Gap(32),
                            // AppButton(
                            //   style: AppButtonStyle.filled,
                            //   width: 380,
                            //   height: 40,
                            //   text: 'Get Started',
                            //   onPress: () async {
                            //
                            //   },
                            // ),
                            Gap(32),
                            AppButton(
                              text: 'Test Subtract',
                              onPress: () {
                                _testSubtract();
                              },
                            ),
                            Gap(10),
                            AppButton(
                              text: 'Test Echo',
                              onPress: () {
                                _testEcho();
                              },
                            ),
                            Gap(32),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Expanded(
                                  child: AppTextField(
                                    label: 'Phone Number',
                                    controller: _phoneNumberController,
                                  ),
                                ),
                                Space.gap32,
                                AppButton(
                                  text: 'Send',
                                  onPress: () {
                                    setState(() {
                                      _requestOtp();
                                    });
                                  },
                                ),
                              ],
                            ),
                            Gap(16),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Expanded(
                                  child: AppTextField(
                                    label: 'OTP $_otpRefNo',
                                    controller: _otpController,
                                  ),
                                ),
                                Space.gap32,
                                AppButton(
                                  text: 'Verify',
                                  onPress: () {
                                    _verifyOtp();
                                  },
                                ),
                              ],
                            ),
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
            if (ResponsiveBreakpoints.of(context).isDesktop)
              ResponsiveRowColumnItem(
                rowFlex: 1,
                rowFit: FlexFit.tight,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    ContainerLayout(
                        child: Image.network('https://i.imgur.com/aNKrnAb.png',
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
    ));
  }

  void authenGoogle() async {
    print('authen Google');

    const List<String> scopes = <String>[
      'email',
    ];

    final nutClientId =
        '497686726544-9udl9jfqkr4d6c6vl46k4n35j029a1gs.apps.googleusercontent.com';
    final yukesClientId =
        '445384131052-026dgdgl69kheka36vtgnmmparp95drq.apps.googleusercontent.com';

    try {
      GoogleSignIn googleSignIn = GoogleSignIn(
        scopes: scopes,
        clientId: kIsWeb ? nutClientId : null,
        // clientId: kIsWeb ? yukesClientId : null,
      );

      final res = await googleSignIn.signIn();
      final authen = await res?.authentication;
      // final res = await _googleSignIn.signInSilently();
      print('res: ${res?.email}');
      print('authen: ${authen?.accessToken} | ${authen?.idToken}');
    } catch (error) {
      print('error: $error');
    }
  }

  void authenFacebook() async {
    print('authen Facebook');

    if (kIsWeb) {
      await FacebookAuth.i.webAndDesktopInitialize(
        appId: '611521568708577',
        cookie: true,
        xfbml: true,
        version: 'v15.0',
      );
    }

    print('login');
    final loginResult = await FacebookAuth.i.login();
    print('loginResult: $loginResult');

    if (loginResult.status == LoginStatus.success) {
      print('accessToken: ${loginResult.accessToken}');
    }
  }

  void authenLine() async {
    print('authen Line');

    // LineSDK.instance.setup('2007180054').then((_) {
    //   print("LineSDK Prepared");
    // });

    // try {
    //   final result = await LineSDK.instance.login();
    //   print('result: $result');
    //   //_userProfile = result.userProfile;
    //   // user id -> result.userProfile?.userId
    //   // user name -> result.userProfile?.displayName
    //   // user avatar -> result.userProfile?.pictureUrl
    //   // etc...
    // } on PlatformException catch (e) {
    //   // Error handling.
    //   print(e);
    // }
  }

  void _requestOtp() async {
    print('request otp: ${_phoneNumberController.text}');

    var response = await AuthenticationRpcService(
      AppHttpClient.instance.dio,
    ).requestOtp(
      phoneNumber: _phoneNumberController.text,
    );

    print('response: ${response}');

    _otpToken = response.result?.token ?? '';
    _otpRefNo = response.result?.refno ?? '';

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          response.hasResult
              ? response.result.toString()
              : (response.error as Map)['developerMessage'],
        ),
        duration: Duration(seconds: 5),
      ),
    );
  }

  void _verifyOtp() async {
    print('verify otp: ${_otpController.text}');

    var response = await AuthenticationRpcService(
      AppHttpClient.instance.dio,
    ).verifyOtp(
      token: _otpToken,
      pin: _otpController.text,
    );

    print('response: ${response}');

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          response.hasResult
              ? response.result.toString()
              : (response.error as Map)['message'],
        ),
        duration: Duration(seconds: 5),
      ),
    );
  }

  void _testSubtract() async {
    print('testSubtract');

    var response = await AuthenticationRpcService(
      AppHttpClient.instance.dio,
    ).subtract(
      subtrahend: 55,
      minuend: 40,
    );

    print('response: ${response}');

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          response.hasResult
              ? response.result.toString()
              : (response.error as Map)['userMessage'],
        ),
        duration: Duration(seconds: 5),
      ),
    );
  }

  void _testEcho() async {
    print('testEcho');

    var response = await AuthenticationRpcService(
      AppHttpClient.instance.dio,
    ).echo(
      name: 'John Doe',
    );

    print('response: ${response}');

    if (response.isError) {
      final errorResponse = response.error as Map;
      final code = errorResponse['code'];
      final message = errorResponse['message'];
      final userMessage = errorResponse['userMessage'];
      final developerMessage = errorResponse['developerMessage'];
      print('$code | $message | $userMessage | $developerMessage');
    }

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          response.hasResult
              ? response.result.toString()
              : (response.error as Map)['userMessage'],
        ),
        duration: Duration(seconds: 5),
      ),
    );
  }
}
