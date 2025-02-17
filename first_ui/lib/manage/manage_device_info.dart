import 'package:device_info/device_info.dart';

import 'package:flutter/material.dart';

enum e_target_platform_type
{
  none,
  android,
  ios,
}


class ManageDeviceInfo
{
  static String _uniqueId;
  static e_target_platform_type _targetPlatformType = e_target_platform_type.none;
  static double _resolutionWidth = 0;
  static double _resolutionHeight = 0;

  static String get uniqueId => _uniqueId;
  static e_target_platform_type get targetPlatformType => _targetPlatformType;
  static double get resolutionWidth => _resolutionWidth;
  static double get resolutionHeight => _resolutionHeight;

  static Future<String> _getUniqueId(BuildContext context) async
  {
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    if (Theme.of(context).platform == TargetPlatform.iOS)
    {
      _targetPlatformType = e_target_platform_type.ios;
      IosDeviceInfo iosDeviceInfo = await deviceInfo.iosInfo;
      return iosDeviceInfo.identifierForVendor; // unique ID on iOS
    }
    else
    {
      _targetPlatformType = e_target_platform_type.android;
      AndroidDeviceInfo androidDeviceInfo = await deviceInfo.androidInfo;
      return androidDeviceInfo.androidId; // unique ID on Android
    }
  }


  static void getResolution(BuildContext context)
  {
    if(0 == _resolutionWidth)
      _resolutionWidth = MediaQuery.of(context).size.width;
    if(0 == _resolutionHeight)
      _resolutionHeight = MediaQuery.of(context).size.height;

    print('Resolution Width : $_resolutionWidth , Height : $_resolutionHeight');
  }

  static void getUniqueId(BuildContext context)
  {
    if(null != _uniqueId)
      return;

    _getUniqueId(context).then((s) {
      _uniqueId = s;
      print('uniqueId : $_uniqueId');
    });
  }


}