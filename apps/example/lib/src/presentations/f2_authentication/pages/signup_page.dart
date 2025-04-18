import 'package:example_app/application.dart';

@RoutePage()
class SignupPage extends AppPage {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends AppPageState<SignupPage> {
  final _service = AuthenticationRpcService(AppHttpClient.instance.dio);

  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  final _phoneNumberController = TextEditingController();
  final _otpController = TextEditingController();
  String _otpToken = '';
  String _otpRefNo = '';

  @override
  void initState() {
    super.initState();

    // AppHttpClient.instance.setupProxyAdapter(
    //   ip: '192.168.218.86',
    //   port: '9090',
    // );

    _usernameController.text = 'patrs@email.com';
    _passwordController.text = '123456';

    // _usernameController.text = 'yookey';
    // _passwordController.text = '123456';

    _phoneNumberController.text = '0878082159';
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        body: SingleChildScrollView(
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
                                onPress: () {
                                  _authGoogle();
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
                                    _authFacebook();
                                  }),
                              Gap(32),
                              AppDivider(text: 'Or'),
                              Gap(32),
                              AppTextField(
                                label: 'Username/Email',
                                controller: _usernameController,
                              ),
                              Gap(16),
                              AppTextField(
                                // obscure: true,
                                label: 'Password',
                                // helperText: 'At least 8 characters.',
                                controller: _passwordController,
                              ),
                              Gap(32),
                              AppButton(
                                style: AppButtonStyle.filled,
                                width: 380,
                                height: 40,
                                text: 'Get Started',
                                onPress: () {
                                  if (_usernameController.text.isEmpty) return;

                                  if (_usernameController.text.isValidEmail()) {
                                    _authEmailPassword();
                                  } else {
                                    _authUsernamePassword();
                                  }
                                },
                              ),
                              Gap(32),
                              AppDivider(text: 'Or'),
                              Gap(32),
                              AppButton(
                                text: 'Refresh Access Token',
                                onPress: () {
                                  _refreshAccessToken();
                                },
                              ),
                              Gap(10),
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
    ));
  }

  void _authGoogle() async {
    print('authen Google');

    const List<String> scopes = <String>[
      'email',
    ];

    //Nut
    final webClientId =
        '497686726544-9udl9jfqkr4d6c6vl46k4n35j029a1gs.apps.googleusercontent.com';

    //Yook
    // final webClientId =
    //     '445384131052-026dgdgl69kheka36vtgnmmparp95drq.apps.googleusercontent.com';

    final iosClientId =
        '497686726544-in43b6v94c1ve53i1sqigt2vnf3p2d3g.apps.googleusercontent.com';

    String? clientId;
    if (kIsWeb) {
      clientId = webClientId;
    } else if (Platform.isIOS) {
      clientId = iosClientId;
    }

    try {
      GoogleSignIn googleSignIn = GoogleSignIn(
        scopes: scopes,
        clientId: clientId,
      );

      final googleSignInAccount = await googleSignIn.signIn();
      final googleSignInAuthentication =
          await googleSignInAccount?.authentication;
      print('email: ${googleSignInAccount?.email}');
      print('accessToken: ${googleSignInAuthentication?.accessToken}');

      _getSocialProfile(
        accessToken: googleSignInAuthentication?.accessToken ?? '',
        social: 'google',
      );
    } catch (error) {
      print('error: $error');
    }
  }

  void _authFacebook() async {
    print('authen Facebook');

    if (kIsWeb) {
      await FacebookAuth.i.webAndDesktopInitialize(
        appId: '1008242141282384',
        // appId: '611521568708577',
        cookie: true,
        xfbml: true,
        version: 'v15.0',
      );
    }

    final loginResult = await FacebookAuth.i.login();
    print('loginResult: ${loginResult.status}');

    if (loginResult.status == LoginStatus.success) {
      print('accessToken: ${loginResult.accessToken?.tokenString}');

      _getSocialProfile(
        accessToken: loginResult.accessToken?.tokenString ?? '',
        social: 'facebook',
      );
    }
  }

  void _authEmailPassword() async {
    print('authen email password');
    print('${_usernameController.text} | ${_passwordController.text}');

    var jsonRpcResponse = await _service.signInWithEmailPassword(
      email: _usernameController.text,
      password: _passwordController.text,
    );

    _showResult(jsonRpcResponse);

    final accessToken = jsonRpcResponse.result?.accessToken ?? '';

    _getProfile(accessToken: accessToken);
  }

  void _authUsernamePassword() async {
    print('authen username password');
    print('${_usernameController.text} | ${_passwordController.text}');

    var jsonRpcResponse = await _service.signInWithUsernamePassword(
      username: _usernameController.text,
      password: _passwordController.text,
    );

    _showResult(jsonRpcResponse);

    final accessToken = jsonRpcResponse.result?.accessToken ?? '';

    _getProfile(accessToken: accessToken);
  }

  void _refreshAccessToken() async {
    print('refresh access token');

    var jsonRpcResponse = await _service.refreshAccessToken();

    _showResult(jsonRpcResponse);
  }

  void _requestOtp() async {
    print('request otp: ${_phoneNumberController.text}');

    var jsonRpcResponse = await _service.requestOtp(
      phoneNumber: _phoneNumberController.text,
    );

    _showResult(jsonRpcResponse);

    _otpToken = jsonRpcResponse.result?.token ?? '';
    _otpRefNo = jsonRpcResponse.result?.refno ?? '';
  }

  void _getProfile({
    required accessToken,
  }) async {
    print('get profile');

    AppHttpClient.instance.setupCredential(
      token: accessToken,
    );

    var jsonRpcResponse = await _service.getProfile();

    _showResult(jsonRpcResponse);
  }

  void _getSocialProfile({
    required String accessToken,
    required String social,
  }) async {
    print('get social profile');

    var jsonRpcResponse = await _service.getSocialProfile(
      accessToken: accessToken,
      social: social,
    );

    _showResult(jsonRpcResponse);
  }

  void _verifyOtp() async {
    print('verify otp: ${_otpController.text}');

    var jsonRpcResponse = await _service.verifyOtp(
      token: _otpToken,
      pin: _otpController.text,
    );

    _showResult(jsonRpcResponse);
  }

  void _testSubtract() async {
    print('testSubtract');

    var jsonRpcResponse = await _service.subtract(
      subtrahend: 55,
      minuend: 40,
    );

    _showResult(jsonRpcResponse);
  }

  void _testEcho() async {
    print('testEcho');

    var jsonRpcResponse = await _service.echo(
      name: 'John Doe',
    );

    _showResult(jsonRpcResponse);
  }

  void _showResult(JsonRpcResponse jsonRpcResponse) {
    print('jsonRpcResponse: ${jsonRpcResponse}');

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          jsonRpcResponse.hasResult
              ? jsonRpcResponse.result.toString()
              : jsonRpcResponse.error?.userMessage ?? 'error',
        ),
        duration: Duration(seconds: 5),
      ),
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
