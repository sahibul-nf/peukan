import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:peukan/ui/screens/screens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Peukan - Penuhi Kebutuhan Pangan',
      initialRoute: "/",
      themeMode: ThemeMode.system,
      getPages: [
        GetPage(
          name: "/",
          page: () => HomeScreen(),
        ),
        GetPage(
          name: "/store",
          page: () => StoreScreen(),
        )
      ],
    );
  }
}
