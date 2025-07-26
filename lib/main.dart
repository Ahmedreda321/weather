import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sky_scan/scy_scan.dart';

import 'core/dependency_injection/injector.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Future.wait(
    [
      ScreenUtil.ensureScreenSize(),
      setupInjector(),
    ],
  );

  runApp(const ScyScan());
}
