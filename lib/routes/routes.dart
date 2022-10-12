import 'package:chat_app/pages/pages.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/pages/loading_page.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {
  'loading': (BuildContext context) => const LoadingPage(),
  'login': (BuildContext context) => const LoginPage(),
  'usuarios': (BuildContext context) => const UsuariosPage(),
  'register': (BuildContext context) => const RegisterPage(),
  'chat': (BuildContext context) => const ChatPage(),
};
