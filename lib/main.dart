import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyMatrialApp());
}

class MyMatrialApp extends StatefulWidget {
  const MyMatrialApp({super.key});

  @override
  State<MyMatrialApp> createState() => _MyMatrialAppState();
}

class _MyMatrialAppState extends State<MyMatrialApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Directionality(
        textDirection: TextDirection.ltr,
        child: Scaffold(
          appBar: AppBar(),
        ),
      ),
    );
  }
}
