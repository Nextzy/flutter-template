import 'package:change_application_name/application.dart';

enum ScanPageEvent {
  yourEvent,
}

class ScanPage extends AppPage {
  const ScanPage._({required Key key}) : super(key: key);

  static Widget create() => //
      BlocProvider(
        create: (context) => YourBloc()..addEvent(YourEvent.yourEvent),
        child: const ScanPage._(
          key: Key('ScanPage'),
        ),
      );

  @override
  State<ScanPage> createState() => _ScanPageBlocState();
}

class _ScanPageBlocState
    extends AppPageScaffoldBlocWidgetState<ScanPage, YourEntity, YourBloc> {
  final GlobalKey defaultKey = GlobalKey(debugLabel: 'QR');
  bool _flash = false;
  Barcode? result;
  QRViewController? controller;

  void _listenEvent(BuildContext context, ScanPageEvent event, Object? data) {
    switch (event) {
      case ScanPageEvent.yourEvent:
        break;
      default:
        super.listenEvent(context, event, data);
    }
  }

  double get scanArea => MediaQuery.of(context).size.width - (32.0 * 2);

  @override
  Widget build(BuildContext context) => //
      buildScaffoldWithBloc<ScanPageEvent>(
        listenEvent: _listenEvent,
        buildBody: (context, state) => Stack(
          children: [
            QRView(
              key: defaultKey,
              overlay: QrScannerOverlayShape(
                borderColor: Colors.red,
                borderRadius: 0,
                borderLength: 30,
                borderWidth: 10,
                overlayColor: context.theme.color.bg.withOpacity(0.96),
                cutOutSize: scanArea,
              ),
              onQRViewCreated: _onQRViewCreated,
            ),
            AppTopBackNavigationBar(
              title: 'Scan',
              backgroundColor: Colors.transparent,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: _buildCameraAction(),
            ),
          ],
        ),
      );

  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    } else if (Platform.isIOS) {
      controller!.resumeCamera();
    }
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  void _onQRViewCreated(QRViewController controller) {
    setState(() {
      this.controller = controller;
    });
    controller.scannedDataStream.listen(
      (scanData) {
        //TODO: Implement scan data
        result = scanData;
      },
    );
  }

  Widget _buildCameraAction() {
    return SafeArea(
      child: RowLayout(
        mainAxisSize: MainAxisSize.min,
        gap: 20.0,
        padding: Space.insetBottom56,
        children: [
          AppShadedIconButton(
            size: WidgetSize.lg,
            icon: _flash
                ? Assets.icon.lightningRegular.keyName
                : Assets.icon.lightningSlashRegular.keyName,
            onPress: () async {
              await controller?.toggleFlash();
              setState(
                () {
                  _flash = !_flash;
                },
              );
            },
          ),
          AppShadedIconButton(
            size: WidgetSize.lg,
            icon: Assets.icon.arrowsClockwiseRegular.keyName,
            onPress: () async {
              await controller?.flipCamera();
              updateState();
            },
          ),
        ],
      ),
    );
  }
}
