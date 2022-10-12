import 'package:flutter/material.dart';
import 'package:chat_app/routes/routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'chat app',
      debugShowCheckedModeBanner: false,
      routes: appRoutes,
      initialRoute: 'loading',
    );
  }
}
