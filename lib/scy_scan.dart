import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/dependency_injection/injector.dart';
import 'core/theme/app_theme.dart';
import 'core/utils/app_size.dart';
import 'home/presentation/cubit/weather_cubit.dart';
import 'home/presentation/screens/home_page.dart';

class ScyScan extends StatelessWidget {
  const ScyScan({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: AppSize.designSize,
        minTextAdapt: true,
        builder: (context, child) {
          
          return BlocProvider(
            
            create: (context) => WeatherCubit(injector(), injector()),
            child: MaterialApp(
              theme: ,
              themeMode: ThemeMode.light,
              debugShowCheckedModeBanner: false,
              home: const HomePage(),
            ),
          );
        });
  }
}
