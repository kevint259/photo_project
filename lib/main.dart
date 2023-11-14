import 'package:flutter/material.dart';
import 'package:flutter_project1/navigation/router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(750, 1624),
      minTextAdapt: false,
      useInheritedMediaQuery: true,
      builder: (_, child) {
        return MaterialApp.router(
            title: 'Flutter Demo',
            debugShowCheckedModeBanner: false,
            routerConfig: appRouter,
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ));
      },
    );
  }
}
