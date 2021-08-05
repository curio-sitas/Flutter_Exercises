import 'utils/Contants.dart';
import 'package:flutter/material.dart';

import 'pages/home_page/home_page.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppName,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(
              title: Row(
                  children: [Text(AppName), Spacer(), Icon(Icons.polymer)])),
          body: HomePage()),
    );
  }
}
