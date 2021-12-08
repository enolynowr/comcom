import 'package:comcom/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      enableLog: true,
      getPages: AppPages.routes,
      initialRoute: AppPages.init,
      theme: ThemeData(
        primaryColor: Colors.pink[800],
      ),
    );
  }
}

/*
*         tabBarTheme: TabBarTheme(
          labelColor: Colors.pink[800],
          labelStyle: TextStyle(color: Colors.pink[800]), // color for text
          indicator: const UnderlineTabIndicator(
            // color for indicator (underline)
            borderSide: BorderSide(color: Colors.pink),
          ),
          unselectedLabelColor: Colors.amber,
        ),
*
*
* */
