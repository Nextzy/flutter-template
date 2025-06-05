import 'package:design_system/lib.dart';

class InApplicationUpdate extends AppStatefulWidget {
  InApplicationUpdate({
    super.key,
    required this.packageInfo,
    required this.child,
  }) : checker = ForceUpdateChecker(packageInfo: packageInfo);

  final PackageInfo packageInfo;
  final Widget child;
  final ForceUpdateChecker checker;

  @override
  State<InApplicationUpdate> createState() => _AppUpgradeAlertState();
}

class _AppUpgradeAlertState extends State<InApplicationUpdate> {
  late StreamSubscription<RemoteConfigUpdate>? _subscribe;

  @override
  void initState() {
    _subscribe = widget.checker.onConfigUpdated((event) async {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    /// Check force update
    final forceUpdate = widget.checker.forceUpdate;
    if (forceUpdate) {
      return ForceUpdatePage(
        packageInfo: widget.packageInfo,
      );
    }

    /// Check maintenance
    final isMaintenance = widget.checker.isMaintenance;
    if (isMaintenance) {
      return const MaintenancePage();
    }

    /// Check soft update
    if (PlatformChecker.isAndroidNative) {
      _requestSoftUpdateAndroid();
    } else if (PlatformChecker.isIosNative) {
      _requestSoftUpdateIos();
    }

    return widget.child;
  }

  @override
  void dispose() {
    _subscribe?.cancel();
    super.dispose();
  }

  ///========================= PRIVATE METHOD =========================///

  Future<void> _requestSoftUpdateAndroid() async {
    if (Platform.isAndroid) {
      final manager = InAppUpdateManager();
      final appUpdateInfo = await manager.checkForUpdate();
      if (appUpdateInfo == null) return; //Exception
      if (appUpdateInfo.updateAvailability ==
          UpdateAvailability.developerTriggeredUpdateInProgress) {
        ///If an in-app update is already running, resume the update.
        final message =
            await manager.startAnUpdate(type: AppUpdateType.immediate);
        Log.d(message);
      } else if (appUpdateInfo.updateAvailability ==
          UpdateAvailability.updateAvailable) {
        ///Update available
        if (appUpdateInfo.immediateAllowed) {
          Log.d('Start an immediate update');
          final message =
              await manager.startAnUpdate(type: AppUpdateType.immediate);
          Log.d(message);
        } else if (appUpdateInfo.flexibleAllowed) {
          debugPrint('Start an flexible update');
          final message =
              await manager.startAnUpdate(type: AppUpdateType.flexible);
          Log.d(message);
        } else {
          Log.d('Update available. Immediate & Flexible Update Flow not allow');
        }
      }
    }
  }

  Future<void> _requestSoftUpdateIos() async {
    if (Platform.isIOS) {
      final versionInfo = await UpgradeVersion.getiOSStoreVersion(
        packageInfo: await PackageManager.getPackageInfo(),
      );
      Log.d(versionInfo.toJson().toString());
      if (versionInfo.canUpdate == true) {
        _showSoftUpdateDialog();
      }
    }
  }

  void _showSoftUpdateDialog() {
    showDialog(
      context: context,
      builder: (context) => AppSoftUpdateModal(
        onPrimaryPress: () {},
        onSecondaryPress: () {},
      ),
    );
  }
}
