import 'package:flutter/material.dart';
import 'screens/landing.screen.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  // App
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CHEOMA',
      theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent)),
      home: const LandingPage(),
    );
  }
}

/// 앱 전체에서 사용되는 상태를 관리하는 클래스
class AppState extends ChangeNotifier {}
