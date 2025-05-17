import 'package:example_app/application.dart';

enum AuthenticationBlocEvent {
  initial,
  authEmailPassword,
  authUsernamePassword,
  authGoogle,
  authFacebook,
  requestOtp,
  verifyOtp,
  refreshAccessToken,
  testSubtract,
  testEcho,
}

class AuthenticationPageBloc
    extends AppNullableWidgetStateBloc<AuthenticationBlocEvent, AuthenticationEntity> {
  AuthenticationPageBloc();

  final _service = AuthenticationRpcService(AppHttpClient.instance.dio);

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final otpPinController = TextEditingController();

  @override
  Future<void> onBlocEvent(BlocEvent<AuthenticationBlocEvent> event) async {
    switch (event.name) {
      case AuthenticationBlocEvent.initial:
        print('initial');
        // AppHttpClient.instance.setupProxyAdapter(
        //   ip: '192.168.218.86',
        //   port: '9090',
        // );

        usernameController.text = 'patrs@email.com';
        passwordController.text = '123456';

        // usernameController.text = 'yookey';
        // passwordController.text = '123456';

        phoneNumberController.text = '0878082159';

        return;
      case AuthenticationBlocEvent.authEmailPassword:
        final data = event.data as ({
          String email,
          String password,
        });

        return _authEmailPassword(
          email: data.email,
          password: data.password,
        );
      case AuthenticationBlocEvent.authUsernamePassword:
        final data = event.data as ({
          String username,
          String password,
        });

        return _authUsernamePassword(
          username: data.username,
          password: data.password,
        );
      case AuthenticationBlocEvent.authGoogle:
        return _authGoogle();
      case AuthenticationBlocEvent.authFacebook:
        return _authFacebook();
      case AuthenticationBlocEvent.requestOtp:
        final data = event.data as ({
          String phoneNumber,
        });

        return _requestOtp(
          phoneNumber: data.phoneNumber,
        );
      case AuthenticationBlocEvent.verifyOtp:
        final data = event.data as ({
          String otpToken,
          String otpPin,
        });

        return _verifyOtp(
          otpToken: data.otpToken,
          otp: data.otpPin,
        );
      case AuthenticationBlocEvent.refreshAccessToken:
        return _refreshAccessToken();
      case AuthenticationBlocEvent.testSubtract:
        return _testSubtract();
      case AuthenticationBlocEvent.testEcho:
        return _testEcho();
    }
  }

  Future<void> _authEmailPassword({
    required String email,
    required String password,
  }) async {
    print('authen email password');
    print('${email} | ${password}');

    var jsonRpcResponse = await _service.signInWithEmailPassword(
      email: email,
      password: password,
    );

    _showResult(jsonRpcResponse);

    final accessToken = jsonRpcResponse.result?.accessToken ?? '';

    _getProfile(accessToken: accessToken);
  }

  Future<void> _authUsernamePassword({
    required String username,
    required String password,
  }) async {
    print('authen username password');
    print('${username} | ${password}');

    var jsonRpcResponse = await _service.signInWithUsernamePassword(
      username: username,
      password: password,
    );

    _showResult(jsonRpcResponse);

    final accessToken = jsonRpcResponse.result?.accessToken ?? '';

    _getProfile(accessToken: accessToken);
  }

  Future<void> _authGoogle() async {
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

  Future<void> _authFacebook() async {
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

  Future<void> _getProfile({
    required accessToken,
  }) async {
    print('get profile');

    AppHttpClient.instance.setupCredential(
      token: accessToken,
    );

    var jsonRpcResponse = await _service.getProfile();

    _showResult(jsonRpcResponse);
  }

  Future<void> _getSocialProfile({
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

  Future<void> _refreshAccessToken() async {
    print('refresh access token');

    var jsonRpcResponse = await _service.refreshAccessToken();

    _showResult(jsonRpcResponse);
  }

  Future<void> _requestOtp({
    required String phoneNumber,
  }) async {
    print('request otp: $phoneNumber');

    var jsonRpcResponse = await _service.requestOtp(
      phoneNumber: phoneNumber,
    );

    _showResult(jsonRpcResponse);

    if (jsonRpcResponse.hasResult) {
      emitSuccess(
        AuthenticationEntity.fromResponse(jsonRpcResponse.result!),
      );
    }
  }

  Future<void> _verifyOtp({
    required String otpToken,
    required String otp,
  }) async {
    print('verify otp: $otp');

    var jsonRpcResponse = await _service.verifyOtp(
      token: otpToken,
      pin: otp,
    );

    _showResult(jsonRpcResponse);
  }

  Future<void> _testSubtract() async {
    print('testSubtract');

    var jsonRpcResponse = await _service.subtract(
      subtrahend: 55,
      minuend: 40,
    );

    _showResult(jsonRpcResponse);
  }

  Future<void> _testEcho() async {
    print('testEcho');

    var jsonRpcResponse = await _service.echo(
      name: 'John Doe',
    );

    _showResult(jsonRpcResponse);
  }

  void _showResult(JsonRpcResponse jsonRpcResponse) {
    print('jsonRpcResponse: ${jsonRpcResponse}');

    final resultMessage = jsonRpcResponse.hasResult
        ? jsonRpcResponse.result.toString()
        : jsonRpcResponse.error?.userMessage ?? 'error';

    emitEvent(
      SignupPageEvent.showResult,
      resultMessage,
    );
  }
}
